create table products(
product_id serial primary key,
name varchar(100) not null,
sku_code char(8) Unique,
price numeric(10,2) CHECK(price >= 0),
stock_quantity int default 0 check (stock_quantity >= 0),
is_available boolean default TRUE,
Category text not null,
added_on date default current_date,
last_update Timestamp default now()
);

INSERT INTO products
(product_id, name, sku_code, price, stock_quantity, is_available, category, added_on, last_update)
VALUES
(1, 'Laptop', 'LAP00001', 55000.00, 10, TRUE, 'Electronics', '2026-01-10', '2026-09-15'),
(2, 'Wireless Mouse', 'MOU00002', 1200.00, 25, TRUE, 'Accessories', '2026-01-12', '2026-09-20'),
(3, 'Mechanical Keyboard', 'KEY00003', 3500.00, 15, TRUE, 'Accessories', '2026-01-15', '2026-09-18'),
(4, 'USB-C Hub', 'HUB00004', 1800.00, 0, FALSE, 'Accessories', '2026-02-01', '2026-08-10'),
(5, 'Monitor 24 inch', 'MON00005', 12000.00, 8, TRUE, 'Electronics', '2026-02-05', '2026-09-25'),
(6, 'Webcam', 'WEB00006', 2500.00, 12, TRUE, 'Electronics', '2026-02-12', '2026-09-12'),
(7, 'Headphones', 'HED00007', 2200.00, 20, TRUE, 'Audio', '2026-03-01', '2026-09-28'),
(8, 'Laptop Stand', 'STA00008', 1500.00, 0, FALSE, 'Accessories', '2026-03-10', '2026-08-25'),
(9, 'External SSD 1TB', 'SSD00009', 7000.00, 7, TRUE, 'Storage', '2026-03-15', '2026-09-30'),
(10, 'Bluetooth Speaker', 'SPK00010', 3000.00, 18, TRUE, 'Audio', '2026-04-02', '2026-09-22');



SELECT * FROM products;
