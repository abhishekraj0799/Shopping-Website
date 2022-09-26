-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 08:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(255) NOT NULL,
  `adm_name` varchar(50) NOT NULL,
  `adm_pass` varchar(50) NOT NULL,
  `adm_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adm_name`, `adm_pass`, `adm_email`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com'),
(2, 'RedCheif', 'Red', 'red@red.red');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Nike'),
(4, 'Adidas'),
(5, 'Asley'),
(6, 'Kartell'),
(7, 'LG'),
(8, 'Whirlpool');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(200) NOT NULL,
  `pro_id` int(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_id` varchar(70) NOT NULL,
  `qty` int(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `pro_id`, `ip_address`, `user_id`, `qty`) VALUES
(8, 6, '192.168.56.1', '3', 1),
(9, 2, '192.168.56.1', '3', 1),
(13, 5, '192.168.56.1', '6', 1),
(29, 2, '192.168.56.1', '10', 1),
(58, 2, '192.168.56.1', '1', 1),
(59, 3, '192.168.56.1', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category_name`) VALUES
(1, 'Electronics'),
(2, 'Furnitures'),
(3, 'Clothes'),
(4, 'Home Appliances');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(200) NOT NULL,
  `user_id` int(100) NOT NULL,
  `tran_id` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `tran_id`, `order_status`) VALUES
