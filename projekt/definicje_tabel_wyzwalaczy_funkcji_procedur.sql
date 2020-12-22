CREATE TABLE `projekt_adres_klienta` (
  `id_adresu` int NOT NULL AUTO_INCREMENT,
  `ulica` varchar(45) NOT NULL,
  `kod` varchar(45) NOT NULL,
  `miejscowosc` varchar(45) NOT NULL,
  `klienci_id_klienta` int NOT NULL,
  PRIMARY KEY (`id_adresu`),
  KEY `fk_adres_klienta_klienci1_idx` (`klienci_id_klienta`),
  CONSTRAINT `fk_adres_klienta_klienci1` FOREIGN KEY (`klienci_id_klienta`) REFERENCES `projekt_klienci` (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `projekt_czesci` (
  `id_czesci` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  `cena` int NOT NULL,
  `ilosc` int DEFAULT NULL,
  PRIMARY KEY (`id_czesci`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



CREATE TABLE `projekt_klienci` (
  `id_klienta` int NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `numer_telefonu` varchar(45) NOT NULL,
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `projekt_mechanicy` (
  `id_mechanika` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `specjalizacja` varchar(45) NOT NULL,
  PRIMARY KEY (`id_mechanika`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci




CREATE TABLE `projekt_narzedzia` (
  `id_narzedzia` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  `ilosc` int DEFAULT NULL,
  PRIMARY KEY (`id_narzedzia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci




CREATE TABLE `projekt_narzedzia_has_projekt_mechanicy` (
  `projekt_narzedzia_id_narzedzia` int NOT NULL,
  `projekt_mechanicy_id_mechanika` int NOT NULL,
  `nazwa_narzedzia` varchar(45) NOT NULL,
  PRIMARY KEY (`projekt_narzedzia_id_narzedzia`,`projekt_mechanicy_id_mechanika`),
  KEY `fk_projekt_narzedzia_has_projekt_mechanicy_projekt_mechanic_idx` (`projekt_mechanicy_id_mechanika`),
  KEY `fk_projekt_narzedzia_has_projekt_mechanicy_projekt_narzedzi_idx` (`projekt_narzedzia_id_narzedzia`),
  CONSTRAINT `fk_projekt_narzedzia_has_projekt_mechanicy_projekt_mechanicy1` FOREIGN KEY (`projekt_mechanicy_id_mechanika`) REFERENCES `projekt_mechanicy` (`id_mechanika`),
  CONSTRAINT `fk_projekt_narzedzia_has_projekt_mechanicy_projekt_narzedzia1` FOREIGN KEY (`projekt_narzedzia_id_narzedzia`) REFERENCES `projekt_narzedzia` (`id_narzedzia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci





CREATE TABLE `projekt_samochody` (
  `id_samochodu` int NOT NULL AUTO_INCREMENT,
  `marka` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `klienci_id_klienta` int NOT NULL,
  PRIMARY KEY (`id_samochodu`),
  KEY `fk_samochody_klienci_idx` (`klienci_id_klienta`),
  CONSTRAINT `fk_samochody_klienci` FOREIGN KEY (`klienci_id_klienta`) REFERENCES `projekt_klienci` (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci






CREATE TABLE `projekt_samochody_has_projekt_mechanicy` (
  `projekt_samochody_id_samochodu` int NOT NULL,
  `projekt_mechanicy_id_mechanika` int NOT NULL,
  PRIMARY KEY (`projekt_samochody_id_samochodu`,`projekt_mechanicy_id_mechanika`),
  KEY `fk_projekt_samochody_has_projekt_mechanicy_projekt_mechanic_idx` (`projekt_mechanicy_id_mechanika`),
  KEY `fk_projekt_samochody_has_projekt_mechanicy_projekt_samochod_idx` (`projekt_samochody_id_samochodu`),
  CONSTRAINT `fk_projekt_samochody_has_projekt_mechanicy_projekt_mechanicy1` FOREIGN KEY (`projekt_mechanicy_id_mechanika`) REFERENCES `projekt_mechanicy` (`id_mechanika`),
  CONSTRAINT `fk_projekt_samochody_has_projekt_mechanicy_projekt_samochody1` FOREIGN KEY (`projekt_samochody_id_samochodu`) REFERENCES `projekt_samochody` (`id_samochodu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci




CREATE TABLE `projekt_uslugi` (
  `id_uslugi` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) NOT NULL,
  `cena` int NOT NULL,
  `mechanicy_id_mechanika` int NOT NULL,
  `klienci_id_klienta` int NOT NULL,
  `samochody_id_samochodu` int NOT NULL,
  PRIMARY KEY (`id_uslugi`),
  KEY `fk_uslugi_mechanicy1_idx` (`mechanicy_id_mechanika`),
  KEY `fk_uslugi_klienci1_idx` (`klienci_id_klienta`),
  KEY `fk_uslugi_samochody1_idx` (`samochody_id_samochodu`),
  CONSTRAINT `fk_uslugi_klienci1` FOREIGN KEY (`klienci_id_klienta`) REFERENCES `projekt_klienci` (`id_klienta`),
  CONSTRAINT `fk_uslugi_mechanicy1` FOREIGN KEY (`mechanicy_id_mechanika`) REFERENCES `projekt_mechanicy` (`id_mechanika`),
  CONSTRAINT `fk_uslugi_samochody1` FOREIGN KEY (`samochody_id_samochodu`) REFERENCES `projekt_samochody` (`id_samochodu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci





CREATE TABLE `projekt_uslugi_has_projekt_czesci` (
  `projekt_uslugi_id_uslugi` int NOT NULL,
  `projekt_czesci_id_czesci` int NOT NULL,
  `nazwa_uslugi` varchar(45) NOT NULL,
  `nazwa_czesci` varchar(45) NOT NULL,
  PRIMARY KEY (`projekt_uslugi_id_uslugi`,`projekt_czesci_id_czesci`),
  KEY `fk_projekt_uslugi_has_projekt_czesci_projekt_czesci1_idx` (`projekt_czesci_id_czesci`),
  KEY `fk_projekt_uslugi_has_projekt_czesci_projekt_uslugi1_idx` (`projekt_uslugi_id_uslugi`),
  CONSTRAINT `fk_projekt_uslugi_has_projekt_czesci_projekt_czesci1` FOREIGN KEY (`projekt_czesci_id_czesci`) REFERENCES `projekt_czesci` (`id_czesci`),
  CONSTRAINT `fk_projekt_uslugi_has_projekt_czesci_projekt_uslugi1` FOREIGN KEY (`projekt_uslugi_id_uslugi`) REFERENCES `projekt_uslugi` (`id_uslugi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci






DELIMITER $$
CREATE PROCEDURE znizka(IN id int)
BEGIN
Update projekt_czesci set cena = 0.5 * cena where id_czesci=id;
END
$$
DELIMITER ;

call znizka(6);

DELIMITER //
CREATE TRIGGER mechanik_before_insert
BEFORE INSERT ON projekt_mechanicy
FOR EACH ROW
BEGIN
  IF NEW.specjalizacja = 'nowy'
  THEN
    SET NEW.specjalizacja = 'pomocnik';
  END IF;
END
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER narzedzia
BEFORE UPDATE ON projekt_narzedzia
FOR EACH ROW
BEGIN
set new.ilosc=2*old.ilosc;
END
//
DELIMITER ;

DELIMITER //
CREATE FUNCTION  ile_rodzaji_narzedzi()
    RETURNS INTEGER
BEGIN
    DECLARE ile INT;
    SELECT COUNT(ilosc) INTO @ile FROM projekt_narzedzia;
    RETURN @ile;
END //





