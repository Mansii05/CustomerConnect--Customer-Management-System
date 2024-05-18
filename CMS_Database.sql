create database cms;
show databases;
use cms;
create table adminData(name varchar(255),address varchar(255),dept varchar(255),phn varchar(255),a_id varchar (255),pswrd varchar(255));
alter table adminData add column a_email varchar(255);
select * from adminData;
INSERT INTO adminData (name, address, dept, phn, a_id, pswrd, a_email) VALUES
('Rajesh Kumar', '123 Main Street, Mumbai', 'HR', '9876543210', 'A001', 'password123', 'rajesh@example.com'),
('Priya Sharma', '456 Park Avenue, Delhi', 'Finance', '9876543211', 'A002', 'securepass456', 'priya@example.com'),
('Amit Singh', '789 Beach Road, Chennai', 'IT', '9876543212', 'A003', 'admin@123', 'amit@example.com'),
('Sneha Patel', '321 Lake View, Bangalore', 'Marketing', '9876543213', 'A004', 'qwerty789', 'sneha@example.com'),
('Kunal Gupta', '654 Hilltop Lane, Kolkata', 'Operations', '9876543214', 'A005', 'pass@word', 'kunal@example.com'),
('Anjali Verma', '987 Valley Road, Pune', 'Admin', '9876543215', 'A006', 'letmein123', 'anjali@example.com'),
('Vikram Desai', '741 River View, Hyderabad', 'Sales', '9876543216', 'A007', 'password!', 'vikram@example.com'),
('Neha Reddy', '852 Skyline Avenue, Ahmedabad', 'HR', '9876543217', 'A008', 'india@123', 'neha@example.com'),
('Arun Khanna', '963 Mountain View, Jaipur', 'IT', '9876543218', 'A009', '123456', 'arun@example.com'),
('Jaya Mehta', '159 Sunset Boulevard, Lucknow', 'Finance', '9876543219', 'A010', 'pass123word', 'jaya@example.com'),
('Suresh Tiwari', '456 Beach Road, Mumbai', 'Admin', '9876543220', 'A011', 'securepassword', 'suresh@example.com'),
('Deepa Singh', '321 Hill View, Delhi', 'Operations', '9876543221', 'A012', '12345678', 'deepa@example.com'),
('Rajiv Sharma', '852 Park Lane, Chennai', 'IT', '9876543222', 'A013', 'abc@123', 'rajiv@example.com'),
('Asha Gupta', '963 River View, Bangalore', 'HR', '9876543223', 'A014', 'password$', 'asha@example.com'),
('Sanjay Patel', '159 Valley Road, Kolkata', 'Sales', '9876543224', 'A015', 'hello123', 'sanjay@example.com'),
('Neha Verma', '741 Mountain View, Pune', 'Marketing', '9876543225', 'A016', 'p@ssword', 'neha_v@example.com'),
('Ravi Kumar', '654 Sunset Boulevard, Hyderabad', 'Admin', '9876543226', 'A017', 'welcome123', 'ravi@example.com'),
('Anita Singh', '987 Beach Road, Ahmedabad', 'Finance', '9876543227', 'A018', 'admin123', 'anita@example.com'),
('Rajesh Verma', '123 Hilltop Lane, Jaipur', 'IT', '9876543228', 'A019', 'pass1234', 'rajesh_v@example.com'),
('Pooja Sharma', '456 River View, Lucknow', 'Operations', '9876543229', 'A020', '1234567890', 'pooja@example.com');


