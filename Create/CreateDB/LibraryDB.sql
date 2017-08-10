BEGIN TRANSACTION;
CREATE TABLE SUPERVISOR
(
	Department_ID	INT(4)		NOT NULL,
	Supervisor_ID	INT(10)		NOT NULL,
	
	FOREIGN KEY(Department_ID)
		REFERENCES DEPARTMENT(Dept_ID),
	FOREIGN KEY(Supervisor_ID)
		REFERENCES EMPLOYEE(ID)
);
CREATE TABLE RATE
(
	MediaType			VARCHAR(255)		NOT NULL,
	Late_fee_date		DECIMAL(5, 2)		NOT NULL,
	
	PRIMARY KEY (MediaType)
);
CREATE TABLE ON_HOLD
(
	Account_ID	INT(9)			NOT NULL,
	Media_ID	INT(10)			NOT NULL,
	Is_on_hold	BOOLEAN			NOT NULL,
	Date		DATE			NOT NULL,

	FOREIGN KEY(Account_ID)
		REFERENCES ACCOUNT(Account_ID),

	FOREIGN KEY(Media_ID)
		REFERENCES MEDIA(Media_ID)
);
CREATE TABLE MEDIA
(
	Media_ID			INT(10)			NOT NULL,
	Publisher			VARCHAR(50)		NOT NULL,
	Publishing_year		INT(4)			NOT NULL,
	Title				VARCHAR(100)	NOT NULL,
	Author				VARCHAR(250)	NOT NULL,
	Media_type			VARCHAR(20)		NOT NULL,
	Inventory			INT				NOT NULL,

    PRIMARY KEY (Media_ID),
    CONSTRAINT FK_1 FOREIGN KEY(Media_type) REFERENCES Rate(Media_type),

	CONSTRAINT CHECK_PYEAR
		CHECK(Publishing_year >= 1500 AND Publishing_year <= strftime('%Y','now')),

	CONSTRAINT CHECK_INVENTORY
		CHECK(Inventory >= 0)
);
CREATE TABLE EMPLOYEE
(
	ID          INT(10)        NOT NULL,
	Name        VARCHAR(50)    NOT NULL,
	Dob         Date           NOT NULL,
	Sex         VARCHAR(1)     NOT NULL,
	Street      VARCHAR(50)    NOT NULL,
	City        VARCHAR(50)    NOT NULL,
	State       VARCHAR(3)     NOT NULL,
	Zip         INT(5)         NOT NULL,
	SSN         INT(9)         NOT NULL,
	Phone_num  	VARCHAR(10)    NOT NULL,
	Pay_rate    DECIMAL(4,2)   NOT NULL,
	Position    VARCHAR(50)    NOT NULL,
	Dep_ID      INT(4)         NOT NULL,
        	
	PRIMARY KEY (ID),
	
	FOREIGN KEY(Dep_ID) REFERENCES DEPARTMENT(Dept_ID),
	
	CONSTRAINT CHECK_SEX
		CHECK(Sex = 'F' OR Sex = 'M' OR Sex = 'U'),    -- U for employees not wishing to disclose their gender

	CONSTRAINT CHECK_DEP_ID
		CHECK(Dep_ID >= 0001 AND Dep_ID <= 9999),

	CONSTRAINT CHECK_STATE
		CHECK (State in ('AL','AK', 'AZ', 'AR', 'CA', 'CO', 'CT',
		'DE', 'FL', 'GA','HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME',
		'MD', 'MH','MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM',
		'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX',
		'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY', 'AS', 'DC', 'FM', 'GU', 'MH',
		'MP', 'PW', 'PR', 'VI', 'AE', 'AA', 'AE', 'AP')),

		
	CONSTRAINT VALID_AGE
		CHECK(Dob < date('now', '-16 year'))
);
CREATE TABLE DEPARTMENT
(
	Dept_ID			INT(4)			NOT NULL,
	Dep_name		VARCHAR(50)		NOT NULL,

	PRIMARY KEY (Dept_ID)
);
CREATE TABLE CHECKOUT
(
	Account_ID 		INT(9)		NOT NULL,
	Media_ID 		INT(10)		NOT NULL,
	Checkout_date	DATE 		NOT NULL,
	Due_date		DATE 		NOT NULL,
	Renewals_left	INT(2)		NOT NULL,
	Is_returned		BOOLEAN		NOT NULL,   -- 0 for false, 1 for true

	CONSTRAINT FK_1 FOREIGN KEY(Account_ID) REFERENCES ACCOUNT(Account_ID)
		ON UPDATE CASCADE
		ON DELETE CASCADE,

	CONSTRAINT FK_2 FOREIGN KEY(Media_ID) REFERENCES MEDIA(Media_ID)
		ON UPDATE CASCADE
		ON DELETE CASCADE,

	CONSTRAINT CHECK_DATE
		CHECK((Checkout_date <= Due_date) AND (Due_date >= Date())),

	CONSTRAINT CHECK_RENEWALS
		CHECK(Renewals_left > 0)
);
CREATE TABLE ACCOUNT
(
	Account_ID	INT(9)		NOT NULL,  
	Name		VARCHAR(255)	NOT NULL,
	Password	VARCHAR(20)		NOT NULL,
	Phone_num	VARCHAR(10)	NOT NULL,
	Street		VARCHAR(30)	NOT NULL,
	City		VARCHAR(20)	NOT NULL,
	State		VARCHAR(2)	NOT NULL,
	Zip		INT(5)		NOT NULL,

	PRIMARY KEY (Account_ID),

	CONSTRAINT CHECK_STATE
		CHECK (State in ('AL','AK', 'AZ', 'AR', 'CA', 'CO', 'CT',
		'DE', 'FL', 'GA','HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME',
		'MD', 'MH','MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM',
		'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX',
		'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY', 'AS', 'DC', 'FM', 'GU', 'MH',
		'MP', 'PW', 'PR', 'VI', 'AE', 'AA', 'AE', 'AP'))
);
COMMIT;
