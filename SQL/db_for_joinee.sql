CREATE DATABASE org;

USE org;

CREATE TABLE EMPLOYEE (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(50),
    lname VARCHAR(50),
    Age INT NOT NULL,
    emailID VARCHAR(100),
    PhoneNo VARCHAR(20),
    City VARCHAR(50)
);

INSERT INTO EMPLOYEE (id, fname, lname, Age, emailID, PhoneNo, City) VALUES
(1, 'Aman', 'Proto', 32, 'aman@gmail.com', '898', 'Delhi'),
(2, 'Yagya', 'Narayan', 44, 'yagya@gmail.com', '222', 'Palam'),
(3, 'Rahul', 'BD', 22, 'rahul@gmail.com', '444', 'Kolkata'),
(4, 'Jatin', 'Hermit', 31, 'jatin@gmail.com', '666', 'Raipur'),
(5, 'PK', 'Pandey', 21, 'pk@gmail.com', '555', 'Jaipur');


CREATE TABLE CLIENT (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT NOT NULL,
    emailID VARCHAR(100),
    PhoneNo VARCHAR(20),
    City VARCHAR(50),
    empID INT,
    FOREIGN KEY(empId)
        REFERENCES EMPLOYEE(id)
            ON DELETE SET NULL
);

INSERT INTO CLIENT (id, first_name, last_name, age, emailID, PhoneNo, City, empID) VALUES
(1, 'Mac', 'Rogers', 47, 'mac@hotmail.com', '333', 'Kolkata', 3),
(2, 'Max', 'Polier', 27, 'max@gmail.com', '222', 'Kolkata', 4),
(3, 'Peter', 'Jain', 11, 'peter@abc.com', '111', 'Delhi', 1),
(4, 'Sushant', 'Aggarwal', 34, 'sushant@yahoo.com', '45454', 'Hyderabad', 5),
(5, 'Pratap', 'Singh', 25, 'p@xyz.com', '77767', 'Mumbai', 2);

CREATE TABLE Project (
    id INT PRIMARY KEY AUTO_INCREMENT,
    empID INT,
    name VARCHAR(10),
    startdate DATE,
    clientID INT,
    FOREIGN KEY (empId)
        REFERENCES EMPLOYEE(id)
            ON DELETE SET NULL,
    FOREIGN KEY (clientID)
        REFERENCES CLIENT(id)
            ON DELETE SET NULL
);

INSERT INTO Project (id, empID, name, startdate, clientID) VALUES
(1, 1, 'A', '2021-04-21', 3),
(2, 2, 'B', '2021-03-12', 1),
(3, 3, 'C', '2021-01-16', 4),
(4, 4, 'D', '2021-04-27', 2),
(5, 5, 'E', '2021-05-01', 1);

SELECT * FROM EMPLOYEE;
SELECT * FROM CLIENT;
SELECT * FROM Project;
