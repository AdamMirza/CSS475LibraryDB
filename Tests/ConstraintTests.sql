

----- BELOW SHOULD FAIL ---------
-- EMPLOYEE CONSTRAINT CHECK--
INSERT INTO EMPLOYEE VALUES(3651310,'Jake Keser','1995-05-06','T','624 343rd AVE SE','Bothell','YY',93665,528787545,'206-764-6211',1200.60,'Supervisor',99
);

INSERT INTO EMPLOYEE VALUES(3651310,'Jake Keser','2002-05-06',’F’,'624 343rd AVE SE','Bothell','YY',93665,528787545,'206-764-6211',1200.60,'Supervisor',99
);

--- ACCOUNT CONSTRAINT CHECK--
INSERT INTO `ACCOUNT` (`Account_ID`, `Name`, `Password`, `Phone_num`, `Street`, `City`, `State`, `Zip`) VALUES
(123456780, 'Hien Nguyen', 'X2346781', '20642230XX', '123 6th', 'Melbourne', 'YY', 32904);

INSERT INTO ACCOUNT VALUES (123456781, 'Hien Nguyen', 'X346', '20642230XX', '123 6th', 'Melbourne', 'FL', 32904)

-- MEDIA CONSTRAINT CHECK--
INSERT INTO `MEDIA` (`Media_ID`, `Publisher`, `Publishing_year`, `Title`, `Author`, `Media_type`, `Inventory`) VALUES
(1100000007, 'SNL', 1945, 'Shadow of the Wind', 'CARLOS RUIZ ZAFON', 'Fiction Classics', -1);

INSERT INTO MEDIA VALUES (1000011112, 'RockStar ', 1400, 'GTA Vice City', 'RockStar Developer', 'DVD', 100);