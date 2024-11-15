use carweb2;

CREATE TABLE user (
  id int primary key NOT NULL AUTO_INCREMENT,
  username varchar(255) unique NOT NULL,
  password varchar(255) NOT NULL,
  fullname varchar(255) DEFAULT NULL,
  phone varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  status int NOT NULL,
  createddate datetime DEFAULT NULL,
  modifieddate datetime DEFAULT NULL,
  createdby varchar(255) DEFAULT NULL,
  modifiedby varchar(255) DEFAULT NULL
);

INSERT INTO user
VALUES 
(1,'nguyenvana','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyen van a',NULL,NULL,1,NULL,NULL,NULL,NULL),
(2,'nguyenvanb','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyen van b',NULL,NULL,1,NULL,NULL,NULL,NULL),
(3,'nguyenvanc','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyen van c',NULL,NULL,1,NULL,NULL,NULL,NULL),
(4,'nguyenvand','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','nguyen van d',NULL,NULL,1,NULL,NULL,NULL,NULL);

CREATE TABLE role (
  id int primary key NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  code varchar(255) NOT NULL,
  createddate datetime DEFAULT NULL,
  modifieddate datetime DEFAULT NULL,
  createdby varchar(255) DEFAULT NULL,
  modifiedby varchar(255) DEFAULT NULL
);

INSERT INTO role 
VALUES 
(1,'Quản lý','ADMIN',NULL,NULL,NULL,NULL),
(2,'Khách hàng','USER',NULL,NULL,NULL,NULL);

CREATE TABLE user_role (
  id int primary key NOT NULL AUTO_INCREMENT,
  role_id int NOT NULL,
  user_id int NOT NULL,
  createddate datetime DEFAULT NULL,
  modifieddate datetime DEFAULT NULL,
  createdby varchar(255) DEFAULT NULL,
  modifiedby varchar(255) DEFAULT NULL,
  KEY fk_user_role (user_id),
  KEY fk_role_user (role_id),
  CONSTRAINT fk_role_user FOREIGN KEY (role_id) REFERENCES role (id),
  CONSTRAINT fk_user_role FOREIGN KEY (user_id) REFERENCES user (id)
);

INSERT INTO user_role 
VALUES (1,1,1,NULL,NULL,NULL,NULL),
(2,2,2,NULL,NULL,NULL,NULL),
(3,2,3,NULL,NULL,NULL,NULL),
(4,2,4,NULL,NULL,NULL,NULL);

create table brands(
	id int primary key auto_increment,
    name varchar(255) not null
);

insert into brands (name)
values
('Vinfast'),
('Mazda'),
('KIA'),
('Toyota'),
('Ford'),
('Huyndai'),
('Honda'),
('Mitsubishi'),
('Nissan'),
('Mercedes'),
('BMW'),
('Lexus'),
('Audi'),
('Volvo'),
('Subaru'),
('Peugeot'),
('Volkswagen'),
('Suzuki'),
('Isuzu'),
('Jeep'),
('Porsche'),
('Land Rover');

create table cars(
	id int primary key auto_increment,
    name varchar(255) not null,
    model varchar(255),
    brand_id int,
    foreign key (brand_id) references brands(id),
    seat int,
    transmission nvarchar(255),
    year int,
    price int,
    engine nvarchar(255),
    fuel nvarchar(255),
    airbag int,
    consumption nvarchar(255),
    status enum ('new', 'old'),
    origin nvarchar(255)
);

