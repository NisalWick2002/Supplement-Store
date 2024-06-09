-- Database creation (if not exists)
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'shop_db')
BEGIN
    CREATE DATABASE shop_db;
END
GO

USE shop_db;
GO

-- Table structure for table `cart`
IF OBJECT_ID('cart', 'U') IS NOT NULL
    DROP TABLE cart;
GO

CREATE TABLE cart (
    id int NOT NULL IDENTITY(1,1),
    user_id int NOT NULL,
    name varchar(100) NOT NULL,
    price int NOT NULL,
    quantity int NOT NULL,
    image varchar(100) NOT NULL,
    PRIMARY KEY (id)
);
GO

-- Table structure for table `message`
IF OBJECT_ID('message', 'U') IS NOT NULL
    DROP TABLE message;
GO

CREATE TABLE message (
    id int NOT NULL IDENTITY(1,1),
    user_id int NOT NULL,
    name varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    number varchar(12) NOT NULL,
    message varchar(500) NOT NULL,
    PRIMARY KEY (id)
);
GO

-- Table structure for table `orders`
IF OBJECT_ID('orders', 'U') IS NOT NULL
    DROP TABLE orders;
GO

CREATE TABLE orders (
    id int NOT NULL IDENTITY(1,1),
    user_id int NOT NULL,
    name varchar(100) NOT NULL,
    number varchar(12) NOT NULL,
    email varchar(100) NOT NULL,
    method varchar(50) NOT NULL,
    address varchar(500) NOT NULL,
    total_products varchar(1000) NOT NULL,
    total_price int NOT NULL,
    placed_on varchar(50) NOT NULL,
    payment_status varchar(20) NOT NULL DEFAULT 'pending',
    PRIMARY KEY (id)
);
GO

-- Table structure for table `products`
IF OBJECT_ID('products', 'U') IS NOT NULL
    DROP TABLE products;
GO

CREATE TABLE products (
    id int NOT NULL IDENTITY(1,1),
    name varchar(100) NOT NULL,
    price int NOT NULL,
    image varchar(100) NOT NULL,
    PRIMARY KEY (id)
);
GO

-- Table structure for table `users`
IF OBJECT_ID('users', 'U') IS NOT NULL
    DROP TABLE users;
GO

CREATE TABLE users (
    id int NOT NULL IDENTITY(1,1),
    name varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    password varchar(100) NOT NULL,
    user_type varchar(20) NOT NULL DEFAULT 'user',
    PRIMARY KEY (id)
);
GO
