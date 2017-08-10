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
) ;
