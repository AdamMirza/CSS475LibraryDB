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

	CONSTRAINT CHECK_PYEAR
		CHECK(Publishing_year >= 1500 AND Publishing_year <= strftime('%Y','now'))

	CONSTRAINT CHECK_INVENTORY
		CHECK(Inventory >= 0)
);