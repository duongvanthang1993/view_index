create database if not exists demoDatabase;
use demoDatabase;
create table Products(
Id int auto_increment primary key,
productCode varchar(50) not null,
productName varchar(100)not null,
productPrice decimal(10,2) not null,
productAmount int not null,
productDescription text,
productStatus varchar(50)
);

insert into Products(productCode,productName, productPrice,productAmount,productDescription,productStatus) values
('P001', 'Laptop Dell XPS 13', 25000000.00, 10, 'Laptop cao cấp mỏng nhẹ', 'Active'),
('P002', 'MacBook Air M2', 28000000.00, 15, 'Laptop Apple chip M2', 'Active'),
('P003', 'iPhone 15 Pro', 24000000.00, 20, 'Điện thoại thông minh Apple', 'Active'),
('P004', 'Samsung Galaxy S24', 21000000.00, 8, 'Điện thoại Android flagship', 'Active'),
('P005', 'Tai nghe AirPods Pro', 5000000.00, 30, 'Tai nghe chống ồn không dây', 'Out of stock');

create unique index idx_productCode on products(productCode);

create index idx_name_price on products(productName,productPrice);

explain select *from products where productCode='P003';
explain select*from products where productName='iPhone 15 Pro'and productPrice=24000000.00;
