-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 03:20 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleetmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_master`
--

CREATE TABLE `area_master` (
  `Area_ID` int(3) NOT NULL,
  `Area_Name` varchar(15) NOT NULL,
  `City_ID` int(3) NOT NULL,
  `Pincode` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_master`
--

INSERT INTO `area_master` (`Area_ID`, `Area_Name`, `City_ID`, `Pincode`) VALUES
(2, 'fdsdf', 1, 454),
(5, 'bapunagar', 1, 1),
(7, 'fdsdf', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `city_master`
--

CREATE TABLE `city_master` (
  `City_ID` int(3) NOT NULL,
  `City_Name` varchar(15) NOT NULL,
  `State_ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_master`
--

INSERT INTO `city_master` (`City_ID`, `City_Name`, `State_ID`) VALUES
(0, 'jamnagar', 1),
(1, 'Ahmedabad', 1),
(2, 'Mumbai', 2),
(3, 'Chandigarh', 3),
(4, 'Amritsar', 4),
(6, 'Dispur', 6),
(7, 'kurukshetra', 4),
(8, 'kolhapur', 2),
(9, 'deldar', 2),
(11, 'kheda', 6);

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE `company_master` (
  `Company_ID` int(3) NOT NULL,
  `Company_Name` varchar(25) NOT NULL,
  `Contact_No` int(12) NOT NULL,
  `Company_Address` varchar(50) NOT NULL,
  `Company_Email` varchar(25) NOT NULL,
  `Pincode` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`Company_ID`, `Company_Name`, `Contact_No`, `Company_Address`, `Company_Email`, `Pincode`) VALUES
(1, 'jka', 45, 'jka', 'jka', 45),
(2, 'jka', 45, 'jka', 'shekhar456@gmail.com', 45),
(3, 'jka', 45, 'jka', 'shek@12gmail.com', 4587),
(4, 'jka', 45, 'jka', 'shek@12gmail.com', 4587),
(5, 'adalaj', 456, 'naroda', 'shek@12gmail.com', 4587),
(6, 'adalaj', 456, 'naroda', 'shek@12gmail.com', 4587),
(7, 'jigna', 8989, 'naroda nava', 'sheksuthar@12gmail.com', 45587);

-- --------------------------------------------------------

--
-- Table structure for table `driver_master`
--

CREATE TABLE `driver_master` (
  `Driver_ID` int(3) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `Age` int(3) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Landmark` varchar(30) NOT NULL,
  `Road` varchar(30) NOT NULL,
  `City_ID` int(3) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Mobile_No` int(12) NOT NULL,
  `License_Photo` varchar(100) NOT NULL,
  `Driver_Photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_master`
--

INSERT INTO `driver_master` (`Driver_ID`, `First_Name`, `Last_Name`, `dob`, `Age`, `Address`, `Landmark`, `Road`, `City_ID`, `Gender`, `Mobile_No`, `License_Photo`, `Driver_Photo`) VALUES
(5, 'sdfsd', 'sfd', '2018-11-19', 3, 'fdgd', 'dfgdfg', 'dfgdfg', 33, 'gfag', 45, 'daf', 'safff'),
(32, 'ere', 'sdfsf', '2018-11-27', 0, 'sdf', 'sdfsf', 's', 1, '', 4545, 'how-lcd-projector-works.jpg', ''),
(36, 'rtrtrtr', 'grr', '0000-00-00', 0, 'rtrtrt', 'wreere', 'ere', 2, '', 4557575, 'j.jpg', ''),
(37, 'asdfas', 'adfsd', '0000-00-00', 0, 'asdfa', 'dsfa', 'sadfas', 0, '', 878, 'k.jpg', ''),
(39, 'fda', 'asdf', '0000-00-00', 0, 'sfad', 'adff', 'sadfa', 0, '', 45454, 'l.jpg', ''),
(40, 'saf', 'adfsda', '0000-00-00', 0, 'sdfaf', 'asfddasfd', 'safddsf', 0, '', 265262, 'l.jpg', ''),
(41, 'wqr', 'wqr', '0000-00-00', 0, 'qwr', 'qr', 'qwre', 0, 'g', 565, 'l.jpg', ''),
(42, 'dsfgsd', 'dsfg', '0000-00-00', 0, 'dsfdgsgf', 'dfsgsg', 'dfgsg', 0, 'Male', 455, 'l.jpg', ''),
(43, 'lala', 'suthar', '0000-00-00', 0, 'sirohi', 'sirohi', 'pali', 0, 'Male', 8945, 'k.jpg', 'l.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_cancellation_master`
--

CREATE TABLE `fleet_cancellation_master` (
  `Fleet_Cancel_ID` int(3) NOT NULL,
  `Fleet_No` int(3) NOT NULL,
  `Fleet_Category_Id` int(3) NOT NULL,
  `Fleet_Cancel_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_category_master`
--

CREATE TABLE `fleet_category_master` (
  `Fleet_Category_ID` int(3) NOT NULL,
  `Fleet_Category_Name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fleet_category_master`
--

INSERT INTO `fleet_category_master` (`Fleet_Category_ID`, `Fleet_Category_Name`) VALUES
(0, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_master`
--

CREATE TABLE `fleet_master` (
  `Fleet_No` int(3) NOT NULL,
  `RTO_ID` int(3) NOT NULL,
  `Fleet_Weight` decimal(8,0) NOT NULL,
  `Chasis_No` varchar(30) NOT NULL,
  `Fleet_Category_ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fleet_master`
--

INSERT INTO `fleet_master` (`Fleet_No`, `RTO_ID`, `Fleet_Weight`, `Chasis_No`, `Fleet_Category_ID`) VALUES
(123, 123, '898', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_ordered_master`
--

CREATE TABLE `fleet_ordered_master` (
  `Fleet_Order_ID` int(3) NOT NULL,
  `Fleet_Category_ID` int(3) NOT NULL,
  `Fleet_Ordered_Date` date NOT NULL,
  `User_ID` int(3) NOT NULL,
  `Srart_point` varchar(30) NOT NULL,
  `End_point` varchar(30) NOT NULL,
  `Product_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fleet_ordered_master`
--

INSERT INTO `fleet_ordered_master` (`Fleet_Order_ID`, `Fleet_Category_ID`, `Fleet_Ordered_Date`, `User_ID`, `Srart_point`, `End_point`, `Product_Name`) VALUES
(1, 0, '2018-12-10', 6, 'bapunagar', 'bapunagar', 'Dates');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_master`
--

CREATE TABLE `insurance_master` (
  `Insurance_ID` int(3) NOT NULL,
  `Company_Name` varchar(50) NOT NULL,
  `Company_Contact` int(12) NOT NULL,
  `Company_Address` varchar(250) NOT NULL,
  `Fleet_No` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_master`
--

INSERT INTO `insurance_master` (`Insurance_ID`, `Company_Name`, `Company_Contact`, `Company_Address`, `Fleet_No`) VALUES
(2, 'Reliance', 3545, 'kalupaur', 123);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master`
--

CREATE TABLE `invoice_master` (
  `Invoice_ID` int(11) NOT NULL,
  `Fleet_Order_ID` int(3) NOT NULL,
  `Tax` int(11) NOT NULL,
  `Day_Drive` int(11) NOT NULL,
  `Total_Amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `Msg_ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Sub` varchar(30) NOT NULL,
  `Message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`Msg_ID`, `Name`, `Email`, `Sub`, `Message`) VALUES
(1, 'Shekhar', 'shekhar456@gmail.com', 'life', 'this is nice web site'),
(2, 'rahul', 'rahul@45gmail.com', 'nice', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `product_category_master`
--

CREATE TABLE `product_category_master` (
  `Category_ID` int(3) NOT NULL,
  `Category` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category_master`
--

INSERT INTO `product_category_master` (`Category_ID`, `Category`) VALUES
(1, 'water'),
(2, 'liquied'),
(3, 'rock');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `Product_ID` int(3) NOT NULL,
  `Product_Name` varchar(15) NOT NULL,
  `Product_Price` int(10) NOT NULL,
  `Category_ID` int(3) NOT NULL,
  `Product_quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`Product_ID`, `Product_Name`, `Product_Price`, `Category_ID`, `Product_quantity`) VALUES
(1, 'miik', 54, 1, 78);

-- --------------------------------------------------------

--
-- Table structure for table `service_master`
--

CREATE TABLE `service_master` (
  `Service_ID` int(3) NOT NULL,
  `Fleet_No` int(3) NOT NULL,
  `Service_Date` date NOT NULL,
  `Next_Service_Date` date NOT NULL,
  `Service_Amount` int(12) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_master`
--

INSERT INTO `service_master` (`Service_ID`, `Fleet_No`, `Service_Date`, `Next_Service_Date`, `Service_Amount`, `Description`) VALUES
(1, 123, '2018-12-24', '2018-12-14', 345, 'This is very Nive Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `spare_parts_master`
--

CREATE TABLE `spare_parts_master` (
  `S_P_ID` int(3) NOT NULL,
  `S_P_Name` varchar(15) NOT NULL,
  `City_ID` int(3) NOT NULL,
  `S_P_Quantity` varchar(15) NOT NULL,
  `S_P_Rate` int(8) NOT NULL,
  `S_P_Amount` int(10) NOT NULL,
  `S_P_Purchase_Date` date NOT NULL,
  `Fleet_No` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spare_parts_master`
--

INSERT INTO `spare_parts_master` (`S_P_ID`, `S_P_Name`, `City_ID`, `S_P_Quantity`, `S_P_Rate`, `S_P_Amount`, `S_P_Purchase_Date`, `Fleet_No`) VALUES
(1, 'Rakesh', 8, '45', 54, 56, '2018-12-17', 123);

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `State_ID` int(3) NOT NULL,
  `State_Name` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_master`
--

INSERT INTO `state_master` (`State_ID`, `State_Name`) VALUES
(1, 'gujarat'),
(2, 'maharashtra'),
(3, 'punjab'),
(4, 'haryana'),
(6, 'assam'),
(9, 'rajkot');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `User_ID` int(3) NOT NULL,
  `First_Name` varchar(10) NOT NULL,
  `Last_Name` varchar(10) NOT NULL,
  `User_Type_ID` tinyint(1) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Mobile_No` int(12) NOT NULL,
  `Email_ID` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Security_Question` varchar(50) NOT NULL,
  `Security_Answer` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`User_ID`, `First_Name`, `Last_Name`, `User_Type_ID`, `Gender`, `Address`, `Mobile_No`, `Email_ID`, `Password`, `Security_Question`, `Security_Answer`) VALUES
(2, 'rakesh', 'suthar', 1, 'male', 'bapunagar', 4512, 'shekhar456@gmail.com', '123', 'saf', 'sdfd'),
(3, 'Jgniesh', 'suthar', 2, 'Male', 'Bapunagar', 343434, 'jigna@45gmail.com', '345', '', ''),
(4, 'rahul', 'suthar', 2, '', 'bapunagar', 125, 'rahul@45gmail.com', '3344', 'er', 'er'),
(5, 'rahul', 'suthar', 1, '', 'bapunagar', 12556, 'raRThul@45gmail.com', '5555', 'er', 'er'),
(6, 'yiyi', 'olol', 1, 'Female', 'kalanagar', 66666, 'gh45@gmail.com', '7777', 'fgghf', 'ghj');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_master`
--

CREATE TABLE `user_type_master` (
  `User_Type_ID` tinyint(1) NOT NULL,
  `User_Type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type_master`
--

INSERT INTO `user_type_master` (`User_Type_ID`, `User_Type`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `yo`
--

CREATE TABLE `yo` (
  `imag` varchar(60) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yo`
--

INSERT INTO `yo` (`imag`, `id`) VALUES
('', 0),
('', 0),
('', 8),
('', 8),
('', 8),
('', 8),
('', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_master`
--
ALTER TABLE `area_master`
  ADD PRIMARY KEY (`Area_ID`),
  ADD KEY `area_master_ibfk_1` (`City_ID`);

--
-- Indexes for table `city_master`
--
ALTER TABLE `city_master`
  ADD PRIMARY KEY (`City_ID`),
  ADD KEY `city_master_ibfk_1` (`State_ID`);

--
-- Indexes for table `company_master`
--
ALTER TABLE `company_master`
  ADD PRIMARY KEY (`Company_ID`);

--
-- Indexes for table `driver_master`
--
ALTER TABLE `driver_master`
  ADD PRIMARY KEY (`Driver_ID`),
  ADD UNIQUE KEY `Mobile_No` (`Mobile_No`);

--
-- Indexes for table `fleet_category_master`
--
ALTER TABLE `fleet_category_master`
  ADD PRIMARY KEY (`Fleet_Category_ID`);

--
-- Indexes for table `fleet_master`
--
ALTER TABLE `fleet_master`
  ADD PRIMARY KEY (`Fleet_No`),
  ADD UNIQUE KEY `Chasis_No` (`Chasis_No`),
  ADD KEY `fleet_master_ibfk_1` (`RTO_ID`),
  ADD KEY `Fleet_Category_Id` (`Fleet_Category_ID`);

--
-- Indexes for table `fleet_ordered_master`
--
ALTER TABLE `fleet_ordered_master`
  ADD PRIMARY KEY (`Fleet_Order_ID`),
  ADD UNIQUE KEY `Fleet_Category_ID` (`Fleet_Category_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `insurance_master`
--
ALTER TABLE `insurance_master`
  ADD PRIMARY KEY (`Insurance_ID`),
  ADD KEY `insurance_master_ibfk_1` (`Fleet_No`);

--
-- Indexes for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD PRIMARY KEY (`Invoice_ID`),
  ADD UNIQUE KEY `Fleet_Order_ID` (`Fleet_Order_ID`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`Msg_ID`),
  ADD UNIQUE KEY `Msg_ID` (`Msg_ID`);

--
-- Indexes for table `product_category_master`
--
ALTER TABLE `product_category_master`
  ADD KEY `Category_ID` (`Category_ID`) USING BTREE;

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `product_master_ibfk_1` (`Category_ID`);

--
-- Indexes for table `service_master`
--
ALTER TABLE `service_master`
  ADD PRIMARY KEY (`Service_ID`),
  ADD KEY `service_master_ibfk_1` (`Fleet_No`);

--
-- Indexes for table `spare_parts_master`
--
ALTER TABLE `spare_parts_master`
  ADD PRIMARY KEY (`S_P_ID`),
  ADD KEY `spare_parts_master_ibfk_1` (`City_ID`),
  ADD KEY `spare_parts_master_ibfk_2` (`Fleet_No`);

--
-- Indexes for table `state_master`
--
ALTER TABLE `state_master`
  ADD PRIMARY KEY (`State_ID`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Phone_No` (`Mobile_No`),
  ADD UNIQUE KEY `Email_ID` (`Email_ID`),
  ADD UNIQUE KEY `Password` (`Password`),
  ADD UNIQUE KEY `Password_2` (`Password`),
  ADD UNIQUE KEY `Password_3` (`Password`),
  ADD KEY `user_master_ibfk_2` (`User_Type_ID`);

--
-- Indexes for table `user_type_master`
--
ALTER TABLE `user_type_master`
  ADD PRIMARY KEY (`User_Type_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_master`
--
ALTER TABLE `area_master`
  MODIFY `Area_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `city_master`
--
ALTER TABLE `city_master`
  MODIFY `City_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `company_master`
--
ALTER TABLE `company_master`
  MODIFY `Company_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `driver_master`
--
ALTER TABLE `driver_master`
  MODIFY `Driver_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `fleet_ordered_master`
--
ALTER TABLE `fleet_ordered_master`
  MODIFY `Fleet_Order_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `insurance_master`
--
ALTER TABLE `insurance_master`
  MODIFY `Insurance_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `invoice_master`
--
ALTER TABLE `invoice_master`
  MODIFY `Invoice_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `Msg_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product_category_master`
--
ALTER TABLE `product_category_master`
  MODIFY `Category_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `Product_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `service_master`
--
ALTER TABLE `service_master`
  MODIFY `Service_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `spare_parts_master`
--
ALTER TABLE `spare_parts_master`
  MODIFY `S_P_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `state_master`
--
ALTER TABLE `state_master`
  MODIFY `State_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `User_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `area_master`
--
ALTER TABLE `area_master`
  ADD CONSTRAINT `area_master_ibfk_1` FOREIGN KEY (`City_ID`) REFERENCES `city_master` (`City_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `city_master`
--
ALTER TABLE `city_master`
  ADD CONSTRAINT `city_master_ibfk_1` FOREIGN KEY (`State_ID`) REFERENCES `state_master` (`State_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fleet_master`
--
ALTER TABLE `fleet_master`
  ADD CONSTRAINT `fleet_master_ibfk_2` FOREIGN KEY (`Fleet_Category_ID`) REFERENCES `fleet_category_master` (`Fleet_Category_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fleet_ordered_master`
--
ALTER TABLE `fleet_ordered_master`
  ADD CONSTRAINT `fleet_ordered_master_ibfk_1` FOREIGN KEY (`Fleet_Category_ID`) REFERENCES `fleet_category_master` (`Fleet_Category_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fleet_ordered_master_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user_master` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `insurance_master`
--
ALTER TABLE `insurance_master`
  ADD CONSTRAINT `insurance_master_ibfk_1` FOREIGN KEY (`Fleet_No`) REFERENCES `fleet_master` (`Fleet_No`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD CONSTRAINT `invoice_master_ibfk_1` FOREIGN KEY (`Fleet_Order_ID`) REFERENCES `fleet_ordered_master` (`Fleet_Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_master`
--
ALTER TABLE `product_master`
  ADD CONSTRAINT `product_master_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `product_category_master` (`Category_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `service_master`
--
ALTER TABLE `service_master`
  ADD CONSTRAINT `service_master_ibfk_1` FOREIGN KEY (`Fleet_No`) REFERENCES `fleet_master` (`Fleet_No`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `spare_parts_master`
--
ALTER TABLE `spare_parts_master`
  ADD CONSTRAINT `spare_parts_master_ibfk_1` FOREIGN KEY (`City_ID`) REFERENCES `city_master` (`City_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `spare_parts_master_ibfk_2` FOREIGN KEY (`Fleet_No`) REFERENCES `fleet_master` (`Fleet_No`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_master`
--
ALTER TABLE `user_master`
  ADD CONSTRAINT `user_master_ibfk_2` FOREIGN KEY (`User_Type_ID`) REFERENCES `user_type_master` (`User_Type_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
