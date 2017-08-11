----- BELOW SHOULD FAIL ---------
-- EMPLOYEE CONSTRAINT CHECK--
INSERT INTO EMPLOYEE VALUES(3651310123,'Jake Keser','1995-05-06','T','624 343rd AVE SE','Bothell','WA',93665,528787545,'206-764-6211',1200.60,'Supervisor',99
);

INSERT INTO EMPLOYEE VALUES(3651310123,'Jake Keser','2002-05-06','F','624 343rd AVE SE','Bothell','WA',93665,528787545,'206-764-6211',1200.60,'Supervisor',99
);

INSERT INTO EMPLOYEE VALUES(1234,'Jake Keser','2002-05-06','F','624 343rd AVE SE','Bothell','WA',93665,528787545,'206-764-6211',1200.60,'Supervisor',99
);

INSERT INTO EMPLOYEE VALUES(1234567890,'Jake Keser','2002-05-06','F','624 343rd AVE SE','Bothell','WA',936,528787545,'206-764-6211',1200.60,'Supervisor',99
);

INSERT INTO EMPLOYEE VALUES(1234567890,'Jake Keser','2002-05-06','F','624 343rd AVE SE','Bothell','WA',936,5287,'206-764-6211',1200.60,'Supervisor',99
);

--- ACCOUNT CONSTRAINT CHECK--
INSERT INTO 'ACCOUNT' ('Account_ID', 'Name', 'Password', 'Phone_num', 'Street', 'City', 'State', 'Zip') VALUES
(123456780, 'Hien Nguyen', 'X2346781', '20642230XX', '123 6th', 'Melbourne', 'YY', 32904);

INSERT INTO ACCOUNT VALUES (123456781, 'Hien Nguyen', 'X346', '20642230XX', '123 6th', 'Melbourne', 'FL', 32904);

INSERT INTO ACCOUNT VALUES (1234, 'Hien Nguyen', 'X346', '20642230XX', '123 6th', 'Melbourne', 'FL', 32904);

INSERT INTO ACCOUNT VALUES (123456781, 'Hien Nguyen', 'X346', '20642230XX', '123 6th', 'Melbourne', 'FL', 32904890);
-- MEDIA CONSTRAINT CHECK--
INSERT INTO 'MEDIA' ('Media_ID', 'Publisher', 'Publishing_year', 'Title', 'Author', 'Media_type', 'Inventory') VALUES
(1100000007, 'SNL', 1945, 'Shadow of the Wind', 'CARLOS RUIZ ZAFON', 'Book', -1);

INSERT INTO MEDIA VALUES (1000011112, 'RockStar ', 1400, 'GTA Vice City', 'RockStar Developer', 'DVD', 100);

INSERT INTO MEDIA VALUES (10000111129, 'RockStar ', 1400, 'GTA Vice City', 'RockStar Developer', 'DVD', 100);


-- EMPLOYEE CONSTRAINT CHECK--
INSERT INTO EMPLOYEE ('ID', 'Name', 'Dob', 'Sex', 'Street', 'City', 'State', 'Zip', 'SSN', 'Phone_num', 'Pay_rate', 'Position', 'Dep_ID') VALUES
(5115566601, 'Conan Edogawa', '2016-09-10', 'M', '44 Shirley Ave.  ', 'West Chicago', 'IL', 60185, 111311313, '2064223601', '15.00', 'Public Services Librarian', 1);

INSERT INTO EMPLOYEE VALUES
(51155666011234, 'Conan Edogawa', '1980-09-10', 'M', '44 Shirley Ave.  ', 'West Chicago', 'IL', 60185, 111311313, '2064223601', '15.00', 'Public Services Librarian', 1);

INSERT INTO EMPLOYEE VALUES
(5115566601, 'Conan Edogawa', '1980-09-10', 'M', '44 Shirley Ave.  ', 'West Chicago', 'IL', 601, 111311313, '2064223601', '15.00', 'Public Services Librarian', 1);

INSERT INTO EMPLOYEE VALUES
(5115566601, 'Conan Edogawa', '1980-09-10', 'M', '44 Shirley Ave.  ', 'West Chicago', 'IL', 60185, 11131131, '2064223601', '15.00', 'Public Services Librarian', 1);