create table custData(name varchar(255),gender varchar(255),age varchar(255),location varchar(255),c_phn varchar(255),c_id varchar(255));
alter table custData rename column c_id to c_email;
alter table custData add column CustomerID int auto_increment primary key;
INSERT INTO custData (name, gender, age, location, c_phn, c_email) VALUES
('Aditi Patel', 'Female', '30', 'Mumbai', '555-1234', 'aditi@example.com'),
('Rahul Gupta', 'Male', '25', 'Delhi', '555-5678', 'rahul@example.com'),
('Priya Sharma', 'Female', '40', 'Bangalore', '555-9012', 'priya@example.com'),
('Vikram Singh', 'Male', '35', 'Hyderabad', '555-3456', 'vikram@example.com'),
('Neha Kumar', 'Female', '28', 'Chennai', '555-7890', 'neha@example.com'),
('Amit Dubey', 'Male', '45', 'Kolkata', '555-2345', 'amit@example.com'),
('Kavita Singh', 'Female', '32', 'Pune', '555-6789', 'kavita@example.com'),
('Rajesh Sharma', 'Male', '38', 'Ahmedabad', '555-1234', 'rajesh@example.com'),
('Ananya Reddy', 'Female', '27', 'Jaipur', '555-5678', 'ananya@example.com'),
('Suresh Patel', 'Male', '33', 'Lucknow', '555-9012', 'suresh@example.com'),
('Divya Gupta', 'Female', '29', 'Chandigarh', '555-3456', 'divya@example.com'),
('Vivek Verma', 'Male', '42', 'Indore', '555-7890', 'vivek@example.com'),
('Sapna Mishra', 'Female', '31', 'Nagpur', '555-2345', 'sapna@example.com'),
('Rajat Singh', 'Male', '47', 'Bhopal', '555-6789', 'rajat@example.com'),
('Pooja Das', 'Female', '26', 'Kochi', '555-1234', 'pooja@example.com'),
('Alok Singh', 'Male', '36', 'Visakhapatnam', '555-5678', 'alok@example.com'),
('Anjali Sharma', 'Female', '34', 'Surat', '555-9012', 'anjali@example.com'),
('Vinod Kumar', 'Male', '39', 'Patna', '555-3456', 'vinod@example.com'),
('Meera Gupta', 'Female', '28', 'Gurgaon', '555-7890', 'meera@example.com'),
('Ravi Kumar', 'Male', '43', 'Varanasi', '555-2345', 'ravi@example.com');

INSERT INTO custData (name, gender, age, location, c_phn, c_email) VALUES
('Aarav Gupta', 'Male', 30, 'Mumbai', '9876543210', 'aaravg@example.com'),
('Aisha Singh', 'Female', 25, 'Delhi', '9876543211', 'aishas@example.com'),
('Arjun Patel', 'Male', 35, 'Chennai', '9876543212', 'arjunp@example.com'),
('Ishaan Sharma', 'Male', 28, 'Bangalore', '9876543213', 'ishaans@example.com'),
('Avani Reddy', 'Female', 32, 'Hyderabad', '9876543214', 'avanir@example.com'),
('Diya Verma', 'Female', 27, 'Kolkata', '9876543215', 'diyav@example.com'),
('Kabir Kumar', 'Male', 29, 'Pune', '9876543216', 'kabirk@example.com'),
('Mira Gupta', 'Female', 31, 'Ahmedabad', '9876543217', 'mirag@example.com'),
('Rohan Singh', 'Male', 33, 'Jaipur', '9876543218', 'rohans@example.com'),
('Saanvi Patel', 'Female', 26, 'Lucknow', '9876543219', 'saanvip@example.com'),
('Vihaan Sharma', 'Male', 34, 'Nagpur', '9876543220', 'vihaans@example.com'),
('Zara Khan', 'Female', 29, 'Chandigarh', '9876543221', 'zarak@example.com'),
('Advik Mishra', 'Male', 32, 'Surat', '9876543222', 'advikm@example.com'),
('Anaya Jain', 'Female', 27, 'Indore', '9876543223', 'anayaj@example.com'),
('Kian Singh', 'Male', 30, 'Bhopal', '9876543224', 'kians@example.com'),
('Myra Choudhary', 'Female', 28, 'Visakhapatnam', '9876543225', 'myrac@example.com'),
('Reyansh Joshi', 'Male', 35, 'Thane', '9876543226', 'reyanshj@example.com'),
('Kiara Gupta', 'Female', 31, 'Patna', '9876543227', 'kiarag@example.com'),
('Shaurya Dubey', 'Male', 26, 'Ludhiana', '9876543228', 'shauryad@example.com'),
('Samaira Mishra', 'Female', 33, 'Agra', '9876543229', 'samairam@example.com');
select * from custData;


