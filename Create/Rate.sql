CREATE TABLE RATE
(
	MediaType			VARCHAR(255)		NOT NULL,
	Late_fee_rate		DECIMAL(5, 2)		NOT NULL,
	
	PRIMARY KEY (MediaType)
);