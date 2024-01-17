show databases;

use online_retail_db;

-- insert data
insert into customer (username, email, password, phone) values
('mia', 'mia@gmail.com', 'pass1234', '456-789-0123'),
('dave', 'dave@gmail.com', 'mypass2345', '678-901-2345'),
('olivia', 'olivia@gmail.com', 'pass456', '789-012-3456'),
('jack', 'jack45@gmail.com', 'ja678a', '901-234-5678'),
('sophia', 'shopia67@gmail.com', 'phia78', '567-678-9012'),
('ava', 'ava46@gmail.com', 'pass567', '123-234-5678'),
('logan', 'logan@gmail.com', 'logan678', '678-789-0123'),
('miller', 'miller@gmail.com', 'miller81', '789-890-1234'),
('michael', 'michael@gmail.com', 'michael897', '890-123-4567'),
('william', 'william@gmail.com', 'will24', '234-567-8901');

insert into categories (category_name) values 
('Action Figures'),
('Puzzle Games'),
('Educational Toys'),
('Play Kitchen'),
('Building Blocks'),
('Remote Control Toys'),
('Dolls and Accessories'),
('Outdoor Playsets'),
('Science Kits'),
('Musical Instruments');

insert into products (product_name, product_price, product_stock, category_id) values
('Superhero Action Figure', 181000, 30, 1),
('Wooden Puzzle', 260000, 25, 2),
('Alphabet Learning Kit', 349000, 20, 3),
('Mini Play Kitchen Set', 559000, 15, 4),
('Colorful Building Blocks', 419860, 40, 5),
('Remote Control Car', 321000, 30, 6),
('Fashion Doll', 209000, 35, 7),
('Backyard Swing Set', 1819000, 10, 8),
('Chemistry Lab Kit', 461000, 18, 9),
('Toy Piano', 391000, 22, 10);

insert into purchase (customer_id, purchase_date) values
(6, '2024-01-26'),
(7, '2024-01-27'),
(8, '2024-01-28'),
(9, '2024-01-29'),
(10, '2024-01-30'),
(1, '2024-01-31'),
(2, '2024-02-01'),
(3, '2024-02-02'),
(4, '2024-02-03'),
(5, '2024-02-04');

insert into purchase_detail (purchase_id, product_id, quantity) values
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(3, 4, 1),
(4, 1, 3),
(5, 3, 1),
(6, 4, 4),
(7, 1, 2),
(8, 4, 2),
(9, 5, 4);