create table custCredentials(custID varchar(255),custMail varchar(255),custPass varchar(255));
INSERT INTO custCredentials (custID, custMail, custPass) VALUES
('1', 'aditi@example.com', 'password123'),
('2', 'rahul@example.com', 'password456'),
('3', 'priya@example.com', 'password789'),
('4', 'vikram@example.com', 'password101'),
('5', 'neha@example.com', 'password112'),
('6', 'amit@example.com', 'password131'),
('7', 'kavita@example.com', 'password415'),
('8', 'rajesh@example.com', 'password516'),
('9', 'ananya@example.com', 'password617'),
('10', 'suresh@example.com', 'password718'),
('11', 'divya@example.com', 'password819'),
('12', 'vivek@example.com', 'password920'),
('13', 'sapna@example.com', 'password213'),
('14', 'rajat@example.com', 'password314'),
('15', 'pooja@example.com', 'password415'),
('16', 'alok@example.com', 'password516'),
('17', 'anjali@example.com', 'password617'),
('18', 'vinod@example.com', 'password718'),
('19', 'meera@example.com', 'password819'),
('20', 'ravi@example.com', 'password920'),
('21', 'aaravg@example.com', 'password123'),
('22', 'aishas@example.com', 'password456'),
('23', 'arjunp@example.com', 'password789'),
('24', 'ishaans@example.com', 'password101'),
('25', 'avanir@example.com', 'password112'),
('26', 'diyav@example.com', 'password131'),
('27', 'kabirk@example.com', 'password415'),
('28', 'mirag@example.com', 'password516'),
('29', 'rohans@example.com', 'password617'),
('30', 'saanvip@example.com', 'password718'),
('31', 'vihaans@example.com', 'password819'),
('32', 'zarak@example.com', 'password920'),
('33', 'advikm@example.com', 'password213'),
('34', 'anayaj@example.com', 'password314'),
('35', 'kians@example.com', 'password415'),
('36', 'myrac@example.com', 'password516'),
('37', 'reyanshj@example.com', 'password617'),
('38', 'kiarag@example.com', 'password718'),
('39', 'shauryad@example.com', 'password819'),
('40', 'samairam@example.com', 'password920');
select * from custCredentials;


create table orderDetails(
OrderID varchar(255),
 CustomerID varchar(255),
 OrderDate varchar(255),
 TotalAmount varchar(255),
 OrderStatus varchar(255),
 ShippingAddress varchar(255),
 PaymentStatus varchar(255),
 ItemsOrdered varchar(255),
 AdditionalNotes varchar(255),
 LastUpdated varchar(255)
 );
