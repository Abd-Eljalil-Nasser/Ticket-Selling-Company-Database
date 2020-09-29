-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 12:18 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tickets_selling_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_ID` int(11) NOT NULL,
  `Opening_Hours` time NOT NULL,
  `Location` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_ID`, `Opening_Hours`, `Location`) VALUES
(1, '00:00:08', 'ElAbasia'),
(2, '00:00:06', 'Makram Ebaid'),
(3, '00:00:08', 'El Tahrir');

-- --------------------------------------------------------

--
-- Table structure for table `branch_phone`
--

CREATE TABLE `branch_phone` (
  `Branch_ID` int(11) NOT NULL,
  `Branch_Phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_phone`
--

INSERT INTO `branch_phone` (`Branch_ID`, `Branch_Phone`) VALUES
(1, '010345678'),
(1, '012345678'),
(2, '011345678'),
(2, '015345678'),
(3, '012345677');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `Customer_ID` int(11) NOT NULL,
  `Method_ID` int(11) NOT NULL,
  `Ticket_ID` int(11) NOT NULL,
  `Branch_ID` int(11) NOT NULL,
  `Transaction_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`Customer_ID`, `Method_ID`, `Ticket_ID`, `Branch_ID`, `Transaction_ID`) VALUES
(1, 4, 10, 2, 38),
(1, 2, 1, 3, 1),
(2, 1, 2, 1, 2),
(3, 3, 3, 2, 3),
(3, 4, 11, 2, 80),
(4, 2, 4, 1, 4),
(5, 5, 5, 2, 5),
(6, 4, 6, 3, 6),
(7, 5, 7, 3, 7),
(8, 3, 8, 3, 8),
(9, 3, 9, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE `cinema` (
  `Event_ID` int(11) NOT NULL,
  `Film_Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`Event_ID`, `Film_Name`) VALUES
(3, 'Charlie\'s Angels'),
(7, 'Harriet'),
(8, 'Ford v Ferrari'),
(9, 'Last christmas'),
(10, 'Maleficent: Mistress of Evil'),
(11, 'A Beautiful Day in the Neighborhood'),
(12, 'Frozen ||');

-- --------------------------------------------------------

--
-- Table structure for table `concert`
--

CREATE TABLE `concert` (
  `Event_ID` int(11) NOT NULL,
  `Performer_Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concert`
--

INSERT INTO `concert` (`Event_ID`, `Performer_Name`) VALUES
(16, 'Omar khirt'),
(17, 'Yehia khalil');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `SSN` int(11) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Address` varchar(120) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Customer_Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `SSN`, `Date_Of_Birth`, `Address`, `Email`, `Customer_Name`) VALUES
(1, 11111111, '1997-05-20', 'madinty', 'Abanoub@gmail.com', 'Abanoub'),
(2, 11112222, '1997-06-27', 'nacer_city', 'Alaa@gmail.com', 'Alaa'),
(3, 11113333, '1997-08-15', 'masr_elgdida', 'abdelglil@gmail.com', 'abdelglil'),
(4, 11114444, '1997-01-20', 'El-Abaseya', 'menna@gmail.com', 'menna'),
(5, 11115555, '1997-12-31', 'El-Abaseya', 'salma@gmail.com', 'salma'),
(6, 11116666, '1990-01-20', 'nacer_city', 'ahmed_Ali@gmail.com', 'ahmed Ali'),
(7, 11117777, '1990-12-05', 'masr_elgdida', 'mohamed_naser@gmail.com', 'mohamed naser'),
(8, 11118888, '1990-11-20', 'El-Abaseya', 'mona_mostafa@gmail.com', 'mona mostafa'),
(9, 11119999, '1995-11-06', 'nacer_city', 'ibrahim_ahmed@gmail.com', 'ibrahim ahmed'),
(10, 22221111, '1995-06-20', 'nacer_city', 'ahmed_Ali@gmail.com', 'ahmed Ali'),
(11, 22222222, '1990-08-17', 'masr_elgdida', 'marina_ashref@gmail.com', 'marina ashref'),
(12, 22223333, '2000-01-15', 'nacer_city', 'ali_ahmed@gmail.com', 'ali ahmed'),
(13, 22224444, '1996-06-20', 'El-Abaseya', 'ahmed_Ali@gmail.com', 'ahmed Ali'),
(14, 22225555, '1994-04-20', 'nacer_city', 'nada Ali@gmail.com', 'nada Ali'),
(15, 22226666, '1991-02-20', 'masr_elgdida', 'mina_aymen@gmail.com', 'mina aymen');

-- --------------------------------------------------------

--
-- Table structure for table `customer_phone`
--

CREATE TABLE `customer_phone` (
  `Customer_ID` int(11) NOT NULL,
  `Customer_Phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_phone`
--

INSERT INTO `customer_phone` (`Customer_ID`, `Customer_Phone`) VALUES
(1, '01211111111'),
(1, '01211111112'),
(2, '01211111113'),
(3, '01211111114'),
(4, '01211111115'),
(5, '01211111116'),
(7, '01211111117'),
(7, '01211111118'),
(8, '01211111110'),
(8, '01211111119'),
(9, '01211111121'),
(10, '01211111131'),
(11, '01211111141'),
(12, '01211111151'),
(13, '01211111161'),
(14, '01211111171');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Event_ID` int(11) NOT NULL,
  `Time` time(6) NOT NULL,
  `Location` varchar(120) NOT NULL,
  `Event_Owner_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Event_ID`, `Time`, `Location`, `Event_Owner_ID`) VALUES
