-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 26, 2023 at 03:45 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erpdatabase`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `Imię` varchar(20) DEFAULT NULL,
  `Nazwisko` varchar(30) DEFAULT NULL,
  `Ulica` varchar(30) DEFAULT NULL,
  `Numer_budynku` varchar(40) DEFAULT NULL,
  `Miasto` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `nr_telefonu` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Imię`, `Nazwisko`, `Ulica`, `Numer_budynku`, `Miasto`, `email`, `nr_telefonu`) VALUES
(1, 'Marcin', 'Adamczewski', 'Długa', '8', 'Piła', 'marcinek123@wp.pl', 888222333),
(2, 'Jakub', 'Tomaszewicz', 'Krótka', '44', 'Szydłowo', 'jakubson123@gmail.com', 543287932),
(3, 'Kacper', 'Podgórski', 'Krzywa', '28', 'Piła', 'Kapi28@wp.pl', 965412231),
(4, 'Adrian', 'Kowalewski', 'Waleczna', '12', 'Piła', 'adiadi215@gmail.com', 589254321),
(5, 'Michał', 'Szukała', 'Długa', '12', 'Piła', 'Szukalamichal@wp.pl', 876545324),
(9, 'Tomasz', 'Wysocki', 'Ogólna', '19', 'Piła', 'wysockitomek123@gmail.com', 922934545);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employeeactions`
--

CREATE TABLE `employeeactions` (
  `ID_akcji` int(11) NOT NULL,
  `ID_Pracownika` int(11) DEFAULT NULL,
  `typ_akcji` varchar(30) DEFAULT NULL,
  `ID_produktu` int(11) DEFAULT NULL,
  `ID_klienta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `Imię` varchar(20) DEFAULT NULL,
  `Nazwisko` varchar(30) DEFAULT NULL,
  `Stanowisko` varchar(30) DEFAULT NULL,
  `Wynagrodzenie` int(11) DEFAULT NULL,
  `Ulica` varchar(30) DEFAULT NULL,
  `numer_budynku` varchar(15) DEFAULT NULL,
  `Miasto` varchar(25) DEFAULT NULL,
  `nr_telefonu` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID`, `Imię`, `Nazwisko`, `Stanowisko`, `Wynagrodzenie`, `Ulica`, `numer_budynku`, `Miasto`, `nr_telefonu`) VALUES
(1, 'Wojtek', 'Wojtowicz', 'Sprzedawca', 4200, 'Poboczna', '29', 'Piła', 979656721),
(2, 'Adam', 'Adamowicz', 'Sprzedawca', 4200, 'Kręta', '33', 'Dolaszewo', 899776564),
(3, 'Jakub', 'Podhalski', 'Sprzątacz', 3800, 'Poboczna', '12', 'Piła', 464787939),
(4, 'Dominik', 'Zielonka', 'Magazynier', 4800, 'Krótka', '11', 'Szydłowo', 717282945),
(5, 'Maksymilian', 'Misiak', 'Dyrektor', 15000, 'Podłużna', '33', 'Kotuń', 294534132);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `data_zamówienia` date DEFAULT NULL,
  `klient_id` int(11) DEFAULT NULL,
  `produkt_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(40) DEFAULT NULL,
  `Opis` varchar(80) DEFAULT NULL,
  `Cena` float DEFAULT NULL,
  `Ilość` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `Nazwa`, `Opis`, `Cena`, `Ilość`) VALUES
(7, 'Iphone 13 PRO 256GB', 'Telefon komórkowy Iphone 13 PRO 256GB', 3750, 29),
(8, 'Iphone 15 PRO MAX 1TB', 'Telefon komórkowy Iphone 15 PRO MAX 1TB', 9700, 11),
(9, 'Lenovo IdeaPad Slim 5', 'Lenovo - IdeaPad Slim 5 16IAH8 16\" i5-12450H 16GB RAM 512GB Dysk SSD Win11 Lapto', 2900, 33),
(10, 'SteelSeries Rival 3', 'Myszka gamingowa SteelSeries Rival 3 ', 150, 28);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `employeeactions`
--
ALTER TABLE `employeeactions`
  ADD PRIMARY KEY (`ID_akcji`),
  ADD KEY `ID_Pracownika` (`ID_Pracownika`),
  ADD KEY `ID_produktu` (`ID_produktu`),
  ADD KEY `ID_klienta` (`ID_klienta`);

--
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `klient_id` (`klient_id`),
  ADD KEY `produkt_id` (`produkt_id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employeeactions`
--
ALTER TABLE `employeeactions`
  MODIFY `ID_akcji` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeeactions`
--
ALTER TABLE `employeeactions`
  ADD CONSTRAINT `employeeactions_ibfk_1` FOREIGN KEY (`ID_Pracownika`) REFERENCES `employees` (`ID`),
  ADD CONSTRAINT `employeeactions_ibfk_2` FOREIGN KEY (`ID_produktu`) REFERENCES `products` (`ID`),
  ADD CONSTRAINT `employeeactions_ibfk_3` FOREIGN KEY (`ID_klienta`) REFERENCES `customers` (`ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `customers` (`ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`produkt_id`) REFERENCES `products` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