INSERT INTO orderDetails (OrderID, CustomerID, OrderDate, TotalAmount, OrderStatus, ShippingAddress, PaymentStatus, ItemsOrdered, AdditionalNotes, LastUpdated)
VALUES 
(100, 1, '2024-03-25 10:00:00', '$50.00', 'Processing', '15 Taj Mahal Road, Agra', 'Pending', '[{"product_id": 101, "name": "Taj Mahal Replica", "quantity": 1, "price": "$50.00"}]', 'Urgent delivery requested', '2024-03-25 10:00:00'),
(101, 2, '2024-03-25 11:30:00', '$120.00', 'Shipped', '27 Bollywood Street, Mumbai', 'Paid', '[{"product_id": 102, "name": "Sari", "quantity": 2, "price": "$60.00"}]', NULL, '2024-03-25 11:30:00'),
(102, 3, '2024-03-26 09:45:00', '$75.50', 'Delivered', '10 Ganges Bank, Varanasi', 'Paid', '[{"product_id": 103, "name": "Spices Pack", "quantity": 1, "price": "$25.50"}, {"product_id": 104, "name": "Incense Sticks", "quantity": 2, "price": "$50.00"}]', NULL, '2024-03-26 09:45:00'),
(103, 4, '2024-03-26 13:20:00', '$200.00', 'Processing', '45 Curry Lane, New Delhi', 'Pending', '[{"product_id": 105, "name": "Indian Curry Cookbook", "quantity": 1, "price": "$30.00"}, {"product_id": 106, "name": "Cooking Spices Set", "quantity": 3, "price": "$170.00"}]', 'Customer requested gift wrapping', '2024-03-26 13:20:00'),
(104, 5, '2024-03-27 14:00:00', '$35.00', 'Canceled', '5 Elephant Road, Jaipur', 'Refunded', '[{"product_id": 107, "name": "Elephant Figurine", "quantity": 1, "price": "$35.00"}]', 'Product out of stock', '2024-03-27 14:00:00'),
(105, 6, '2024-03-27 16:30:00', '$90.00', 'Shipped', '8 Spice Market Lane, Kochi', 'Paid', '[{"product_id": 108, "name": "Tea Sampler Pack", "quantity": 1, "price": "$40.00"}, {"product_id": 109, "name": "Ayurvedic Oil", "quantity": 2, "price": "$50.00"}]', NULL, '2024-03-27 16:30:00'),
(106, 7, '2024-03-28 08:45:00', '$15.00', 'Delivered', '12 Yoga Street, Rishikesh', 'Paid', '[{"product_id": 110, "name": "Yoga Mat", "quantity": 1, "price": "$15.00"}]', NULL, '2024-03-28 08:45:00'),
(107, 8, '2024-03-28 10:20:00', '$45.00', 'Processing', '30 Coconut Avenue, Goa', 'Pending', '[{"product_id": 111, "name": "Coconut Bowl Set", "quantity": 2, "price": "$30.00"}, {"product_id": 112, "name": "Handcrafted Goa Necklace", "quantity": 1, "price": "$15.00"}]', 'Urgent delivery requested', '2024-03-28 10:20:00'),
(108, 9, '2024-03-29 12:00:00', '$80.00', 'Shipped', '55 Silk Road, Bangalore', 'Paid', '[{"product_id": 113, "name": "Silk Saree", "quantity": 2, "price": "$40.00"}]', NULL, '2024-03-29 12:00:00'),
(109, 10, '2024-03-29 15:30:00', '$55.00', 'Delivered', '77 Spice Garden, Hyderabad', 'Paid', '[{"product_id": 114, "name": "Spice Box Set", "quantity": 1, "price": "$30.00"}, {"product_id": 115, "name": "Hyderabadi Biryani Mix", "quantity": 1, "price": "$25.00"}]', NULL, '2024-03-29 15:30:00'),
(110, 11, '2024-03-30 09:00:00', '$25.00', 'Canceled', '4 Rajputana Road, Udaipur', 'Refunded', '[{"product_id": 116, "name": "Rajasthani Turban", "quantity": 1, "price": "$25.00"}]', 'Customer changed mind', '2024-03-30 09:00:00'),
(111, 12, '2024-03-30 11:45:00', '$150.00', 'Processing', '23 Bollywood Street, Mumbai', 'Pending', '[{"product_id": 117, "name": "Bollywood DVD Collection", "quantity": 1, "price": "$150.00"}]', NULL, '2024-03-30 11:45:00'),
(112, 13, '2024-03-31 13:30:00', '$65.00', 'Shipped', '37 Spice Market Lane, Kochi', 'Paid', '[{"product_id": 118, "name": "Spice Grinder", "quantity": 1, "price": "$65.00"}]', NULL, '2024-03-31 13:30:00'),
(113, 14, '2024-03-31 16:15:00', '$45.00', 'Delivered', '50 Sacred Cow Road, Mathura', 'Paid', '[{"product_id": 119, "name": "Cow Idol", "quantity": 1, "price": "$45.00"}]', NULL, '2024-03-31 16:15:00');
select * from orderDetails;


