USE Sales;
CREATE TABLE Sales
( Purchase_number INT NOT NULL PRIMARY KEY auto_increment,
date_of_purchase date NOT null,
Customer_id int,
item_code varchar(7)
);
ALTER TABLE Sales
ADD foreign key(Customer_id) References Customers(Customer_id) ON DELETE CASCADE;

alter TABLE Sales
ADD foreign key(item_code)REFERENCES Items(item_code) on delete cascade;

CREATE TABLE Customers
( Customer_id INT NOT NULL primary Key,
First_name varchar(255),
Last_name varchar(255),
Email_address varchar(255),
Number_of_complaints Int
);
ALTER TABLE Customers
ADD UNIQUE KEY(Email_address);
ALTER TABLE Customers
ADD column gender ENUM('M','F')AFTER Last_name;

Create Table Items
( item_code varchar(255),
item varchar(255),
unit_price Numeric(10,2),
company_id varchar(255),
primary key(item_code)
);

Create Table companies
( company_id varchar(255),
company_name varchar(255),
headquaters_phone_number int,
primary key(company_id)
);

ALTER TABLE companies
Change column company_name company_name varchar(255) NOT null;

DROP TABLE companies;

Create Table companies
( company_id  INT auto_increment,
company_name varchar(255),
headquaters_phone_number int,
primary key(company_id)
);

ALTER TABLE companies
Change column company_name company_name varchar(255) NOT null;

ALTER TABLE companies
Modify headquaters_phone_number INT null;
ALTER TABLE companies
change column headquaters_phone_number headquaters_phone_number INT NOT NULL;


