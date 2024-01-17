show databases;

use online_retail_db;

create table customer(
    customer_id INT auto_increment primary key,
    username VARCHAR(50) not null,
    email VARCHAR(50) not null,
    password VARCHAR(100) unique not null,
    phone VARCHAR(16) not null
);

create table categories(
    category_id INT auto_increment primary key,
    category_name VARCHAR(100) not null
);

create table products(
    product_id INT auto_increment primary key,
    product_name VARCHAR(100) not null,
    product_price DECIMAL(10,2) not null,
    product_stock INT not null,
    product_image BLOB,
    category_id INT,
    foreign key (category_id) references categories(category_id)
);

create table purchase(
    purchase_id INT auto_increment primary key,
    customer_id INT,
    foreign key (customer_id) references customer(customer_id),
    purchase_date DATE not null
);

create table purchase_detail(
    detail_id INT auto_increment primary key,
    purchase_id INT,
    product_id INT,
    quantity INT not null,
    foreign key (purchase_id) references purchase(purchase_id),
    foreign key (product_id) references products(product_id)
);