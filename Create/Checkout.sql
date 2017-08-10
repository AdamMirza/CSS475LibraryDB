CREATE TABLE CHECKOUT
(
	Account_ID 		INT(9)		NOT NULL,
	Media_ID 		INT(10)		NOT NULL,
	Checkout_date	DATE 		NOT NULL,
	Due_date		DATE 		NOT NULL,
	Renewals_left	INT(2)		NOT NULL,
	Is_returned		BOOLEAN		NOT NULL,   -- 0 for false, 1 for true

	CONSTRAINT FK_1 FOREIGN KEY(Account_ID) REFERENCES ACCOUNT(Account_ID),

	CONSTRAINT FK_2 FOREIGN KEY(Media_ID) REFERENCES MEDIA(Media_ID),
	ON UPDATE CASCADE,
	ON DELETE CASCADE,

	CONSTRAINT CHECK_DATE
		CHECK((Checkout_date <= Due_date) AND (Due_date >= Date())),

	CONSTRAINT CHECK_RENEWALS
		CHECK(Renewals_left > 0)
);