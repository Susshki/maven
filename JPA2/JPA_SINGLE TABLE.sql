drop TABLE PAYMENT;
CREATE TABLE PAYMENT(
	PAYMENT_ID int(10) PRIMARY KEY,
    AMOUNT double(8,2),
    PMODE VARCHAR(10),
    CARD_NUMBER VARCHAR(30),
    CHECK_NUMBER varchar (30)
);

select * from PAYMENT