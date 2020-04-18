CREATE DATABASE IF NOT EXISTS `agroDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `agroDB`;

CREATE TABLE `BrandsInfo` (
  `id` int(11) NOT NULL,
  `bName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `CategoriesInfo` (
  `id` int(11) NOT NULL,
  `category` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `Customers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `emailID` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastLogin` datetime NOT NULL,
  `cRole` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `ProductsInfo` (
  `id` int(11) NOT NULL,
  `pName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pPrice` decimal(10,2) NOT NULL,
  `pListPrice` decimal(10,2) NOT NULL,
  `bName` int(11) NOT NULL,
  `pCategory` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pImg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pDetails` text COLLATE utf8_unicode_ci NOT NULL,
  `pFeatured` tinyint(4) NOT NULL DEFAULT '0',
  `weight` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ShoppingCart` (
  `id` int(11) NOT NULL,
  `iName` text NOT NULL,
  `expiryDate` datetime NOT NULL,
  `paid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Transactions` (
  `id` int(11) NOT NULL,
  `chargeID` varchar(255) NOT NULL,
  `cartID` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `emailID` varchar(200) NOT NULL,
  `addr1` varchar(255) NOT NULL,
  `addr2` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(15) NOT NULL,
  `country` varchar(100) NOT NULL,
  `subTotal` decimal(10,0) NOT NULL,
  `taxAmt` decimal(10,0) NOT NULL,
  `grandTotal` decimal(10,0) NOT NULL,
  `details` text NOT NULL,
  `trnType` varchar(255) NOT NULL,
  `trnDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `BrandsInfo`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `CategoriesInfo`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ProductsInfo`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `BrandsInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `CategoriesInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

TABLE `Customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `ProductsInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;