create table HelpDesk(
TicketID varchar(255),
 CustomerID varchar(255), 
 TicketType varchar(255),
 Tsubject varchar(255),
 Tdescription varchar(255),
 Priority varchar(255),
 Tstatus varchar(255),
 CreationDate varchar(255),
 Resolution varchar(255),
 Attachments varchar(255),
 cust_phn varchar(255),
 cust_emailID varchar(255)
 );
INSERT INTO HelpDesk (TicketID, CustomerID, TicketType, Tsubject, Tdescription, Priority, Tstatus, CreationDate, Resolution, Attachments, cust_phn, cust_emailID)
VALUES 
    ('1001', '1', 'Query', 'Payment discrepancy', 'I noticed a discrepancy in my recent payment statement.', 'High', 'Open', '2024-03-25 09:15:00', NULL, NULL, '555-1234', 'aditi@example.com'),
    ('1002', '2', 'Problem', 'Login issue', 'I am unable to log in to my account.', 'High', 'In Progress', '2024-03-25 10:30:00', 'Reset password', NULL, '555-5678', 'rahul@example.com'),
    ('1003', '3', 'Question', 'Product inquiry', 'I would like to know more about the features of your new product.', 'Low', 'Open', '2024-03-26 11:45:00', NULL, NULL, '555-9012', 'priya@example.com'),
    ('1004', '4', 'Query', 'Shipping status', 'Can you please provide an update on the shipping status of my order?', 'Medium', 'Open', '2024-03-26 14:20:00', NULL, NULL, '555-3456', 'vikram@example.com'),
    ('1005', '5', 'Problem', 'Website error', 'I encountered an error while trying to complete my purchase on your website.', 'High', 'Resolved', '2024-03-27 08:30:00', 'Bug fixed', NULL, '555-7890', 'neha@example.com'),
    ('1006', '6', 'Query', 'Product availability', 'Are the products listed on your website currently in stock?', 'Low', 'Open', '2024-03-27 10:00:00', NULL, NULL, '555-2345', 'amit@example.com'),
    ('1007', '7', 'Question', 'Return policy', 'What is your return policy for online purchases?', 'Low', 'Resolved', '2024-03-28 12:15:00', 'Provided return policy details', NULL, '555-6789', 'kavita@example.com'),
    ('1008', '8', 'Problem', 'Order cancellation', 'I would like to cancel my recent order.', 'High', 'Open', '2024-03-28 14:45:00', NULL, NULL, '555-1234', 'rajesh@example.com'),
    ('1009', '9', 'Query', 'Account upgrade', 'How can I upgrade my account to premium membership?', 'Medium', 'In Progress', '2024-03-29 09:30:00', NULL, NULL, '555-5678', 'ananya@example.com'),
    ('1010', '10', 'Question', 'Product specifications', 'Can you provide detailed specifications for the product listed on your website?', 'Low', 'Resolved', '2024-03-29 11:00:00', 'Provided product specifications', NULL, '555-9012', 'suresh@example.com'),
    ('1011', '11', 'Problem', 'Technical issue', 'I am experiencing technical difficulties with your mobile app.', 'High', 'Open', '2024-03-30 13:45:00', NULL, NULL, '555-3456', 'divya@example.com'),
    ('1012', '12', 'Query', 'Refund status', 'When can I expect to receive the refund for my returned item?', 'Medium', 'Open', '2024-03-30 15:30:00', NULL, NULL, '555-7890', 'vivek@example.com'),
    ('1013', '13', 'Problem', 'Broken link', 'I found a broken link on your website.', 'High', 'Resolved', '2024-03-31 10:20:00', 'Link fixed', NULL, '555-2345', 'sapna@example.com'),
    ('1014', '14', 'Query', 'Discount eligibility', 'Am I eligible for the current promotional discount?', 'Low', 'Open', '2024-03-31 12:00:00', NULL, NULL, '555-6789', 'rajat@example.com'),
    ('1015', '15', 'Question', 'Product comparison', 'Can you help me compare two products available on your website?', 'Low', 'Resolved', '2024-04-01 09:15:00', 'Provided product comparison', NULL, '555-1234', 'pooja@example.com'),
    ('1016', '16', 'Problem', 'Billing error', 'There is an error in the billing amount for my recent purchase.', 'High', 'Open', '2024-04-01 11:30:00', NULL, NULL, '555-5678', 'alok@example.com'),
    ('1017', '17', 'Query', 'Delivery timeframe', 'What is the expected delivery timeframe for my order?', 'Medium', 'In Progress', '2024-04-02 14:45:00', NULL, NULL, '555-9012', 'anjali@example.com'),
    ('1018', '18', 'Question', 'Product warranty', 'Does the product come with a warranty?', 'Low', 'Resolved', '2024-04-02 16:30:00', 'Provided warranty information', NULL, '555-3456', 'vinod@example.com'),
    ('1019', '19', 'Problem', 'Broken feature', 'A feature on your website is not functioning as expected.', 'High', 'Open', '2024-04-03 10:00:00', NULL, NULL, '555-7890', 'meera@example.com'),
    ('1020', '20', 'Query', 'Account deactivation', 'How can I deactivate my account?', 'Medium', 'Open', '2024-04-03 12:15:00', NULL, NULL, '555-2345', 'ravi@example.com');
