DROP DATABASE IF EXISTS furama_management;

CREATE DATABASE furama_management;

USE furama_management;

CREATE TABLE position (
	position_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    position_name VARCHAR(50)
);

CREATE TABLE education (
	education_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    education_name VARCHAR(50)
);

CREATE TABLE type_of_customer (
	type_of_customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_of_customer_name VARCHAR(50)
);

CREATE TABLE type_of_rent (
	type_of_rent_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_of_rent_name VARCHAR(50)
);

CREATE TABLE type_of_service (
	type_of_service_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_of_service_name VARCHAR(50)
);

CREATE TABLE accompanied_service (
	accompanied_service_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    accompanied_service_name VARCHAR(50),
    price INT,
    unit INT,
    `status` VARCHAR(50)
);

CREATE TABLE part (
	part_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    part_name VARCHAR(50)
);

CREATE TABLE employee (
	employee_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50),
    position_id INT NOT NULL,
    education_id INT NOT NULL,
    part_id INT NOT NULL,
    date_of_birth DATE,
    identity_number VARCHAR(50),
    salary DOUBLE,
    phone_number VARCHAR(50),
    email VARCHAR(50),
    address VARCHAR(50),
	FOREIGN KEY (position_id) REFERENCES position (position_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (education_id) REFERENCES education(education_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (part_id) REFERENCES part(part_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE customer (
	customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_of_customer_id INT NOT NULL,
    customer_name VARCHAR(50),
    date_of_birth DATE,
	identity_number VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(50),
    address VARCHAR(50),
    FOREIGN KEY (type_of_customer_id) REFERENCES type_of_customer(type_of_customer_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE service (
	service_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    service_name VARCHAR(50),
    area INT,
    floor INT,
    amount_person_max INT,
    rent_cost INT,
    type_of_rent_id INT NOT NULL,
    type_of_service_id INT NOT NULL,
    `status` VARCHAR(50),
    FOREIGN KEY (type_of_rent_id) REFERENCES type_of_rent(type_of_rent_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (type_of_service_id) REFERENCES type_of_service(type_of_service_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE contract (
	contract_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    service_id INT NOT NULL,
    date_start_contract DATE,
    date_end_contract DATE,
    money_deposit INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (service_id) REFERENCES service(service_id) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE contract_detail (
	contract_detail_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    contract_id INT NOT NULL,
    accompanied_service_id INT NOT NULL,
    amount INT,
    FOREIGN KEY (contract_id) REFERENCES contract(contract_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (accompanied_service_id) REFERENCES accompanied_service(accompanied_service_id) ON UPDATE CASCADE ON DELETE CASCADE
    
);
SET GLOBAL FOREIGN_KEY_CHECKS = 0;
INSERT INTO employee (employee_name ,position_id ,education_id ,part_id,date_of_birth,identity_number,salary,phone_number,email,address)
VALUES ('Nguyễn Văn Hải', 1, 1, 3, '2002-07-21', '201723929', 5000000, '0923747238', 'hai@gmail.com', 'Đà Nẵng'),
		('Nguyễn Tùng', 2, 1, 3, '2000-03-10', '201792837', 7000000, '0932372646', 'tung@gmail.com', 'Đà Nẵng'),
		('Võ Trần Văn Khoa', 4, 3, 4, '1999-05-06', '201723984', 9000000,'0923762476', 'khoa@gmail.com', 'Quảng Trị');

INSERT INTO customer (type_of_customer_id,customer_name,date_of_birth,identity_number,phone_number,email,address)
VALUES (1, 'Ngô Nhật Minh', '2001-08-19', '201792384', '0923764293', 'minh@gmail.com', 'Da Nang'),
		(3, 'Trương Anh Quân', '2002-12-04', '201792384', '0923764293', 'quan@gmail.com', 'Hue'),
        (4, 'Nguyễn Tiến Danh', '2003-11-11', '201792384', '0923764293', 'danh@gmail.com', 'Quảng Bình'),
        (2, 'Nguyễn Thanh Lâm', '2002-03-12', '201792384', '0923764293', 'lam@gmail.com', 'Quảng Ngãi');

INSERT INTO contract (employee_id,customer_id,service_id,date_start_contract,date_end_contract,money_deposit)
VALUES (2, 4, 2, '2020-03-09', '2020-03-12', 700000),
		(3, 3, 4, '2018-06-23', '2018-08-21', 1200000),
		(2, 1, 5, '2021-12-08', '2022-01-05', 500000),
		(1, 2, 3, '2019-11-06', '2019-11-15', 1400000);
		
INSERT INTO service (service_name,area,floor,amount_person_max,rent_cost,type_of_rent_id,type_of_service_id,`status`)
VALUES ('villa1', 240, 5, 12, 10000000, 1, 1, 'Khả dụng'),
		('villa2', 200, 5, 10, 9000000, 1, 1, 'Khả dụng'),
		('house1', 100, 5, 5, 5000000, 1, 2, 'Khả dụng'),
		('room1', 40, 5, 3, 3000000, 1, 3, 'không Khả dụng');

INSERT INTO contract_detail (contract_id,accompanied_service_id,amount)
VALUES (1, 2, 3),
		(2, 3, 2),
		(3, 4, 5),
		(4, 3, 10),
		(5, 1, 4);

INSERT INTO position (position_name)
VALUES ('lễ tân'),
		('phục vụ'),
        ('chuyên viên'),
        ('giám sát'),
        ('quản lý'),
        ('giám đốc');
   
INSERT INTO part (part_name)
VALUES ('Sale – Marketing'),
		('Hành Chính'),
		('Phục vụ'),
		('Quản lý');
INSERT INTO education (education_name)
VALUES ('Trung cấp'),
		('Cao đẳng'),
		('Đại học'),
		('sau đại học');
        
INSERT INTO type_of_customer (type_of_customer_name)
VALUES ('Diamond'),      
		('Platinium'), 
		('Gold'), 
		('Silver'), 
		('Member'); 
        
INSERT INTO type_of_service (type_of_service_name)
VALUES ('villa'),
		('house'),
		('room');

INSERT INTO type_of_rent (type_of_rent_name)
VALUES ('ngày'),
		('tháng'),
		('năm');

INSERT INTO accompanied_service ( accompanied_service_name,price,unit)
VALUES ('massage', 200000, 1),
		('karaoke', 50000, 2),
		('thức ăn', 100000, 2),
		('nước uống', 40000, 3),
		('thuê xe di chuyển tham quan resort', 240000, 1);