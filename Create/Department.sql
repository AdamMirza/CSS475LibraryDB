CREATE TABLE DEPARTMENT
(
	Dept_ID			INT			NOT NULL,
	Dep_name		VARCHAR(50)		NOT NULL,

	PRIMARY KEY (Dept_ID),
	
	CONSTRAINT ID_LENGTH
		CHECK (length(Dept_ID) >= 1 AND length(Dept_ID) <= 4)
);
