-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 05:16 PM
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
(5, 'Michał', 'Szukała', 'Długa', '12', 'Piła', 'Szukalamichal@wp.pl', 876545324),
(9, 'Tomasz', 'Wysocki', 'Ogólna', '19', 'Piła', 'wysockitomek123@gmail.com', 922934545),
(12, 'Marian', 'Marianowski', 'Podłużna', '29', 'Wałcz', 'mariano123@wp.pl', 339922115);

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
(1, 'Wojtek', 'Machowski', 'Sprzedawca', 4200, 'Poboczna', '35', 'Piła', 979656721),
(3, 'Jakub', 'Podhalski', 'Sprzątacz', 3800, 'Poboczna', '12', 'Piła', 464787939),
(4, 'Dominik', 'Zielonka', 'Magazynier', 4800, 'Krótka', '11', 'Szydłowo', 717282945),
(5, 'Maksymilian', 'Misiak', 'Dyrektor', 15000, 'Podłużna', '33', 'Kotuń', 294534132),
(6, 'Marian', 'Kowalski', 'Sprzątacz', 3800, 'Krótka', '17', 'Szydłowo', 215965343);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employeesactions`
--

CREATE TABLE `employeesactions` (
  `id_akcji` int(11) NOT NULL,
  `typ_akcji` varchar(45) DEFAULT NULL,
  `data_akcji` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `employeesactions`
--

INSERT INTO `employeesactions` (`id_akcji`, `typ_akcji`, `data_akcji`) VALUES
(1, 'Dodanie klienta', '0000-00-00 00:00:00'),
(2, 'Dodanie klienta', '2023-12-07 00:00:00'),
(3, 'Dodanie klienta', '2023-12-07 03:28:42'),
(4, 'Dodanie klienta', '2023-12-07 03:30:05'),
(5, 'Dodanie klienta', '2023-12-07 03:30:22'),
(6, 'Dodanie klienta', '2023-12-07 03:30:49'),
(7, 'Dodanie klienta', '2023-12-07 03:32:39'),
(8, 'Dodanie klienta', '2023-12-07 16:59:28'),
(9, 'Dodanie produktu', '2023-12-07 17:04:17'),
(10, 'Edycja produktu', '2023-12-07 17:05:49'),
(11, 'Usuwanie produktu', '2023-12-07 17:05:55'),
(12, 'Wyświetlenie produktów', '2023-12-07 17:06:02'),
(13, 'Wyświetlenie produktów', '2023-12-07 17:06:28'),
(14, 'Usuwanie klienta', '2023-12-07 17:06:44'),
(15, 'Usuwanie klienta', '2023-12-07 17:06:46'),
(16, 'Usuwanie klienta', '2023-12-07 17:06:53'),
(17, 'Usuwanie klienta', '2023-12-07 17:07:03'),
(18, 'Usuwanie klienta', '2023-12-07 17:07:07'),
(19, 'Usuwanie klienta', '2023-12-07 17:07:08'),
(20, 'Usuwanie klienta', '2023-12-07 17:07:10'),
(21, 'Wyświetlenie klientów ', '2023-12-07 17:07:19'),
(22, 'Usuwanie klienta', '2023-12-07 17:07:25'),
(23, 'Wyświetlenie pracowników', '2023-12-07 17:07:49');

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
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `employeesactions`
--
ALTER TABLE `employeesactions`
  ADD PRIMARY KEY (`id_akcji`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employeesactions`
--
ALTER TABLE `employeesactions`
  MODIFY `id_akcji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

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
