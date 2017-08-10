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