alter table HelpDesk drop column Attachments;
select * from HelpDesk;


CREATE TABLE Invoice (
    InvoiceID VARCHAR(10) PRIMARY KEY,
    CustomerID INT,
    InvoiceDate DATE,
    TotalAmount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    ShippingAddress VARCHAR(255),
    TaxAmount DECIMAL(10, 2),
    DiscountAmount DECIMAL(10, 2),
    ItemsOrdered TEXT,
    PaymentDate DATE,
    RefundAmount DECIMAL(10, 2),
    RefundDate DATE,
    SalesRepresentative VARCHAR(100),
    ShippingMethod VARCHAR(50)
);
ALTER TABLE Invoice
MODIFY TotalAmount VARCHAR(255);
ALTER TABLE Invoice
MODIFY  TaxAmount VARCHAR(255), modify DiscountAmount VARCHAR(255),  modify RefundAmount  VARCHAR(255);

INSERT INTO Invoice (InvoiceID, CustomerID, InvoiceDate, TotalAmount, PaymentMethod, ShippingAddress, TaxAmount, DiscountAmount, ItemsOrdered, PaymentDate, RefundAmount, RefundDate, SalesRepresentative, ShippingMethod)
VALUES 
('I010', 1, '2024-03-25', '$50.00', 'Credit Card', '15 Taj Mahal Road, Agra', '$0.00', '$0.00', '[{"product_id": 101, "name": "Taj Mahal Replica", "quantity": 1, "price": "$50.00"}]', NULL, NULL, NULL, 'John Doe', 'Standard'),
('I011', 2, '2024-03-25', '$120.00', 'Bank Transfer', '27 Bollywood Street, Mumbai', '$0.00', '$0.00', '[{"product_id": 102, "name": "Sari", "quantity": 2, "price": "$60.00"}]', '2024-03-25', NULL, NULL, 'Jane Smith', 'Express'),
('I012', 3, '2024-03-26', '$75.50', 'Cash', '10 Ganges Bank, Varanasi', '$5.50', '$0.00', '[{"product_id": 103, "name": "Spices Pack", "quantity": 1, "price": "$25.50"}, {"product_id": 104, "name": "Incense Sticks", "quantity": 2, "price": "$50.00"}]', '2024-03-26', NULL, NULL, 'James Brown', 'Standard'),
('I013', 4, '2024-03-26', '$200.00', 'Credit Card', '45 Curry Lane, New Delhi', '$20.00', '$0.00', '[{"product_id": 105, "name": "Indian Curry Cookbook", "quantity": 1, "price": "$30.00"}, {"product_id": 106, "name": "Cooking Spices Set", "quantity": 3, "price": "$170.00"}]', NULL, NULL, NULL, 'Emily Johnson', 'Express'),
('I014', 5, '2024-03-27', '$35.00', 'Credit Card', '5 Elephant Road, Jaipur', '$0.00', '$0.00', '[{"product_id": 107, "name": "Elephant Figurine", "quantity": 1, "price": "$35.00"}]', '2024-03-27', NULL, NULL, 'Michael Wilson', 'Standard'),
('I015', 6, '2024-03-27', '$90.00', 'Bank Transfer', '8 Spice Market Lane, Kochi', '$0.00', '$0.00', '[{"product_id": 108, "name": "Tea Sampler Pack", "quantity": 1, "price": "$40.00"}, {"product_id": 109, "name": "Ayurvedic Oil", "quantity": 2, "price": "$50.00"}]', '2024-03-27', NULL, NULL, 'Olivia Martinez', 'Express'),
('I016', 7, '2024-03-28', '$15.00', 'Cash', '12 Yoga Street, Rishikesh', '$0.00', '$0.00', '[{"product_id": 110, "name": "Yoga Mat", "quantity": 1, "price": "$15.00"}]', '2024-03-28', NULL, NULL, 'Daniel Anderson', 'Standard'),
('I017', 8, '2024-03-28', '$45.00', 'Credit Card', '30 Coconut Avenue, Goa', '$0.00', '$0.00', '[{"product_id": 111, "name": "Coconut Bowl Set", "quantity": 2, "price": "$30.00"}, {"product_id": 112, "name": "Handcrafted Goa Necklace", "quantity": 1, "price": "$15.00"}]', NULL, NULL, NULL, 'Sophia Thomas', 'Express'),
('I018', 9, '2024-03-29', '$80.00', 'Bank Transfer', '55 Silk Road, Bangalore', '$0.00', '$0.00', '[{"product_id": 113, "name": "Silk Saree", "quantity": 2, "price": "$40.00"}]', '2024-03-30', NULL, NULL, 'Matthew Garcia', 'Standard'),
('I019', 10, '2024-03-29', '$55.00', 'Cash', '77 Spice Garden, Hyderabad', '$0.00','$0.00','[{"product_id": 113, "name": "Silk Saree", "quantity": 1, "price": "$40.00"}]','2024-03-29',NULL,NULL,'Rajesh Watson','Standard'),
('I020', 11, '2024-03-30', '$25.00', 'Credit Card', '4 Rajputana Road, Udaipur', '$0.00', '$0.00', '[{"product_id": 116, "name": "Rajasthani Turban", "quantity": 1, "price": "$25.00"}]', NULL, NULL, NULL, 'Emma Wilson', 'Standard'),
('I021', 12, '2024-03-30', '$150.00', 'Bank Transfer', '23 Bollywood Street, Mumbai', '$0.00', '$0.00', '[{"product_id": 117, "name": "Bollywood DVD Collection", "quantity": 1, "price": "$150.00"}]', '2024-03-30', NULL, NULL, 'Jacob Taylor', 'Express'),
('I022', 13, '2024-03-31', '$65.00', 'Cash', '37 Spice Market Lane, Kochi', '$0.00', '$0.00', '[{"product_id": 118, "name": "Spice Grinder", "quantity": 1, "price": "$65.00"}]', '2024-03-31', NULL, NULL, 'Isabella Martinez', 'Standard'),
('I023', 14, '2024-03-31', '$45.00', 'Credit Card', '50 Sacred Cow Road, Mathura', '$0.00', '$0.00', '[{"product_id": 119, "name": "Cow Idol", "quantity": 1, "price": "$45.00"}]', '2024-03-31', NULL, NULL, 'Ethan Harris', 'Express');
select * from invoice;


