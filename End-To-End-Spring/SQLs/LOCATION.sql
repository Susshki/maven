use mydb2;

CREATE TABLE LOCATION(
	LOCATION_ID INTEGER PRIMARY KEY,
    LOCATION_CODE VARCHAR(5),
    LOCATION_NAME VARCHAR(30),
    LOCATION_TYPE  VARCHAR(20)
);

select * from LOCATION;