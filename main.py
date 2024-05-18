import mysql.connector
import streamlit as st
import pandas as pd
import datetime
import plotly.express as px
import smtplib

def sendEmail(to,content):
    server=smtplib.SMTP('smtp.gmail.com',587)
    server.ehlo()
    server.starttls()
    server.login('mansiguptads01@gmail.com','****')#Enter sender's emailid and password(in place of ****)
    server.sendmail('mansiguptads01@gmail.com',to,content)
    server.close()
                  

st.set_page_config(page_title="Customer Connect",page_icon="https://tse4.mm.bing.net/th?id=OIP.lJDftVMr58wdM1kn6ZWvkwHaHa&pid=Api&P=0&h=220")
st.title("CUSTOMER CONNECT <-->")
choice=st.sidebar.selectbox("Main Menu",("HOME","ADMIN","CUSTOMER"))

if(choice=="HOME"):
    # Set a background image
    background_image = 'https://png.pngtree.com/background/20210711/original/pngtree-business-desktop-meeting-background-picture-image_1090184.jpg'

    # Use HTML and CSS to set the background image
    st.markdown(
        f"""
        <style>
            .stApp {{
                background-image: url('{background_image}');
                background-size: cover;
                   }}
        </style>
        """,
    unsafe_allow_html=True
    )
    
