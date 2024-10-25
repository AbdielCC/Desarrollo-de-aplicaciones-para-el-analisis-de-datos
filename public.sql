-- Active: 1729827840384@@127.0.0.1@5432@Analisis de Datos@public
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    is_active BOOLEAN,
    city VARCHAR(50)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id INT,
    price DECIMAL(10,2),
    Foreign Key (category_id) REFERENCES categories(category_id)
);
CREATE TABLE categories(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);
CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    foreign key (customer_id) references customers(customer_id)
);
CREATE TABLE order_items(
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references products(product_id)
);
--Insertando varios registros
INSERT INTO customers Values (1,'John Doe','johndo@example.com',true,'New York'),
(2,'Jane Smith','Janes@example.com',true,'Los Angeles'),
(3,'Michael Johnson','michael@example.com',true,'Chicago'),
(4,'Emily Davis','emilyd@example.com',true,'Seattle'),
(5,'Benjamin Lee','benjaminl@example.com',true,'Austin');
INSERT INTO products VALUES (1,'iPhone 14','1',999.99),
(2,'Samsung Galaxy S23','1',899.99),
(3,'Sony Playstation 5','2',499.99),
(4,'Nintendo Switch','2',399.99),
(5,'Macbook Pro','3',1999.99);
INSERT INTO categories VALUES (1,'Smartphones'),
(2,'Consolas'),
(3,'Laptops'),
(4,'Libros'),
(5,'Ropa');
INSERT INTO orders VALUES (1,1,'20/11/2023'),
(2,2,'05/12/2023'),
(3,1,'10/01/2024'),
(4,3,'25/11/2023'),
(5,4,'12/12/2023');
INSERT INTO order_items VALUES (1,1,1,2),
(2,2,2,1),
(3,3,3,1),
(4,4,4,1),
(5,5,5,2);