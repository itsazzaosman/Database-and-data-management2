create table Customers(
customer_id serial primary key,
first_name varchar(20),
last_name varchar(20),
sex char(1) check(sex = 'F' or sex = 'M'),
phone_number numeric(15,0),
purchase_product varchar(20)
);

create table Employee(
employee_id serial primary key,
first_name varchar(20),
last_name varchar(20),
sex char(1) check(sex = 'F' or sex = 'M'),
dob date,
phone_number numeric(15,0),
job_title varchar(20),
starting_date_of_work date,
salary numeric(12,2)
);

create table Products(
product_serial_number serial  primary key,
product_name varchar(15),
price numeric(10,2),
description varchar(500),
prefrence_product int,
category_product int,
foreign key (category_product) references  Employee(employee_id ),
foreign key (prefrence_product) references  Customers(customer_id )
);

create table Sales(
sales_serial serial primary key,
quantity_of_product int,
product_serial_number int,
customer_id int,
dop  date,
category varchar(50),
foreign key (product_serial_number) references Products(product_serial_number)
);

create table Store_location(
store_id serial primary key,
store_name varchar(20),
order_id int,
city varchar(20),
province varchar(50)
);

create table Orders(
order_id serial primary key,
order_date date,
total_price numeric(10,2),
store_id int,
sales_id  int,
foreign key (store_id) references  Store_location(store_id),
foreign key (sales_id) references  Sales(sales_serial)
);