elif(choice=="ADMIN"):
    if "islogin" not in st.session_state:
        st.session_state['islogin']=False
    aid=st.text_input("Enter admin email ID")
    pwd=st.text_input("Enter admin password")
    btn=st.button("Login")
    if btn:
        mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
        c=mydb.cursor()
        c.execute("select * from adminData")
        data=c.fetchall()
        for k in data:
            if (k[6]==aid and k[5]==pwd):
                st.session_state['islogin']=True
                break
        if not st.session_state['islogin']:
            st.subheader("Incorrect ID or Passwowrd")
            
    if st.session_state['islogin']:
         st.subheader("Login Successfull !!")
         choice2=st.selectbox("Features",("NONE","CUSTOMER DATA", "CUSTOMER ANALYSIS", "MANAGE ORDERS", "ORDER RECORDS", "CUSTOMER QUERY","VIEW CUSTOMER FEEDBACK"))
         if(choice2=="CUSTOMER DATA"):
             mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
             c=mydb.cursor()
             c.execute("select * from custData")
             mydata=c.fetchall()
             mycolumns=c.column_names
             df=pd.DataFrame(data=mydata,columns=mycolumns)
             st.dataframe(df)

             choice3=st.selectbox("Features",("None","Add Customer Data","Delete Customer Data"))
             if(choice3=="Add Customer Data"):
                 cname=st.text_input("Enter Customer Name")
                 gender = st.text_input("Gender")
                 age= st.text_input("Age")
                 loc= st.text_input("Customer's Location")
                 phn= st.text_input("Phone No.")
                 cemail= st.text_input("Customer's email")
                 btn2=st.button("Add Customer Data")
                 if btn2:
                     mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                     c=mydb.cursor()
                     c.execute("insert into custData(name,gender,age,location,c_phn,c_email) values(%s,%s,%s,%s,%s,%s)",(cname,gender,age,loc,phn, cemail))
                     mydb.commit()
                     st.subheader("Data Added Successfully !!")
             elif(choice3=="Delete Customer Data"):
                 mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                 c=mydb.cursor()
                 c.execute("select * from custData")
                 mydata=c.fetchall()
                 mycolumns=c.column_names
                 df=pd.DataFrame(data=mydata,columns=mycolumns)
                 cid=st.selectbox("Choose Customer ID to delete",df['CustomerID'])
                 btn2=st.button("Delete Customer Data")
                 if btn2:
                     mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                     c=mydb.cursor()
                     c.execute("delete from custData where CustomerID=%s",(cid,))
                     mydb.commit()
                     st.subheader("Data Deleted Successfully !!")
        
         elif(choice2=="MANAGE ORDERS"):
             choice3=st.selectbox("Features",("None","View Order","Order Details","Update Order Status","Order Status"))
             if(choice3=="View Order"):
                 c_id=st.text_input("Enter Customer ID")
                 mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                 c=mydb.cursor()
                 c.execute("select ItemsOrdered from orderDetails where CustomerID= %s",(c_id,))
                 mydata=c.fetchall()
                 mycolumns=c.column_names
                 df=pd.DataFrame(data=mydata,columns=mycolumns)
                 st.write("Items Ordered:")
                 st.dataframe(df)
             elif(choice3=="Order Details"):
                 c_id=st.text_input("Enter Customer ID")
                 mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                 c=mydb.cursor()
                 c.execute("select * from orderDetails where CustomerID= %s",(c_id,))
                 mydata=c.fetchall()
                 mycolumns=c.column_names
                 df=pd.DataFrame(data=mydata,columns=mycolumns)
                 st.write("Complete Order Details:")
                 st.dataframe(df)
             elif(choice3=="Order Status"):
                 c_id=st.text_input("Enter Customer ID")
                 mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                 c=mydb.cursor()
                 c.execute("select OrderStatus from orderDetails where CustomerID= %s",(c_id,))
                 mydata=c.fetchall()
                 mycolumns=c.column_names
                 df=pd.DataFrame(data=mydata,columns=mycolumns)
                 st.write("Status of the Order is:")
                 st.dataframe(df)
             elif(choice3=="Update Order Status"):
                 c_id=st.text_input("Enter Customer ID")
                 mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                 c=mydb.cursor()
                 st.write("Current Order Status:")
                 c.execute("select OrderStatus from orderDetails where CustomerID= %s",(c_id,))
                 mydata=c.fetchall()
                 mycolumns=c.column_names
                 df=pd.DataFrame(data=mydata,columns=mycolumns)
                 st.dataframe(df)
                 st.write("Updated Order Status:")
                 o_stat=st.text_input("Enter Updated Order Status")
                 btn2=st.button("Update Order Status")
                 if btn2:
                     mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                     c=mydb.cursor()
                     c.execute("update orderDetails set OrderStatus=%s where CustomerID= %s",(o_stat,c_id))
                     mydb.commit()
                     st.subheader("Status Updated Successfully !!")
         elif(choice2=="VIEW CUSTOMER FEEDBACK"):
             c=st.selectbox("View Customer Feedback",("View All","View Customer Specific"))
             if(c=="View All"):
                 mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                 c=mydb.cursor()
                 c.execute("select * from feedback")
                 mydata=c.fetchall()
                 mycolumns=c.column_names
                 df=pd.DataFrame(data=mydata,columns=mycolumns)
                 st.dataframe(df)
             else:
                 c_id=st.text_input("Enter Customer ID")
                 mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                 c=mydb.cursor()
                 c.execute("select * from feedback where c_id= %s",(c_id,))
                 mydata=c.fetchall()
                 mycolumns=c.column_names
                 df=pd.DataFrame(data=mydata,columns=mycolumns)
                 st.dataframe(df)
                 
         elif(choice2=="ORDER RECORDS"):
             st.write("Complete Order Record:")
             mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
             c=mydb.cursor()
             c.execute("select * from orderDetails")
             mydata=c.fetchall()
             mycolumns=c.column_names
             df=pd.DataFrame(data=mydata,columns=mycolumns)
             st.dataframe(df)
                  
         elif(choice2=="CUSTOMER QUERY"):
             mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
             c=mydb.cursor()
             c.execute("select * from HelpDesk")
             mydata=c.fetchall()
             mycolumns=c.column_names
             df=pd.DataFrame(data=mydata,columns=mycolumns)
             st.dataframe(df)
         elif(choice2=="CUSTOMER ANALYSIS"):
             df=pd.read_csv("Customer Analysis.csv")
             c=st.selectbox("Choose Category",("Male","Female"))
             df2=df[df['gender']==c]
             st.dataframe(df2)
             choice3=st.selectbox("Choose Visualization",("NONE","PIE CHART","HISTOGRAM"))
             if(choice3 == "HISTOGRAM"):
                 k=st.selectbox("Choose Category",("gender","age","location"))
                 if k:
                     fig=px.histogram(x=df[k])
                     st.plotly_chart(fig)
             elif(choice3 == "PIE CHART"):
                 c=st.selectbox("Choose category",("age","gender","location"))
                 if(c=="age"):
                     # Pie chart for 'age' column
                     age_counts = df['age'].value_counts()
                     fig_age = px.pie(values=age_counts, names=age_counts.index, title='Age Distribution')
                     st.plotly_chart(fig_age)
                 elif(c=="gender"):
                     # Pie chart for 'gender' column
                     gender_counts = df['gender'].value_counts()
                     fig_gender = px.pie(values=gender_counts, names=gender_counts.index, title='Gender Distribution')
                     st.plotly_chart(fig_gender)
                 elif(c=="location"):
                     # Pie chart for 'location' column
                     location_counts = df['location'].value_counts()
                     fig_location = px.pie(values=location_counts, names=location_counts.index, title='Location Distribution')
                     st.plotly_chart(fig_location)
        