insert into cars (name, model, brand_id, seat, transmission, year, price, engine, fuel, airbag, consumption, status, origin)
values
('VinFast VF5 Plus', 'SUV', 1, 5, 'TU_DONG', 2021, 468, 'Động cơ DIEN', 'DIEN', 6, '>300KM/lần sạc', 'new', 'Việt Nam'),
('All New Mazda 3 Deluxe', 'SEDAN', 2, 5, 'TU_DONG', 2019, 579, 'Skyactiv-G 1.5L', 'XANG', 7, '6.8L/100KM', 'old', 'Nhật Bản'),
('All New Mazda 3 Sport Luxury', 'HATCHBACK', 2, 5, 'TU_DONG', 2022, 639, 'Skyactiv-G 1.5L', 'XANG', 7, '5.98L/100KM', 'new', 'Thái Lan'),
('New KIA Morning X-Line', 'HATCHBACK', 3, 5, 'TU_DONG', 2020, 424, 'Kappa 1.25L', 'XANG', 2, '6L/100KM', 'old', 'Việt Nam'),
('New KIA Carnival 2.2D Luxury 8S', 'MPV', 3, 8, 'TU_DONG', 2024, 1299, 'Smartstream 2.2D', 'DAU', 7, '6.5L/100KM', 'new', 'Hàn Quốc'),
('Toyota Wigo E', 'HATCHBACK', 4, 5, 'SO_SAN', 2021, 360, '3NR-VE', 'XANG', 2, '5.14L/100KM', 'old', 'Việt Nam'),
('Toyota Innova Cross', 'MPV', 4, 8, 'TU_DONG', 2023, 810, 'M20A-FKS', 'XANG', 6, '9.75L/100KM', 'new', 'Việt Nam'),
('Toyota Hilux 2.4L 4x4 MT', 'PICKUP', 4, 5, 'SO_SAN', 2024, 668, '2GD-FTV 2.4L', 'DAU', 5, '7L/100KM', 'old', 'Việt Nam'),
('Ford Everest Ambiente 2.0L AT 4x2', 'SUV', 5, 7, 'TU_DONG', 2020, 1099, 'Single Turbo Diesel 2.0L', 'DAU', 7, '8.51L/100KM', 'new', 'Thái Lan'),
('Ford Ranger XL 2.0L 4x4 MT', 'PICKUP', 5, 5, 'SO_SAN', 2023, 669, 'Turbo Diesel 2.0L', 'DAU', 6, '8L/100KM', 'old', 'Thái Lan'),
('Hyundai Grand i10 HATCHBACK 1.2 MT', 'HATCHBACK', 6, 5, 'SO_SAN', 2024, 360, 'I4', 'XANG', 2, '6.3L/100KM', 'new', 'Ấn Độ'),
('Hyundai Stargazer', 'MPV', 6, 7, 'TU_DONG', 2022, 489, 'SmartStream G2.5', 'XANG', 2, '6.28L/100KM', 'old', 'Ấn Độ'),
('Honda Civic Type R', 'HATCHBACK', 7, 5, 'TU_DONG', 2023, 2399, 'I4', 'XANG', 8, '8.6L/100KM', 'new', 'Nhật Bản'),
('New Mitsubishi Pajero Sport Diesel 4x2 AT', 'SUV', 8, 7, 'TU_DONG', 2024, 1130, 'MIVEC 2.4L', 'DAU', 6, '8.4L/100KM', 'old', 'Thái Lan'),
('Mitsubishi Triton 2WD AT GLX', 'PICKUP', 8, 5, 'TU_DONG', 2022, 655, 'MIVEC Turbo Diesel 2.4', 'DAU', 3, '10L/100KM', 'new', 'Thái Lan'),
('Nissan Kicks e-Power E', 'SUV', 9, 5, 'TU_DONG', 2023, 789, '1.2L Hybrid E-Power', 'XANG', 2, '4.6L/100KM', 'old', 'Nhật Bản'),
('Mercedes-AMG C63 S E Performance', 'SEDAN', 10, 4, 'TU_DONG', 2024, 4900, '2.0L', 'XANG', 6, '12L/100KM', 'new', 'Đức'),
('BMW 730Li M-Sport', 'SEDAN', 11, 4, 'TU_DONG', 2023, 3919, 'B48 2.0L', 'XANG', 6, '6.6L/100KM', 'old', 'Đức'),
('Lexus ES 250 F Sport', 'SEDAN', 12, 4, 'TU_DONG', 2022, 2710, 'I4', 'XANG', 10, '7.1L/100KM', 'new', 'Nhật Bản'),
('Audi Q2 35 TFSI COD', 'SUV', 13, 5, 'TU_DONG', 2022, 1590, 'I4 1.4L', 'XANG', 6, '7.56L/100KM', 'old', 'Đức'),
('Volvo XC90 Ultimate', 'SUV', 14, 4, 'TU_DONG', 2021, 4050, 'I4 2.0L', 'XANG', 7, '12.95L/100KM', 'new', 'Thuỵ Điển'),
('Subaru WRX Wagon 2.4 CVT tS EyeSight', 'SEDAN', 15, 5, 'SO_SAN', 2022, 2079, '2.4L', 'XANG', 7, '10.2L/100KM', 'old', 'Nhật Bản'),
('New Peugeot 5008 AL', 'SUV', 16, 7, 'TU_DONG', 2020, 1084, 'THP 1.6L', 'XANG', 6, '6.87L/100KM', 'new', 'Pháp'),
('Volkswagen Polo HATCHBACK 1.6L', 'HATCHBACK', 17, 5, 'TU_DONG', 2022, 695, 'I4', 'XANG', 2, '7.41L/100KM', 'old', 'Ấn Độ'),
('Suzuki XL7 Hybrid', 'MPV', 18, 7, 'TU_DONG', 2021, 608, 'K15B', 'XANG', 2, '6.6L/100KM', 'new', 'Việt Nam'),
('Suzuki Ertiga Hybrid MT', 'MPV', 18, 7, 'SO_SAN', 2020, 538, 'K15B', 'XANG', 2, '6.41L/100KM', 'old', 'Việt Nam'),
('Isuzu D-Max', 'PICKUP', 19, 5, 'TU_DONG', 2021, 880, 'RZ4E - TC', 'XANG', 7, '7.7L/100KM', 'new', 'Việt Nam'),
('Jeep RAM 1500 Laramie', 'PICKUP', 20, 5, 'TU_DONG', 2020, 5388, 'V8 5.7L', 'XANG', 7, '17.43L/100KM', 'old', 'Mỹ'),
('Porsche Panamera', 'SEDAN', 21, 4, 'TU_DONG', 2023, 6250, 'V6', 'XANG', 8, '7L/100KM', 'new', 'Đức'),
('Range Rover SE 3.0', 'SUV', 22, 5, 'TU_DONG', 2024, 25509, 'I6', 'XANG', 8, '7L/100KM', 'old', 'Anh');

create table test_drive(
	id int primary key auto_increment,
    user_id int,
    foreign key (user_id) references user(id),
    car_id int,
    foreign key (car_id) references cars(id),
    date date,
    status enum('pending', 'confirmed', 'completed', 'cancelled') default 'pending',
    drive_time int ,
	created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);

create table warranty(
	id int primary key auto_increment,
    user_id int,
    foreign key (user_id) references user(id),
    car_id int,
    foreign key (car_id) references cars(id),
    start_date date,
    end_date date,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);