(1, 3, 'M6VilctwYot51E93oGKS', 'Pending Payment'),
(2, 1, '/FyFbXtZwyrJ2BpfsSdm', 'Completed'),
(3, 1, '$2y$10$7qAZD5e5DDSR.z6rGV3OreZZH30pCRwVb1S60wykK4t87Og82B/Wm', 'Refunded'),
(4, 1, '$2y$10$2dr5xDRO8fK4QUrLS6s/helPiwgZV6hGls4VowIOohoGjNvVHb69u', 'Pending Payment'),
(5, 1, '$2y$10$TojnbygnaMRAkW0iiN.aEeyZhmZu32tQa.22OEZX6tSq5F.XgHySy', ''),
(6, 1, 'Mmzoa55MJ.o80KaOdS3G', 'Active'),
(7, 7, '$2y$10$wuHBAc4oplO4UgP.XmYBGuTjKCJr21Wzn3P9KHBzk3f6HamnLSUzq', 'Active'),
(8, 2, '$2y$10$XbdtgT13EErv7LUjItvR7uobw5Hv6qP8DqpAtza.OLzC.UqrhTGgG', 'Active'),
(9, 2, '$2y$10$DTfq46HRkdjW2cAICE9ezuTPrpbJZR15fZp9NhS6st9twH6J9w7hy', 'Active'),
(10, 2, '$2y$10$UW008Y.fLTJCASbaA2a54OHcOua.ePRbT/aMcV6eSR77wrCE95e6C', 'Active'),
(11, 2, '$2y$10$TQ.70lGKo0FrOloy4XHobuf.Jr9tG9nZRVVUJvr3TAMZX/VvtO/qy', 'Active'),
(12, 2, '$2y$10$CQNX3mhLEGbc2Vs1SBoFkOTe0YPtlY/MWQQY9WIQmD4XxJElRs15G', 'Active'),
(13, 2, '$2y$10$P4TSsatOVFYVk1X6yHD0surhO6BYqyQE4HvZFL319b5kyQgDq9fo2', 'Active'),
(14, 2, '$2y$10$dADf8sNFo8nZWbMbBpodAeYbSyO8ZOxGfM.Wc9ZU0VNGkHyNmczn2', 'Active'),
(15, 2, '$2y$10$UAJKSoZrKPxx.s3bI2yW9e/Z69m9tEB/xILzaHHnkgZgrcFQSXb2W', 'Active'),
(16, 2, '$2y$10$K28BcY8hfpF51zQpPgwGi.T/9JROhALd9iupbmYfqXFGQlXI4L6RO', 'Active'),
(17, 2, '$2y$10$eH0xMZrA50J5.FbHpa5oRuyC3//AoBEmBY5h07tHlFJrn0aaU6May', 'Active'),
(18, 2, '$2y$10$jwmTcQR76.wS0IOCOGbVG.3GfZPRrwzGSzCoym9dB8sZADg7CpUUW', 'Active'),
(19, 2, '$2y$10$UMPDxyn20/ytHOPyh7H1je.O1.XYLfiYpKODLwOJ/6yakoPb183Ue', 'Active'),
(20, 2, '$2y$10$9aBXCN.MRxAfiBuGSYGEH.vg5fyL0tg/Yz9hSttkg9XaJqdqSIvIW', 'Active'),
(21, 2, '$2y$10$ETEDWvTPulKCcaegLk2l5.2GSKEz9Cl64PlLCdCvup0XR7xD0mMiy', 'Active'),
(22, 2, '$2y$10$.Y6KMHaRKfx68nzwZ.rQb.DmlZogFQMKpUvEqCZU9aTTvVRSgnoeS', 'Active'),
(23, 2, '$2y$10$eLYsw/QauL0fsWk/smugr.IJ4TOOF.9Koax7xJ5879aWn9BXC6uMu', 'Active'),
(24, 2, '$2y$10$SKiHCvybm4NZQCiaIrMgZ.sPnx04aONpMhYc4bUIPjCKjnasfUv7i', 'Active'),
(25, 2, '$2y$10$ziAOPXMkdJ2gk9QzWd3/z.cBxDEaHfCgVH.XH9K2b49a.McOwI3qi', 'Active'),
(26, 2, '$2y$10$K/50a9h5HroHXKFaSVLGdOw2CHWMbvVebwYDv8ifIZNCYzlCG2bg6', 'Active'),
(27, 2, '$2y$10$KApnvyUiadiCHgsYLSlM/.dG4GPIFb29uOZzNbNui5F6NG5EN8Ohq', 'Active'),
(28, 2, '$2y$10$0K/vzXsncJmRixiiLLum7eBwWYx0yvwrvKFQmU92Yk6FWQYugG4D6', 'Active'),
(29, 2, '$2y$10$lgwfEoFn/1PrdrhDUuMNVOirovsMKCGxUPRBepS5G7xHj3uLjs2y2', 'Active'),
(30, 2, '$2y$10$xcskV2C8V8elNACQTcKXdeR/RSA1WLht3axQkL88CVo47qO82Sl6i', 'Active'),
(31, 2, '$2y$10$Y881dY564RqvCc8.f59d5uc3f4W65YKp3vjg0kZS0SyhTgsxdvN6m', 'Active'),
(32, 2, '$2y$10$R0Zi4wcCsKJOdXKhhSi8MefSzqFjTPzwQ1.eV6ytI5vhEiDX5yBDm', 'Active'),
(33, 2, '$2y$10$2JHvgaq8BjM7ZVmSEYbc4OfRAOQfwHCDYQj4qZrS1omSvgMxJivIm', 'Active'),
(34, 2, '$2y$10$UvLe3d1OIPnOFWHEQHQ/6uCar/cg9NkRNWhiGY/KgjvXip6qq.jjS', 'Active'),
(35, 2, '$2y$10$scoDwbIjsUYV/PcbXQNTlul/E2.mWsIfFP1PH243AnnN1NtEICU0e', 'Active'),
(36, 2, '$2y$10$HnyMQzSENNZuH6nxWLfy0O419shV96AkFYFqsyNkjTgQ8uX1fgKFq', 'Active'),
(37, 2, '$2y$10$awEMo.5EVMQK2G9ZT7FsNOHMTm8nIa8X5EgrSHBCTQj.KzjsNtnOi', 'Active'),
(38, 2, '$2y$10$Bsy.DsHRjsVSNwsbHQb.weqHaO/F2.uzGAAh1M6KIDNkMiPQchjrm', 'Active'),
(39, 2, '$2y$10$PUYKdfkfzkHoXUtmbLph3ODaxVxWk5ruutos9Jpzv7ytzsSBF4Gne', 'Active'),
(40, 8, '$2y$10$AgAzPfLIY8mciv44nQU3JeU74K58qV87C/uJTnnpKkydodJoiftBC', 'Active'),
(41, 8, '$2y$10$2xgjKwgUjXxIccDQdJGXteDfJGhsX2Kr7qO3RDB9h78dhL34i0jKO', 'Active'),
(42, 2, '$2y$10$WMKzzQoC7Y7d5jQIZ0U5yuIz05ohodDiWmLJOcArBnHXwxqXuwiuC', 'Active'),
(43, 1, '$2y$10$8bdBkUjqUqaY0JLXuewYFuJHxixzSn.noy8iXWXTMdzRYEP9vHMxy', 'Active'),
(44, 1, '$2y$10$vcBtV2HBQWB.y4rOfUbSTu.uQZ.tLXBSwXF2ewA7OKvx96/PFogIu', 'Active'),
(45, 1, '$2y$10$06yx6lsI18FqE6FV/J/eFeye7yb.Au0PxvLZpnip2HRnkoQxaCpYy', 'Active'),
(46, 1, '$2y$10$A5NQjGchRNuG.LC/MxeVa.AIs9j2up64tCuI/opgVT7qKtqTbOYDe', 'Active'),
(47, 1, '$2y$10$.m1m9NXavkSVtE1vG0cinuIAgOwOF4H.zW.8FoRMk7I1bsOc/B2du', 'Active'),
(48, 1, '$2y$10$8K7PR3s84aq18MryU92/kuwua5iCRgTslQBEW1wP9eKX0VD3IrWB.', 'Active'),
(49, 1, '$2y$10$mZGfMEwtLh1E5BOorJFd8eFH0dToQvz0VuVyPYoGG9DfkUt81fqBq', 'Active'),
(50, 1, '$2y$10$x71IbbCbzb.06k.g0Qm6HejGfS0fS6jkJBzOkMYYDBJ2ssKLGNthS', 'Active'),
(51, 1, '$2y$10$Pa.lr6MrnOc34eJJvzH7AOma56WjyZWc3KxYva3uqSDwMs9iSC9UK', 'Active'),
(52, 1, '$2y$10$ZfmFew7xVHX1nxNjObEne.t4KJ112eJD/WlDMWhUj0HUDi2C3HGqG', 'Active'),
(53, 11, '$2y$10$G0jukxOlK9JxwS9SuZovoeJcVZ1Xtd1Do8bhdyG7.WTUpQTLQ8R5.', 'Canceled'),
(54, 12, '$2y$10$YF.quyeucK59nMbLRhKKF.raj0XT5IIAGPsHQWnyRKNxichBfCY8C', 'Active'),
(55, 12, '$2y$10$y9lVnROAl3V74kjR8k2e8esVHvIqfSmaAOdgZMJEjpbvDtoaFsaVC', 'Active'),
(56, 12, '$2y$10$pikeSikle3nWeOrTJU951OKH4Py6GWC.73acFuXt3ZgjpOlzz5d5W', 'Active'),
(57, 13, '$2y$10$/M6NE1HaStCMMU/rS12D.e34PJCgZFNGbBQ3bVQE8m4pVugoqxZXG', 'Active'),
(58, 14, '$2y$10$7ttUMh1.7/52nTsi7As.UuoKOlivkouZHVMm2N7a40eic/FImw1sa', 'Processing'),
(59, 16, '$2y$10$nFbPVtdOw3vXJiiKuqaoEuSY7/iGGSHy/gjzDgnKjcTrENKfDvlhi', 'Active'),
(60, 16, '$2y$10$9ahJ2.QZv8iCwSQqGi7ZmOGMwecvqLURoI8lD1FXUTwj0V8VbPPQ2', 'Active'),
(61, 16, '$2y$10$R9iyrnyY5niL1DQGfBhMveqyKmmrrg7Vr2REfnNLNqoH8QBpAlinu', 'Active'),
(62, 16, '$2y$10$Q8KtAoCCQ1YwIMcI5pdWnODKtn86DZv9npwoBpcliKZLqTSrWTSrq', 'Active'),
(63, 1, '$2y$10$jnN8aeLL.wrhFVD/izeowe8mazVyKycmKCNx8ViGVogIKzFhqOcl6', 'Active'),
(64, 17, '$2y$10$sBA/b8ySJXAR8hGKndb6Sun1NFFNFXJw45fNNgbgO9InN.9JbcChi', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `ordered_pro_id` int(200) NOT NULL,
  `ordr_id` int(100) NOT NULL,
  `usr_id` int(20) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordered_products`
--

INSERT INTO `ordered_products` (`ordered_pro_id`, `ordr_id`, `usr_id`, `product_id`, `qty`) VALUES
(1, 1, 3, 20, 1),
(2, 2, 1, 26, 1),
(3, 3, 1, 2, 1),
(4, 4, 1, 3, 1),
(5, 5, 1, 1, 1),
(6, 5, 1, 11, 1),
(7, 6, 1, 3, 1),
(8, 6, 1, 9, 1),
(9, 6, 1, 20, 1),
(10, 7, 7, 2, 1),
(11, 8, 2, 2, 1),
(12, 9, 2, 2, 1),
(13, 14, 2, 2, 1),
(14, 15, 2, 4, 1),
(15, 16, 2, 4, 1),
(16, 17, 2, 4, 1),
(17, 18, 2, 4, 1),
(18, 19, 2, 4, 1),
(19, 25, 2, 2, 1),
(20, 25, 2, 15, 1),
(21, 32, 2, 4, 1),
(22, 39, 2, 2, 1),
(23, 40, 8, 2, 1),
(24, 41, 8, 2, 1),
(25, 42, 2, 2, 1),
(26, 43, 1, 3, 1),
(27, 43, 1, 13, 1),
(28, 43, 1, 16, 1),
(29, 52, 1, 3, 1),
(30, 53, 11, 2, 1),
(31, 54, 12, 4, 1),
(32, 56, 12, 1, 1),
(33, 56, 12, 11, 1),
(34, 57, 13, 1, 1),
(35, 58, 14, 6, 1),
(36, 58, 14, 4, 1),
(37, 59, 16, 2, 1),
(38, 59, 16, 10, 1),
(39, 62, 16, 10, 1),
(40, 62, 16, 2, 1),
(41, 63, 1, 2, 1),
(42, 63, 1, 16, 1),
(43, 64, 17, 2, 1),
(44, 64, 17, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `odr_Id` int(200) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `total_Amt` varchar(200) NOT NULL,
  `card_holder_name` varchar(20) NOT NULL,
  `credit_card_no` varchar(20) NOT NULL,
  `exp_date` varchar(20) NOT NULL,
  `cvv` varchar(20) NOT NULL,
  `Shipping_Add` varchar(20) NOT NULL,
  `order_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_info`
--

INSERT INTO `order_info` (`odr_Id`, `user_Id`, `total_Amt`, `card_holder_name`, `credit_card_no`, `exp_date`, `cvv`, `Shipping_Add`, `order_date`) VALUES
(1, 3, '499', 'Sam Adam', '4533 4333 9320 0101', '3/35', '554', '45 \'A\' Mountvilla So', 'Sun, 16 May 21 06:56:57 +0000'),
(2, 1, '100', 'Eminem Alloy', '3454 5654 5667 3455', '7/30', '345', '34 A Somdutt Plaza, ', 'Sun, 16 May 21 08:24:55 +0000'),
(3, 1, '139', 'knkn nk', '553434343', '4/33', '355', ' n nkn, nknnkg -ndfk', 'Fri, 21 May 21 14:09:01 +0000'),
(4, 1, '179', 'mnmn mbjk', '568687979', '5/24', '690', 'mbmh,  mbm, mbmn -nm', 'Sat, 22 May 21 20:55:16 +0000'),
(5, 1, '958', 'Ritik Kumar', '4645 4565 3454 5564', '06/35', '532', 'Latouche Road, Kanpu', 'Sun, 31 Oct 21 19:12:17 +0000'),
(6, 1, '1017', 'Any Martin', '335373837984', '24/34', '33', 'jddgjd Amsterdam, Lo', 'Sun, 31 Oct 21 20:17:29 +0000'),
(7, 7, '139', 'Amily Mins', '33555343434', '5/53', '53', 'dfkdgd Paramount, NY', 'Sun, 31 Oct 21 21:15:10 +0000'),
(8, 2, '139', 'Ayan Khan', '47373927047480807', '11/34', '546', 'D1 Block Naini Taal,', 'Sun, 17 Apr 22 16:24:48 +0000'),
(9, 2, '139', 'Ayan Khan', '9373853920327', '6/23', '455', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 06:28:18 +0000'),
(10, 2, '139', 'Ayan Khan', '4445444456', '4/23', '453', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 06:47:36 +0000'),
(11, 2, '139', 'Ayan Khan', '4445444456', '4/23', '453', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 06:48:05 +0000'),
(12, 2, '139', 'Ayan Khan', '45534344335', '45/35', '53', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 06:48:28 +0000'),
(13, 2, '139', 'Ayan Khan', '45534344335', '45/35', '53', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 06:48:48 +0000'),
(14, 2, '139', 'Ayan Khan', '593347292392', '34/24', '342', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 06:49:27 +0000'),
(15, 2, '149', 'Ayan Khan', '543423355', '42/43', '433', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 07:56:56 +0000'),
(16, 2, '149', 'Ayan Khan', '373483640474', '343/33', '343', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 08:00:44 +0000'),
(17, 2, '149', 'Ayan Khan', '373483640474', '343/33', '343', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 08:01:53 +0000'),
(18, 2, '149', 'Ayan Khan', '373483640474', '343/33', '343', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 08:20:00 +0000'),
(19, 2, '149', 'Ayan Khan', '93483743897293', '232/32', '343', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 11:42:35 +0000'),
(20, 2, '149', 'Ayan Khan', '39473947898230', '23/42', '242', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 11:44:41 +0000'),
(21, 2, '149', 'Ayan Khan', '39473947898230', '23/42', '242', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 11:46:28 +0000'),
(22, 2, '149', 'Ayan Khan', '737423230242', '03/23', '456', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 11:47:08 +0000'),
(23, 2, '149', 'Ayan Khan', '737423230242', '03/23', '456', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 11:47:48 +0000'),
(24, 2, '149', 'Ayan Khan', '737423230242', '03/23', '456', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 11:47:54 +0000'),
(25, 2, '538', 'Arijit Sign', '9373947947', '4/23', '567', 'D2 Block Som Dutt Pl', 'Fri, 22 Apr 22 11:49:15 +0000'),
(26, 2, '538', 'Arijit Singh', '88342832328', '04/44', '322', 'D2 Block Som Dutt Pl', 'Fri, 22 Apr 22 11:53:33 +0000'),
(27, 2, '538', 'Ayan Khan', '384394828032830', '32/432', '4222222', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 11:54:13 +0000'),
(28, 2, '538', 'Arijit Khan', '72927922739', '223/32', '342', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:01:04 +0000'),
(29, 2, '538', 'Arijit Khan', '72927922739', '223/32', '342', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:01:51 +0000'),
(30, 2, '538', 'Arijit Khan', '72927922739', '223/32', '342', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:01:57 +0000'),
(31, 2, '538', 'Ayan Khan', '734934739802', '82/42', '4232', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:02:23 +0000'),
(32, 2, '149', 'Ayan Khan', '47932703207', '23/23', '432', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:07:36 +0000'),
(33, 2, '149', 'Ayan Khan', '47932703207', '23/23', '432', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:12:33 +0000'),
(34, 2, '149', 'Ayan Khan', '47932703207', '23/23', '432', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:21:04 +0000'),
(35, 2, '', 'Ayan Khan', '753739473', '343/43', '34', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:24:00 +0000'),
(36, 2, '', 'Ayan Khan', '34739428042', '34/34', '422', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:27:21 +0000'),
(37, 2, '', 'Ayan Khan', '34739428042', '34/34', '422', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:28:16 +0000'),
(38, 2, '', 'Ayan Khan', '34739428042', '34/34', '422', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:28:22 +0000'),
(39, 2, '139', 'Ayan Sign', '94739477203', '23242/42', '42', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:31:01 +0000'),
(40, 8, '139', 'Ayan Khan', '93749720230', '32/24', '4232', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:40:30 +0000'),
(41, 8, '139', 'Ayan Khan', '73473942732', '34/43', '434', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 12:43:12 +0000'),
(42, 2, '139', 'Ayan Khan', '573974932032', '32/232', '242', 'D1 Block Naini Taal,', 'Fri, 22 Apr 22 13:09:05 +0000'),
(43, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:01 +0000'),
(44, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:06 +0000'),
(45, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:06 +0000'),
(46, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:06 +0000'),
(47, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:07 +0000'),
(48, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:07 +0000'),
(49, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:08 +0000'),
(50, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:08 +0000'),
(51, 1, '841', 'Ayan Khan', '6454534345', '34/53', '464', 'D1 Block Naini Taal,', 'Sat, 23 Apr 22 12:00:08 +0000'),
(52, 1, '179', 'Aryan raj', '9786276273276', '22/23', '443', 'D1 Block Naini Taal,', 'Tue, 26 Apr 22 20:55:37 +0000'),
(53, 11, '139', 'Ramavath Jayaram Nai', '12345678901', '03/25', '352', '2-113 , sitaram naga', 'Wed, 27 Apr 22 09:11:09 +0000'),
(54, 12, '149', 'Ayan Khan', '3564 3456 5667 9594', '02/25', '655', '2-113 , sitaram naga', 'Tue, 10 May 22 06:40:26 +0000'),
(55, 12, '149', 'Ayan Khan', '3564 3456 5667 9594', '02/25', '655', '2-113 , sitaram naga', 'Tue, 10 May 22 06:40:31 +0000'),
(56, 12, '958', 'Arpit Sagar', '3355 3435 6453 5343', '04/34', '554', 'D1 Block Naini Taal,', 'Tue, 10 May 22 06:50:13 +0000'),
(57, 13, '699', 'Ayan Khan', '3456 3455 3555 6564', '04/27', '533', '2-113 , sitaram naga', 'Tue, 10 May 22 07:03:23 +0000'),
(58, 14, '228', 'Ritik Kumar', '3456 4567 4567 3456', '02/25', '567', 'D1 Block Som Dutt Pl', 'Tue, 10 May 22 07:31:14 +0000'),
(59, 16, '1338', 'Jaya ram Naik', '3535 5533 5353 4646', '06/25', '453', '2-113 , sitaram naga', 'Tue, 10 May 22 17:26:46 +0000'),
(60, 16, '1338', 'Jaya ram Naik', '3535 5533 5353 4646', '06/25', '453', '2-113 , sitaram naga', 'Tue, 10 May 22 17:26:53 +0000'),
(61, 16, '1338', 'Jaya ram Naik', '3534 3533 5454 6464', '04/25', '533', '2-113 , sitaram naga', 'Tue, 10 May 22 17:27:49 +0000'),
(62, 16, '1338', 'Jaya ram Naik', '5335 6433 3533 3432', '05/25', '446', '2-113 , sitaram naga', 'Tue, 10 May 22 17:30:27 +0000'),
(63, 1, '738', 'Jonh Smith', '3434 5334 5343 4334', '04/34', '534', 'D1 Block, Arya Nagar', 'Fri, 13 May 22 05:03:12 +0000'),
(64, 17, '1338', 'Ritik Kumar', '3455 3434 3334 5433', '01/2025', '670', 'D1 Block, Arya Nagar', 'Fri, 13 May 22 06:16:07 +0000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(200) NOT NULL,
  `p_category` int(255) NOT NULL,
  `p_brand` int(255) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_price` int(10) NOT NULL,
  `p_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_category`, `p_brand`, `p_name`, `p_price`, `p_image`) VALUES