elif(choice=="CUSTOMER"):
    if "islogin" not in st.session_state:
        st.session_state['islogin']=False
    aid=st.text_input("Enter Customer email ID")
    pwd=st.text_input("Enter Customer password")
    btn=st.button("Login")
    if btn:
        mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
        c=mydb.cursor()
        c.execute("select * from custCredentials")
        data=c.fetchall()
        for k in data:
            if (k[1]==aid and k[2]==pwd):
                st.session_state['islogin']=True
                break
        if not st.session_state['islogin']:
            st.subheader("Incorrect ID or Passwowrd")
            
    if st.session_state['islogin']:
         st.subheader("Login Successfull !!")
         choice2=st.selectbox("Features",("NONE","INVOICE", "HELP DESK", "FEEDBACK", "FAQ", "ACCOUNT MANAGEMENT" ,"ABOUT US"))
         if(choice2=="INVOICE"):
                 c_id=st.text_input("Enter Customer ID")
                 mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                 c=mydb.cursor()
                 c.execute("select * from invoice where CustomerID= %s",(c_id,))
                 mydata=c.fetchall()
                 mycolumns=c.column_names
                 df=pd.DataFrame(data=mydata,columns=mycolumns)
                 st.write("Your Invoice:")
                 st.dataframe(df)
         elif(choice2=="HELP DESK"):
              c_id=st.text_input("Enter Customer ID:")
              cname = st.text_input("Enter your name:")
              sub= st.text_input("Enter subject:")
              Ttype=st.selectbox("Choose request type",("None","Query", "Problem","Question"))
              Ptype=st.selectbox("Choose priority preference",("None","High", "Medium","Low"))
              Tdesc=st.text_input("Write a brief description for your request:")
              cust_phn=st.text_input("Enter your mobile number:")
              c_emailID=st.text_input("Enter your registered email ID:")     
              btn2=st.button("Submit Request")
              if btn2:
                  content="Hello " + cname + ",\n\nYour request has been received successfully.\n\nThank you for reaching out to us.Our company representative will contact you within 48 hours.\n\nRegards,\n\nCompany Executive"
                  to=c_emailID
                  sendEmail(to,content)
                  
                  mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                  c=mydb.cursor()
                  c.execute("insert into custHelpDesk values(%s,%s,%s,%s,%s,%s,%s,%s)",(c_id,cname,sub,Ttype,Ptype,Tdesc, cust_phn, c_emailID))
                  mydb.commit()
                  st.subheader("Request Raised Successfully !!\nConfirmation mail has been sent to your registered emailid!")
         elif(choice2=="FEEDBACK"):
              c_id=st.text_input("Enter Customer ID:")
              cname = st.text_input("Enter your name:")
              c_emailID=st.text_input("Enter your registered email ID:")
              Ftype=st.selectbox("Choose Feedback type",("None","Suggestion", "Compliment","Complaints"))
              sub= st.text_input("Enter subject:")
              rating=st.selectbox("Rate between 1-5",("1","2","3","4","5"))
              btn2=st.button("Submit Feedback")
              if btn2:
                  mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                  c=mydb.cursor()
                  c.execute("insert into feedback values(%s,%s,%s,%s,%s,%s)",(c_id,cname, c_emailID,Ftype,sub,rating))
                  mydb.commit()
                  st.subheader("Feedback Submitted Successfully.Thanks for your valuable Time !!")
         elif(choice2=="ACCOUNT MANAGEMENT"):
              c_id=st.text_input("Enter your customer ID:")
              cname=st.text_input("Enter your full name:")
              gen = st.text_input("Gender:")
              age= st.text_input("Age:")
              loc= st.text_input("Enter your location:")
              c_phn= st.text_input("Enter your mobile no.:")
              c_email= st.text_input("Enter your email id:")
              btn2=st.button("Update Data")
              if btn2:
                  mydb=mysql.connector.connect(host="localhost",user="root",password="mansi@1234",database="cms")
                  c=mydb.cursor()
                  c.execute("update custdata set name=%s,gender=%s,age=%s,location=%s,c_phn=%s,c_email=%s where customerID=%s",(cname, gen ,age,loc,c_phn,c_email,c_id))
                  mydb.commit()
                  st.subheader("Data updated successfully !!")
         
         elif(choice2=="FAQ"):
              st.markdown("<h4>How can I reset my password?", unsafe_allow_html=True)
              st.write("Answer:To reset your password, visit the login page and click on the 'Forgot Password' link. Follow the instructions to reset your password via email.")
              st.markdown("<h4>What payment methods do you accept?", unsafe_allow_html=True)
              st.write("Answer: We accept various payment methods including credit/debit cards, PayPal, and bank transfers. You can view all available payment options during the checkout process.")
              st.markdown("<h4>How long does shipping take?", unsafe_allow_html=True)
              st.write("Answer: Shipping times vary depending on your location and the shipping method selected. Standard shipping typically takes 3-5 business days, while expedited shipping may arrive within 1-2 business days.")
              st.markdown("<h4> What is your return policy?", unsafe_allow_html=True)
              st.write("Answer: Our return policy allows you to return items within 30 days of purchase for a full refund or exchange. Items must be unused and in their original packaging. Please refer to our Returns page for more details.")
              st.markdown("<h4> Do you offer international shipping?", unsafe_allow_html=True)
              st.write("Answer: Yes, we offer international shipping to select countries. Shipping costs and delivery times vary depending on the destination. You can view available shipping options during the checkout process.")
              st.markdown("<h4>How can I track my order?", unsafe_allow_html=True)
              st.write("Answer: Once your order has been shipped, you will receive a tracking number via email. You can use this tracking number to track your order's status on our website or the carrier's website.")
              st.markdown("<h4> Can I cancel my order after it's been placed?", unsafe_allow_html=True)
              st.write("Answer: Orders can be canceled within 24 hours of purchase before they are shipped. Once the order has been shipped, it cannot be canceled but can be returned following our return policy.")
              st.markdown("<h4> Are your products eco-friendly?", unsafe_allow_html=True)
              st.write("Answer: We strive to offer environmentally friendly products whenever possible. Look for eco-friendly labels on our product pages or contact customer support for more information on specific products.")
              st.markdown("<h4>How can I contact customer support?", unsafe_allow_html=True)
              st.write("Answer: You can contact our customer support team via email at support@example.com or by phone at +1 (800) 123-4567. Our support team is available Monday through Friday from 9:00 AM to 5:00 PM.")
              st.markdown("<h4> Do you offer discounts for bulk orders?", unsafe_allow_html=True)
              st.write("Answer: Yes, we offer discounts for bulk orders. Please contact our sales team at sales@example.com for pricing and further assistance.")
         elif(choice2=="ABOUT US"):
              st.markdown("<h2>About Us", unsafe_allow_html=True)
              st.markdown("<h5>At our Company, we are dedicated to providing innovative solutions tailored to meet the evolving needs of our clients. With over 20+ years of experience in the industry, we have established ourselves as a trusted partner known for delivering exceptional results.", unsafe_allow_html=True)
              st.markdown("<h2>Our Clients", unsafe_allow_html=True)
              st.markdown("<h5>We take pride in serving a diverse clientele ranging from small startups to multinational corporations. Our client base includes leading names . We value each client relationship and are committed to exceeding their expectations with our personalized approach and high-quality services.", unsafe_allow_html=True)
              st.markdown("<h2>Our Branches", unsafe_allow_html=True)
              st.markdown("<h5>Headquartered in UP, we have expanded our presence to 100+ branches across India. Our strategic locations enable us to provide localized support and services, ensuring seamless collaboration with our clients wherever they are located.", unsafe_allow_html=True)
              st.markdown("<h2>Contact Information", unsafe_allow_html=True)
              st.markdown("<h5>Address: 123 Main Street, Kanpur, UP", unsafe_allow_html=True)
              st.markdown("<h5>Phone: +91 (555) 123-4567", unsafe_allow_html=True)
              st.markdown("<h5>Email: info@example.com", unsafe_allow_html=True)
              st.markdown("<h2>Social Media", unsafe_allow_html=True)
              st.markdown("<h5>Connect with us on social media to stay updated on the latest news, events, and industry insights:", unsafe_allow_html=True)
              st.markdown("<h5>Facebook", unsafe_allow_html=True)
              st.markdown("<h5>Twitter", unsafe_allow_html=True)
              st.markdown("<h5>LinkedIn", unsafe_allow_html=True)
              st.markdown("<h2>Promoting Gender Equality", unsafe_allow_html=True)
              st.markdown("<h5>At our Company, we believe in creating an inclusive workplace culture where diversity is celebrated and everyone has equal opportunities for growth and success. We are proud to have a gender-balanced workforce and actively promote initiatives that support gender equality, including mentorship programs, leadership development, and flexible work arrangements.", unsafe_allow_html=True)
              st.markdown("<h2>Sustainability Commitment", unsafe_allow_html=True)
              st.markdown("<h5>As part of our corporate responsibility efforts, we are committed to sustainability and environmental stewardship. We strive to minimize our environmental footprint by implementing eco-friendly practices throughout our operations and supporting initiatives that contribute to a more sustainable future.", unsafe_allow_html=True)
           
              
              

              
              
                  
        
           
             
                     
         