create table custHelpDesk(
c_id varchar(255),
cname  varchar(255),
sub  varchar(255),
Ttype  varchar(255),
Ptype  varchar(255),
Tdesc  varchar(255),
cust_phn  varchar(255),
cust_emialID  varchar(255)
);
INSERT INTO custHelpDesk (c_id, cname, sub, Ttype, Ptype, Tdesc, cust_phn, cust_emialID)
VALUES 
('26', 'Amit Kumar', 'Account Access Issue', 'Query', 'High', 'Unable to log in to account', '+91 9876543210', 'amit@example.com'),
('32', 'Priya Sharma', 'Billing Discrepancy', 'Problem', 'Medium', 'Incorrect amount charged on invoice', '+91 8765432109', 'priya@example.com'),
('77', 'Rahul Singh', 'Product Inquiry', 'Question', 'Low', 'Asking about product features and availability', '+91 7654321098', 'rahul@example.com'),
('53', 'Neha Patel', 'Service Outage', 'Issue', 'High', 'Internet service not working', '+91 6543210987', 'neha@example.com'),
('35', 'Ravi Gupta', 'Order Status Update', 'Query', 'Low', 'Requesting information about order delivery', '+91 5432109876', 'ravi@example.com'),
('27', 'Anita Verma', 'Technical Assistance', 'Query', 'Medium', 'Seeking help with software installation', '+91 4321098765', 'anita@example.com'),
('84', 'Vijay Yadav', 'Feedback Submission', 'Query', 'Low', 'Providing feedback on recent service experience', '+91 3210987654', 'vijay@example.com'),
('61', 'Deepak Jain', 'Account Closure Request', 'Query', 'High' ,'Wants to close the account permanently', '+91 2109876543', 'deepak@example.com'),
('66', 'Sunita Singh', 'Product Return', 'Issue', 'High', 'Requesting return of defective product', '+91 1098765432', 'sunita@example.com'),
('87', 'Sanjay Mishra', 'Password Reset', 'Query', 'High', 'Forgot password and needs to reset it', '+91 0987654321', 'sanjay@example.com');
select * from custHelpDesk;


