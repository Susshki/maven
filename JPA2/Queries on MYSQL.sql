DROP TABLE MYDB.ID_GEN;
DROP TABLE MYDB.EMPLOYEE;

CREATE TABLE MYDB.ID_GEN(
	GEN_NAME VARCHAR(30) PRIMARY KEY,
	GEN_ID INT(20)
);

CREATE TABLE MYDB.EMPLOYEE(
	EMPLOYEE_ID INT(10) PRIMARY KEY,
	FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(20),
    EMAIL_ADDRESS VARCHAR(30),
    EMPOLYMENT_TYPE VARCHAR(10)    
);

CREATE TABLE MYDB.CUSTOMER(
	CUSTOMER_ID INT(10) PRIMARY KEY AUTO_INCREMENT,
	CUSTOMER_NAME VARCHAR(30),
    EMAIL VARCHAR(30)   
);

SELECT * from MYDB.ID_GEN;
SELECT * from MYDB.EMPLOYEE;
SELECT * from MYDB.CUSTOMER;
SELECT * from MYDB.USER;

DROP TABLE MYDB.USER;
CREATE TABLE MYDB.USER(
	USER_ID INT(10) PRIMARY KEY AUTO_INCREMENT,
	USER_NAME VARCHAR(30),
    USER_EMAIL VARCHAR(30)   
);

DROP TABLE MyDB.PRODUCT;
CREATE TABLE MYDB.PRODUCT(
	PRODUCT_ID INT(10) PRIMARY KEY,
    PRODUCT_NAME VARCHAR(30),
    PRODUCT_DESC VARCHAR(30),
    PRICE DOUBLE(9,2)    
);

SELECT * from MYDB.PRODUCT;
INSERT INTO MYDB.PRODUCT VALUES(1, "iWatch", "Watch for everyone!", 300.00);
INSERT INTO MYDB.PRODUCT VALUES(2, "iPhone", "Phone for everyone!", 700.00);
INSERT INTO MYDB.PRODUCT VALUES(3, "Washer", "Washer for everyone!", 1000.00);
INSERT INTO MYDB.PRODUCT VALUES(4, "Dryer", "Dryer for everyone!", 800.00);
INSERT INTO MYDB.PRODUCT VALUES(5, "Refridgerator", "Refridgerator for everyone!", 2000.00);

select product_id , product_desc, product_name, price from 
mydb.product where 
price=700;

