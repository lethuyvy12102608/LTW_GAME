-- Create the gamestore database
CREATE DATABASE IF NOT EXISTS gamestore;
USE gamestore;

-- Create the Account table
CREATE TABLE IF NOT EXISTS account (
    id INT AUTO_INCREMENT PRIMARY KEY,
    role VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    fullName VARCHAR(255),
    phone VARCHAR(15),
    address VARCHAR(255),
    status BOOLEAN
);


-- Create the Cart table
CREATE TABLE IF NOT EXISTS cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    status BOOLEAN
   
);



-- Create the Category table
CREATE TABLE IF NOT EXISTS category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    description VARCHAR(255),
    status BOOLEAN
);
-- Create the Product table
CREATE TABLE IF NOT EXISTS product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    title VARCHAR(255),
    description VARCHAR(255),
    detail TEXT,
    image VARCHAR(255),
    price DOUBLE,
    discount DOUBLE,
    status BOOLEAN
   
);
-- Create the Order table
CREATE TABLE IF NOT EXISTS orderTable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    fullName VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(15),
    orderDate DATE,
    totalAmount DOUBLE,
    progress VARCHAR(255),
    note VARCHAR(255),
    image VARCHAR(255),
    status BOOLEAN
   
);

-- Create the OrderItem table
CREATE TABLE IF NOT EXISTS orderItem (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    price DOUBLE,
    discount DOUBLE,
    quantity INT
  
);

-- Create the CartItem table
CREATE TABLE IF NOT EXISTS cartItem (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cart_id INT,
    product_id INT,
    quantity INT,
    status BOOLEAN,
    FOREIGN KEY (cart_id) REFERENCES cart(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- Insert data into account
INSERT INTO account (role, email, password, fullName, phone, address, status) VALUES
('user', 'user1@.com', '123', 'Nguyễn Văn A', '1234567890', '123 Đường ABC', 1),
('user', 'admin@.com', '123', 'Admin Người dùng', '9876543210', '456 Đường Quản trị', 1),
('user', 'user2@.com', '123', 'Trần Thị B', '555-555-5555', '789 Đường XYZ', 1),
('user', 'user3@.com', '123', 'Lê Văn C', '111-222-3333', '567 Đường LMN', 1),
('admin', 'admin4@.com', '456', 'Nguyễn Thị D', '333-444-5555', '678 Đường GHI', 1),
('admin', 'admin5@.com', '456', 'Phạm Văn E', '999-888-7777', '910 Đường KLM', 1),
('admin', 'admin6@.com', '456', 'Lê Thị F', '444-333-2222', '111 Đường PQR', 1),
('user', 'user7@.com', '123', 'Võ Văn G', '666-777-8888', '121 Đường UVW', 1),
('user', 'user8@.com', '123', 'Trần Văn H', '123-456-7890', '131 Đường XYZ', 1),
('user', 'user9@.com', '123', 'Hoàng Thị I', '777-888-9999', '141 Đường ABC', 1);

-- Insert data into category
INSERT INTO category (title, description, status) VALUES
('Hành động', 'Trò chơi với gameplay hấp dẫn', 1),
('Phiêu lưu', 'Trò chơi phiêu lưu hấp dẫn', 1),
('Chiến thuật', 'Trò chơi đòi hỏi tư duy chiến thuật', 1),
('Mô phỏng', 'Mô phỏng các hoạt động thực tế', 1),
('RPG', 'Trò chơi nhập vai với cốt truyện hấp dẫn', 1);

-- Insert data into product
INSERT INTO product (category_id, title, description, detail, image, price, discount, status) VALUES
(1, 'Game1', 'Trò chơi Hành động hấp dẫn', 'Mô tả cho Game1', 'game1.jpg', 29.99, 0, 1),
(2, 'Game2', 'Trò chơi Phiêu lưu đỉnh cao', 'Mô tả cho Game2', 'game2.jpg', 39.99, 0.1, 1),
(3, 'Game3', 'Trò chơi Chiến thuật nảy sóng', 'Mô tả cho Game3', 'game3.jpg', 49.99, 0.2, 1),
(4, 'Game4', 'Trò chơi Mô phỏng thực tế', 'Mô tả cho Game4', 'game4.jpg', 19.99, 0, 1),
(5, 'Game5', 'Trải nghiệm RPG sống động', 'Mô tả cho Game5', 'game5.jpg', 59.99, 0.15, 1),
(1, 'Game6', 'Cuộc phiêu lưu hành động', 'Mô tả cho Game6', 'game6.jpg', 34.99, 0.05, 1),
(2, 'Game7', 'Chinh phục thế giới phiêu lưu', 'Mô tả cho Game7', 'game7.jpg', 44.99, 0.12, 1),
(3, 'Game8', 'Đánh bại kẻ thù chiến thuật', 'Mô tả cho Game8', 'game8.jpg', 54.99, 0.18, 1),
(4, 'Game9', 'Trải nghiệm thế giới mô phỏng', 'Mô tả cho Game9', 'game9.jpg', 24.99, 0.08, 1),
(5, 'Game10', 'Tham gia cuộc phiêu lưu RPG', 'Mô tả cho Game10', 'game10.jpg', 64.99, 0.2, 1);

-- Insert data into cart
INSERT INTO cart (account_id, status) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

INSERT INTO cartItem (cart_id, product_id, quantity, status) VALUES
(1, 1, 2, 1),
(2, 2, 1, 1),
(3, 3, 3, 1),
(4, 4, 1, 1),
(5, 5, 2, 1),
(6, 6, 3, 1),
(7, 7, 2, 1),
(8, 8, 1, 1),
(9, 9, 2, 1),
(10, 10, 3, 1);



-- Insert data into orderTable
INSERT INTO orderTable (account_id, fullName, address, phone, orderDate, totalAmount, progress, note, image, status) VALUES
(1, 'Nguyễn Văn A', '123 Đường ABC', '1234567890', '2023-01-10', 29.99, 'Đã giao', 'Đơn hàng xử lý thành công', 'order1.jpg', 1),
(2, 'Admin Người dùng', '456 Đường Quản trị', '9876543210', '2023-01-11', 39.99, 'Đã giao', 'Cảm ơn bạn đã mua hàng', 'order2.jpg', 1),
(3, 'Trần Thị B', '789 Đường XYZ', '555-555-5555', '2023-01-12', 49.99, 'Đang xử lý', 'Đơn hàng đang được chuẩn bị', 'order3.jpg', 1);


INSERT INTO orderItem (order_id, product_id, price, discount, quantity) VALUES
(1, 1, 29.99, 0, 2),
(2, 2, 39.99, 0.1, 1),
(3, 3, 49.99, 0.2, 3);