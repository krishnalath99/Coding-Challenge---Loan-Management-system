create database loan_management_system;

use loan_management_system;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email_address VARCHAR(60),
    phone_number VARCHAR(15),
    address VARCHAR(150),
    credit_score INT
);
ALTER TABLE Customer AUTO_INCREMENT=1;

CREATE TABLE Loan (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) on DELETE CASCADE,
    principal_amount Decimal(10, 2),
    interest_rate INT,
    loan_term INT,
    loan_type VARCHAR(20),
    loan_status VARCHAR(20)    
);
ALTER TABLE Loan AUTO_INCREMENT=101;

INSERT INTO Customer (name, email_address, phone_number, address, credit_score) VALUES
	('Rahul Gupta', 'rahul.gupta@email.com', '+91 98765 43210', '123 Main Street, Delhi', 750),
	('Priya Sharma', 'priya.sharma@email.com', '+91 87654 32109', '456 Park Avenue, Mumbai', 600),
	('Amit Singh', 'amit.singh@email.com', '+91 78901 23456', '789 Market Road, Bangalore', 700),
	('Sneha Reddy', 'sneha.reddy@email.com', '+91 89012 34567', '101 Rose Garden, Chennai', 850),
	('Vikas Patel', 'vikas.patel@email.com', '+91 90123 45678', '234 Green Lane, Kolkata', 720),
	('Pooja Verma', 'pooja.verma@email.com', '+91 87654 32109', '567 Silver Street, Hyderabad', 780),
	('Nikhil Kapoor', 'nikhil.kapoor@email.com', '+91 98765 43210', '890 Diamond Avenue, Pune', 760),
	('Ananya Sharma', 'ananya.sharma@email.com', '+91 87654 32109', '345 Platinum Lane, Ahmedabad', 810),
	('Aarav Desai', 'aarav.desai@email.com', '+91 78901 23456', '678 Gold Road, Jaipur', 650),
	('Riya Malhotra', 'riya.malhotra@email.com', '+91 89012 34567', '912 Pearl Street, Chandigarh', 680);
    
    
INSERT INTO Loan (customer_id, principal_amount, interest_rate, loan_term, loan_type, loan_status) VALUES
	(7, 500000, 8, 36, 'CarLoan', 'Approved'),
	(2, 1000000, 7, 60, 'HomeLoan', 'Pending'),
	(6, 300000, 9, 24, 'CarLoan', 'Approved'),
	(4, 800000, 6, 48, 'HomeLoan', 'Approved'),
	(5, 700000, 8, 36, 'CarLoan', 'Approved'),
	(1, 1200000, 7, 60, 'HomeLoan', 'Pending'),
	(2, 400000, 9, 24, 'CarLoan', 'Approved'),
	(8, 900000, 6, 48, 'HomeLoan', 'Pending'),
	(9, 600000, 8, 36, 'CarLoan', 'Pending'),
	(10, 1100000, 7, 60, 'HomeLoan', 'Pending'),
	(3, 350000, 9, 24, 'CarLoan', 'Approved'),
	(4, 750000, 6, 48, 'CarLoan', 'Approved');