use mydb2;

DROP TABLE USER;
CREATE TABLE USER(
ID INTEGER  AUTO_INCREMENT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
EMAIL VARCHAR(30),
PASSCODE VARCHAR(100),
PHONE VARCHAR(10),
UNIQUE KEY (EMAIL),
PRIMARY KEY (ID)
);
SELECT * from USER;

CREATE TABLE FLIGHT(
ID INT NOT NULL auto_increment,
FLIGHT_NUMBER VARCHAR(5),
AIRLINES VARCHAR(20),
DEPARTURE_CITY VARCHAR(20),
ARRIVAL_CITY VARCHAR(20),
DATE_OF_DEPARTURE DATE,
TIME_OF_DEPARTURE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ID)
);
SELECT * from FLIGHT;

DROP TABLE PASSENGER;

CREATE TABLE PASSENGER(
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(20),
MIDDLE_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
EMAIL VARCHAR(30),
PHONE VARCHAR(15),
PRIMARY KEY (ID)
);

SELECT * from PASSENGER;

DROP TABLE RESERVATION;
CREATE TABLE RESERVATION(
ID INT NOT NULL AUTO_INCREMENT,
CHECK_IN BOOLEAN DEFAULT FALSE,
NUMBER_OF_BAGS INT,
PASSENGER_ID INT,
FLIGHT_ID INT,
CREATED TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ID),
FOREIGN KEY (PASSENGER_ID) REFERENCES PASSENGER(ID) ON DELETE CASCADE,
FOREIGN KEY (FLIGHT_ID) REFERENCES FLIGHT(ID)
);

SELECT * FROM RESERVATION;


CREATE TABLE ROLE(
ID INT NOT NULL AUTO_INCREMENT,
NAME VARCHAR(20),
PRIMARY KEY(ID)
);

SELECT * FROM ROLE;
INSERT INTO ROLE VALUES(1, "ADMIN");
INSERT INTO ROLE VALUES(2, "USER");

DROP TABLE USER_ROLE;
CREATE TABLE USER_ROLE(
USER_ID INT NOT NULL,
ROLE_ID INT NOT NULL,
FOREIGN KEY (ROLE_ID) REFERENCES ROLE(ID),
FOREIGN KEY (USER_ID) REFERENCES USER(ID),
PRIMARY KEY (ROLE_ID, USER_ID)
);

SELECT * from USER_ROLE;
INSERT INTO USER_ROLE VALUES(1, 1);
INSERT INTO USER_ROLE VALUES(3, 2);
INSERT INTO USER_ROLE VALUES(4, 2);


DROP TABLE RESERVATION;
DROP TABLE PASSENGER;
DROP TABLE USER_ROLE;
DROP TABLE ROLE;
DROP TABLE FLIGHT;
DROP TABLE USER;


SELECT * FROM  FLIGHT;
SELECT * FROM RESERVATION;
SELECT * FROM PASSENGER;
SELECT * FROM USER;
SELECT * FROM USER_ROLE;
SELECT * FROM ROLE;










