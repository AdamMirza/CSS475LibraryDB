-- Dumping data for table 'ACCOUNT'
INSERT INTO `ACCOUNT` (`Account_ID`, `Name`, `Password`, `Phone_num`, `Street`, `City`, `State`, `Zip`) VALUES
(123456781, 'Hien Nguyen', 'X2346781', '20642230XX', '123 6th', 'Melbourne', 'FL', 32904),
(123456782, 'Naruto Uzumaki', 'X23456782', '2064223000', '4 Goldfield Rd', 'Honolulu', 'HI', 96815),
(123456783, 'Shinichi Kudo', '123X56783', '2064223022', '71 Pilgrim Ave', 'Chevy Chase', 'MD', 20815);

-- Dumping data for table 'DEPARTMENT'
INSERT INTO `DEPARTMENT` (`Dept_ID`, `Dep_name`) VALUES
(1, 'UWS'),
(2, 'UWB'),
(3, 'UWT');

-- Dumping data for table 'EMPLOYEE'
INSERT INTO `EMPLOYEE` (`ID`, `Name`, `Dob`, `Sex`, `Street`, `City`, `State`, `Zip`, `SSN`, `Phone_num`, `Pay_rate`, `Position`, `Dep_ID`) VALUES
(555566601, 'Conan Edogawa', '2000-09-10', 'M', '44 Shirley Ave.  ', 'West Chicago', 'IL', 60185, 111311313, '2064223601', '15.00', 'Public Services Librarian', 1),
(666777123, 'Ran Mouri', '1995-08-10', 'F', '70 Bowman St. ', 'South Windsor', 'CT', 6074, 897687564, '2067886598', '21.50', 'Library Assistant Manager', 2),
(666777124, 'Kogoro Mouri', '1976-01-09', 'F', '70 Bowman St. ', 'South Windsor', 'CT', 6074, 897617162, '2067181198', '25.00', 'Circulation Supervisor', 2);

-- Dumping data for table 'RATE'
INSERT INTO `RATE` (`Name`, `Rate`) VALUES
('Book', '2.50'),
('DVD', '1.50');

-- Dumping data for table 'SUPERVISOR'
INSERT INTO `SUPERVISOR` (`Department_ID`, `Supervisor_ID`) VALUES
(1, 555566601);

-- Dumping data for table 'MEDIA'
INSERT INTO `MEDIA` (`Media_ID`, `Publisher`, `Publishing_year`, `Title`, `Author`, `Media_type`, `Inventory`) VALUES
(1000000007, 'SNL', 1945, 'Shadow of the Wind', 'CARLOS RUIZ ZAFON', 'Book', 8),
(1000000008, 'NAL', 1957, 'The Fountainhead', 'AYN RAND', 'Book', 10),
(1000000009, 'War and Peace', 1954, 'War and Peace', 'LEO TOLSTOY', 'Book', 5),
(1000000012, 'RockStar ', 2004, 'GTA Vice City', 'RockStar Developer', 'DVD', 100);

-- Dumping data for table 'CHECKOUT'
INSERT INTO `CHECKOUT` (`Account_ID`, `Media_ID`, `Checkout_date`, `Due_date`, `Renewals_left`, `Is_returned`) VALUES
(123456781, 1000000008, '2017-08-10', '2017-08-19', 5, 0),
(123456781, 1000000007, '2017-08-01', '2017-08-11', 3, 0);


-- Dumping data for table 'ON_HOLD'
INSERT INTO `ON_HOLD` (`Account_ID`, `Media_ID`, `Is_on_hold`, `Date`) VALUES
(123456782, 1000000007, 1, '2017-08-10');