(1, 2, 5, 'Wardrobe', 699, 'wardrobe1_up.jpg'),
(2, 2, 6, 'Asain - Study Table', 139, 'studyTable.png'),
(3, 2, 6, 'Luxurious Sofa', 179, 'sofa4_up.jpg'),
(4, 2, 5, 'Table & Chairs', 149, 'tablechair.jpg'),
(5, 3, 3, 'Ladies Casual Dress ', 49, '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg'),
(6, 3, 4, 'Black Jeans', 79, 'pt5.jpg'),
(7, 1, 1, 'Iphone 6', 999, 'iphone3.jpg'),
(8, 1, 1, 'Macbook Air ', 1999, 'macbook1.png'),
(9, 1, 2, 'Samsung Ipad', 339, 'ipad_sam.jpg'),
(10, 1, 2, 'Samsung S21', 1199, 'sams21.jpg'),
(11, 4, 8, 'Refrigerator', 259, 'Home Appliancesll.jpg'),
(12, 4, 7, 'Iron', 69, 'iron2.jpg'),
(13, 4, 7, 'Mixer Grinder', 63, 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg'),
(14, 4, 8, 'Washing Machine', 786, 'washing 012.jpg'),
(15, 3, 5, 'Black Lace Dress', 399, 'women casual5.jpg'),
(16, 2, 6, 'Asian - Bed', 599, 'bed02.jpg'),
(17, 3, 5, 'Shirt and Pant', 89, 'clothes1.jpg'),
(18, 1, 2, 'Headphone', 299, 'product05.png'),
(19, 1, 1, 'Iphone 12 ', 1499, 'iphoneSE412.png'),
(20, 3, 5, 'Ladies Partywear', 499, 'women casual.webp'),
(21, 3, 5, 'Silky Top', 119, 'women casual3.jpg'),
(22, 2, 6, 'Groovy Swivel Chair', 559, 'Swivel Laounge Chair1.jpg'),
(23, 2, 5, 'Asian - Wardrobe', 499, 'wardrobe.jpg'),
(24, 3, 4, 'Purple Coat', 109, 'pm13.jpg'),
(25, 1, 2, 'Speaker with Alexa', 99, 'Alexa.jpg'),
(26, 3, 5, 'Baby cloth', 100, '1.0x0.jpg'),
(30, 2, 6, 'Casper Mattres Bed', 1100, 'bed06.jpg'),
(32, 2, 5, 'Indian rosewood', 2000, 'bedroom4.jpg'),
(33, 2, 5, 'Groovy Chaie', 200, 'Groovy Swivel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'Ana', '786', 'ritikkumar814512@gmail.com'),
(2, 'Amit', '1234', 'rk9531857@gmail.com'),
(10, 'Hardik', '0000', 'iit2019111@iiita.ac.in'),
(11, 'Zeroop', 'zeroop', 'iit2019106@iiita.ac.in'),
(17, 'Ritik', '1234', 'iit2019088@iiita.ac.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`ordered_pro_id`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`odr_Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `ordered_pro_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_info`
--
ALTER TABLE `order_info`
  MODIFY `odr_Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
