-- Tạo cơ sở dữ liệu freshcake
create database freshcake;
-- Dùng cơ sở dữ liệu
use freshcake;
-- Tạo bảng category
create table category
(
	id int primary key,
    name varchar(20)
);
-- Tạo bảng product
create table product
(
	id int primary key,
    name varchar(50),
    description longtext,
    price double,
    discount double,
    quantity int,
    thumbnail varchar(500),
    is_featured tinyint,
    status int,
    category_id int,
    foreign key (category_id) references category(id),
    create_at datetime,
    update_at datetime
);
-- Tạo bảng galery
create table galery
(
	id int primary key,
    thumbnail varchar(500),
    product_id int,
    foreign key (product_id) references product(id)
);
-- Tạo bảng role
create table `role`
(
	id int primary key,
    name varchar(50)
);
-- Tạo bảng user
create table `user`
(
	id int primary key,
    fullname varchar(100),
    username varchar(100),
    password varchar(100),
    email varchar(50),
    phonenumber varchar(13),
    address longtext,
    role_id int,
    foreign key (role_id) references `role`(id),
    status int
);
-- Tạo bảng order
create table `order`
(
	id int primary key,
    fullname varchar(100),
    email varchar(50),
    phonenumber varchar(13),
    address longtext,
    note longtext,
    orderdate datetime,
    status int,
    total int,
    user_id int,
    foreign key (user_id) references `user`(id)
);
-- Tạo bảng orderdetail
create table orderdetail
(
	id int primary key,
    price double,
    quantity int,
    total int,
    product_id int,
    foreign key (product_id) references product(id),
    order_id int,
    foreign key (order_id) references `order`(id)
);
-- Tạo bảng feedback
create table feedback
(
	id int primary key,
	fullname varchar(100),
    email varchar(50),
    subject varchar(50),
    message longtext,
    create_at datetime,
    status int,
    user_id int,
    foreign key (user_id) references `user`(id)
);
-- Tạo bảng wishlist
create table wishlist
(
	id int primary key,
    product_id int,
    foreign key (product_id) references product(id),
    user_id int,
    foreign key (user_id) references `user`(id)
);