create table feedback(
c_id varchar(255),
cname varchar(255),
c_emailID varchar(255),
Ftype varchar(255),
sub varchar(255),
rating varchar(255)
);
INSERT INTO feedback (c_id, cname, c_emailID, Ftype, sub, rating)
VALUES 
('52', 'Amit Kumar', 'amit@example.com', 'Complaint', 'Slow service response', '3'),
('69', 'Priya Sharma', 'priya@example.com', 'Suggestion', 'Improvement in website navigation', '4'),
('65', 'Rahul Singh', 'rahul@example.com', 'Compliment', 'Excellent customer service', '5'),
('104', 'Neha Patel', 'neha@example.com', 'Complaint', 'Product received damaged', '2'),
('96', 'Ravi Gupta', 'ravi@example.com', 'Complaint', 'Late delivery of order', '3'),
('75', 'Anita Verma', 'anita@example.com', 'Suggestion', 'Expand product range', '4'),
('47', 'Vijay Yadav', 'vijay@example.com', 'Compliment', 'User-friendly website interface', '5'),
('54', 'Deepak Jain', 'deepak@example.com', 'Complaint', 'Incorrect billing amount', '2'),
('102', 'Sunita Singh', 'sunita@example.com', 'Complaint', 'Poor quality of product', '2'),
('86', 'Sanjay Mishra', 'sanjay@example.com', 'Suggestion', 'More payment options', '4');

select * from feedback;