(1, '09:30:00.000000', 'Elzamalek', 4),
(2, '11:30:00.000000', 'cairostadium', 1),
(3, '03:30:00.000000', 'star mall', 14),
(4, '20:30:00.000000', 'Elzamalek', 4),
(5, '21:30:00.000000', 'Grand Nile tour - Garden city', 3),
(6, '07:15:00.000000', 'Grand Nile tour - Garden city', 3),
(7, '04:39:37.000000', 'star mall', 15),
(8, '00:00:00.000000', 'mall el arab', 12),
(9, '05:20:00.000000', 'star mall', 13),
(10, '00:00:00.000000', 'mall el arab', 11),
(11, '06:34:31.000000', 'star mall', 14),
(12, '00:00:00.000000', 'mall el arab', 11),
(13, '13:00:00.000000', 'cairostadium', 1),
(14, '18:00:00.000000', 'cairostadium', 1),
(15, '19:00:00.000000', 'cairostadium', 2),
(16, '20:00:00.000000', 'Dar El OBRA EhTahrir', 5),
(17, '19:30:00.330000', 'Dar El OBRA EhTahrir', 5);

-- --------------------------------------------------------

--
-- Table structure for table `event_owner`
--

CREATE TABLE `event_owner` (
  `Event_Owner_ID` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Address` varchar(120) NOT NULL,
  `SSN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_owner`
--

INSERT INTO `event_owner` (`Event_Owner_ID`, `Name`, `Email`, `Address`, `SSN`) VALUES
(1, 'CAF', 'CAF@gmail.com', 'Egypt', 11111111),
(2, 'EHF', 'EHF@gmail.com', 'Egypt', 11112222),
(3, 'Masrh Masr', 'Masrh_Masr@gmail.com', 'Garden city', 33331111),
(4, 'Aminn Partners', 'Aminn_Partners@gmail.com', 'Elzamalek', 33332222),
(5, 'Dar El Obra', 'OBRA@gmail.com', 'ElTahrir', 44441111),
(11, 'Walt Disney', 'Disney@gmail.com', 'USA', 55551111),
(12, 'Twentieth century Fox', 'TCFox@gmail.com', 'USA', 55552222),
(13, 'Universal picuters', 'Universal_picuters@gmail.com', 'USA', 55553333),
(14, 'Sony pictures', 'Sony_pictures@gmail.com', 'USA', 55554444),
(15, 'Focus features', 'Focus_features@gmail.com', 'USA', 55555555);

-- --------------------------------------------------------

--
-- Table structure for table `event_owner_phone`
--

CREATE TABLE `event_owner_phone` (
  `Event_Owner_ID` int(11) NOT NULL,
  `Phone_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `Event_ID` int(11) NOT NULL,
  `Sport_Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`Event_ID`, `Sport_Name`) VALUES
(2, 'Football'),
(13, 'Football'),
(14, 'Football'),
(15, 'Vollyball');

-- --------------------------------------------------------

--
-- Table structure for table `match_teams`
--

CREATE TABLE `match_teams` (
  `Event_ID` int(11) NOT NULL,
  `Teams` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_teams`
--

INSERT INTO `match_teams` (`Event_ID`, `Teams`) VALUES
(2, 'EL Ahly'),
(2, 'EL ZAMALEK'),
(13, 'El Ismaily'),
(13, 'EMPI'),
(14, 'Egypt'),
(14, 'Ghana'),
(15, 'Egypt'),
(15, 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `Method_ID` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`Method_ID`, `Name`) VALUES
(1, 'fawry'),
(2, 'visa'),
(3, 'orange money'),
(4, 'vodafone cash'),
(5, 'paypal');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `Promo_ID` int(11) NOT NULL,
  `Promocode_Number` varchar(120) NOT NULL,
  `percentage` int(12) NOT NULL,
  `Customer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promocode`
--

INSERT INTO `promocode` (`Promo_ID`, `Promocode_Number`, `percentage`, `Customer_ID`) VALUES
(1, '8a20', 10, 2),
(2, 'c350', 30, 1),
(3, 'm510', 50, 8),
(4, '8aa0', 15, 5),
(5, '1ab0', 20, 11),
(6, '867e', 25, 14),
(7, 'h20b', 60, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `Sponsors_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`Sponsors_ID`, `Event_ID`) VALUES
(1, 2),
(1, 3),
(1, 6),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 17),
(2, 7),
(2, 13),
(2, 15),
(2, 16),
(3, 1),
(3, 2),
(3, 14),
(3, 15),
(4, 15),
(5, 4),
(5, 5),
(5, 6),
(5, 10),
(5, 12),
(6, 9),
(7, 1),
(7, 8),
(7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `Sponsors_ID` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `SSN` int(11) NOT NULL,
  `Location` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`Sponsors_ID`, `Name`, `Email`, `SSN`, `Location`) VALUES
(1, 'coca cola', 'coca_COLA@cola.com', 11112222, 'egypt'),
(2, 'pepsi', 'pepsi@pe.com', 11113333, 'egypt'),
(3, 'orange', 'orangeEgypt@or.com', 11114444, 'france'),
(4, 'etisalat', 'etisalatMisr@ET.com', 11115555, 'egypt'),
(5, 'vodafone', 'ovodafone@VO.com', 11115555, 'egypt'),
(6, 'moro', 'moro@moro.com', 11116666, 'egypt'),
(7, 'molto', 'moltoEgypt@molto.com', 11117777, 'egypt');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors_phone`
--

CREATE TABLE `sponsors_phone` (
  `Sponsors_ID` int(11) NOT NULL,
  `Phone_Number` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsors_phone`
--

INSERT INTO `sponsors_phone` (`Sponsors_ID`, `Phone_Number`) VALUES
(1, '011223344'),
(1, '022113344'),
(2, '022113366'),
(2, '055113344'),
(3, '022113377'),
(4, '022113388'),
(5, '022113399'),
(6, '022113311');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `Event_ID` int(11) NOT NULL,
  `Play_Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`Event_ID`, `Play_Name`) VALUES
(1, 'episode12'),
(4, 'episode13'),
(5, 'episode4'),
(6, 'episode5');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket_ID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Seat_Number` int(11) NOT NULL,
  `Assignment_sit_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Ticket_ID`, `Price`, `Seat_Number`, `Assignment_sit_ID`, `Event_ID`) VALUES
(1, 40, 7, 1, 1),
(2, 60, 10, 2, 1),
(3, 70, 17, 3, 2),
(4, 80, 15, 4, 2),
(5, 20, 30, 5, 5),
(6, 60, 18, 6, 3),
(7, 50, 21, 7, 15),
(8, 100, 31, 8, 12),
(9, 120, 19, 9, 13),
(10, 60, 19, 1, 7),
(11, 90, 29, 3, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`Branch_ID`);

--
-- Indexes for table `branch_phone`
--
ALTER TABLE `branch_phone`
  ADD PRIMARY KEY (`Branch_ID`,`Branch_Phone`),
  ADD KEY `Branch_ID` (`Branch_ID`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`Customer_ID`,`Branch_ID`,`Method_ID`,`Ticket_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Branch_ID` (`Branch_ID`),
  ADD KEY `Method_ID` (`Method_ID`),
  ADD KEY `Ticket_ID` (`Ticket_ID`);

--
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `Event_ID` (`Event_ID`);

--
-- Indexes for table `concert`
--
ALTER TABLE `concert`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `Event_ID` (`Event_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customer_phone`
--
ALTER TABLE `customer_phone`
  ADD PRIMARY KEY (`Customer_ID`,`Customer_Phone`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `Event_Owner_ID` (`Event_Owner_ID`);

--
-- Indexes for table `event_owner`
--
ALTER TABLE `event_owner`
  ADD PRIMARY KEY (`Event_Owner_ID`);

--
-- Indexes for table `event_owner_phone`
--
ALTER TABLE `event_owner_phone`
  ADD PRIMARY KEY (`Event_Owner_ID`),
  ADD KEY `Event_Owner_ID` (`Event_Owner_ID`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `Event_ID` (`Event_ID`);

--
-- Indexes for table `match_teams`
--
ALTER TABLE `match_teams`
  ADD PRIMARY KEY (`Event_ID`,`Teams`),
  ADD KEY `Event_ID` (`Event_ID`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`Method_ID`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`Promo_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`Sponsors_ID`,`Event_ID`),
  ADD KEY `Sponsors_ID` (`Sponsors_ID`),
  ADD KEY `Event_ID` (`Event_ID`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`Sponsors_ID`);

--
-- Indexes for table `sponsors_phone`
--
ALTER TABLE `sponsors_phone`
  ADD PRIMARY KEY (`Sponsors_ID`,`Phone_Number`),
  ADD KEY `Sponsors_ID` (`Sponsors_ID`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `Event_ID` (`Event_ID`) USING BTREE;

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket_ID`),
  ADD KEY `Event_ID` (`Event_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `Branch_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `event_owner`
--
ALTER TABLE `event_owner`
  MODIFY `Event_Owner_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `Method_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `Sponsors_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `Ticket_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch_phone`
--
ALTER TABLE `branch_phone`
  ADD CONSTRAINT `branch_phone_ibfk_1` FOREIGN KEY (`Branch_ID`) REFERENCES `branch` (`Branch_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`Branch_ID`) REFERENCES `branch` (`Branch_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buy_ibfk_3` FOREIGN KEY (`Ticket_ID`) REFERENCES `ticket` (`Ticket_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buy_ibfk_4` FOREIGN KEY (`Method_ID`) REFERENCES `payment_method` (`Method_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cinema`
--
ALTER TABLE `cinema`
  ADD CONSTRAINT `cinema_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `concert`
--
ALTER TABLE `concert`
  ADD CONSTRAINT `concert_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_phone`
--
ALTER TABLE `customer_phone`
  ADD CONSTRAINT `customer_phone_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_owner_phone`
--
ALTER TABLE `event_owner_phone`
  ADD CONSTRAINT `event_owner_phone_ibfk_1` FOREIGN KEY (`Event_Owner_ID`) REFERENCES `event_owner` (`Event_Owner_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `match_teams`
--
ALTER TABLE `match_teams`
  ADD CONSTRAINT `match_teams_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promocode`
--
ALTER TABLE `promocode`
  ADD CONSTRAINT `promocode_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD CONSTRAINT `sponsor_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsor_ibfk_2` FOREIGN KEY (`Sponsors_ID`) REFERENCES `sponsors` (`Sponsors_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponsors_phone`
--
ALTER TABLE `sponsors_phone`
  ADD CONSTRAINT `sponsors_phone_ibfk_1` FOREIGN KEY (`Sponsors_ID`) REFERENCES `sponsors` (`Sponsors_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `theater`
--
ALTER TABLE `theater`
  ADD CONSTRAINT `theater_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
