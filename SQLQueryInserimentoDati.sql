-- inserimento gentilmente fatto da chat

USE TechRetail_B;
GO

-- Inserimenti per la tabella "prodotti"
INSERT INTO prodotti (nome, descrizione, prezzo, immagineURL) VALUES
('Laptop Pro', 'Laptop di alta qualità', 1500, 'http://example.com/images/laptoppro.jpg'),
('Smartphone X', 'Smartphone con fotocamera avanzata', 800, 'http://example.com/images/smartphonex.jpg'),
('Tablet S', 'Tablet versatile per lavoro e divertimento', 500, 'http://example.com/images/tablets.jpg'),
('Smartwatch A', 'Smartwatch con monitoraggio salute', 300, 'http://example.com/images/smartwatcha.jpg'),
('Cuffie Bluetooth', 'Cuffie wireless con cancellazione del rumore', 150, 'http://example.com/images/cuffie.jpg'),
('Monitor 27"', 'Monitor 4K da 27 pollici', 400, 'http://example.com/images/monitor27.jpg'),
('Stampante Laser', 'Stampante laser ad alta velocità', 250, 'http://example.com/images/stampante.jpg'),
('Router WiFi', 'Router WiFi dual band', 100, 'http://example.com/images/router.jpg'),
('Hard Disk Esterno', 'Hard Disk da 2TB', 120, 'http://example.com/images/harddisk.jpg'),
('Mouse Wireless', 'Mouse ergonomico senza fili', 50, 'http://example.com/images/mouse.jpg');
GO

-- Inserimenti per la tabella "filiali"
INSERT INTO filiali (magazzino, indirizzo, email, telefono, disponibileAlRitiro) VALUES
(1, 'Via Roma 1, Milano', 'milano1@techretail.com', '0212345678', 1),
(1, 'Via Milano 2, Milano', 'milano2@techretail.com', '0212345679', 1),
(0, 'Corso Torino 10, Torino', 'torino@techretail.com', '0112345678', 1),
(1, 'Piazza Napoli 5, Napoli', 'napoli@techretail.com', '0812345678', 1),
(0, 'Via Firenze 3, Firenze', 'firenze@techretail.com', '0551234567', 1),
(1, 'Via Bologna 7, Bologna', 'bologna@techretail.com', '0512345678', 1),
(0, 'Via Palermo 9, Palermo', 'palermo@techretail.com', '0912345678', 1),
(1, 'Piazza Genova 2, Genova', 'genova@techretail.com', '0101234567', 1),
(0, 'Via Verona 4, Verona', 'verona@techretail.com', '0451234567', 1),
(1, 'Corso Bari 8, Bari', 'bari@techretail.com', '0801234567', 1);
GO

-- Inserimenti per la tabella "stocks"
-- Si assume che gli id dei prodotti vadano da 1 a 10 e quelli delle filiali da 1 a 10
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1, 1, 10),
(2, 2, 5),
(3, 3, 20),
(4, 4, 15),
(5, 5, 30),
(6, 6, 7),
(7, 7, 12),
(8, 8, 9),
(9, 9, 25),
(10, 10, 40);
GO

-- Inserimenti per la tabella "utenti"
INSERT INTO utenti (nome, cognome, mail, passw, ruolo, idFilialeFK) VALUES
('Mario', 'Rossi', 'mario.rossi@example.com', 'password1', 'staff', 1),
('Luigi', 'Verdi', 'luigi.verdi@example.com', 'password2', 'cliente', 2),
('Anna', 'Bianchi', 'anna.bianchi@example.com', 'password3', 'admin', 3),
('Giulia', 'Neri', 'giulia.neri@example.com', 'password4', 'cliente', 4),
('Marco', 'Gialli', 'marco.gialli@example.com', 'password5', 'staff', 5),
('Sara', 'Ferri', 'sara.ferri@example.com', 'password6', 'cliente', 6),
('Luca', 'Blu', 'luca.blu@example.com', 'password7', 'cliente', 7),
('Elena', 'Rosa', 'elena.rosa@example.com', 'password8', 'staff', 8),
('Paolo', 'Viola', 'paolo.viola@example.com', 'password9', 'cliente', 9),
('Laura', 'Marrone', 'laura.marrone@example.com', 'password10', 'admin', 10);
GO

-- Inserimenti per la tabella "ordini"
-- Si assumono gli id degli utenti, prodotti e filiali coerenti con i precedenti inserimenti
INSERT INTO ordini (data, quantita, idUtenteFK, idProdottoFK, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
('2025-02-03', 2, 1, 1, 1, 2, 'Via Cliente 1, Milano', 1, 0, 'elaborazione'),
('2025-02-03', 1, 2, 2, 2, 3, 'Via Cliente 2, Milano', 0, 0, 'consegna'),
('2025-02-02', 3, 3, 3, 3, 4, 'Via Cliente 3, Torino', 1, 1, 'consegnato'),
('2025-02-01', 5, 4, 4, 4, 5, 'Via Cliente 4, Napoli', 0, 1, 'elaborazione'),
('2025-02-03', 1, 5, 5, 5, 6, 'Via Cliente 5, Firenze', 1, 0, 'consegna'),
('2025-02-03', 4, 6, 6, 6, 7, 'Via Cliente 6, Bologna', 0, 0, 'elaborazione'),
('2025-02-02', 2, 7, 7, 7, 8, 'Via Cliente 7, Palermo', 1, 1, 'consegnato'),
('2025-02-01', 3, 8, 8, 8, 9, 'Via Cliente 8, Genova', 0, 0, 'consegna'),
('2025-02-03', 2, 9, 9, 9, 10, 'Via Cliente 9, Verona', 1, 0, 'elaborazione'),
('2025-02-03', 6, 10, 10, 10, 1, 'Via Cliente 10, Bari', 0, 1, 'consegnato');
GO

-- Inserimenti per la tabella "feedbacks"
-- Si assumono gli id degli ordini e degli utenti coerenti con i precedenti inserimenti
INSERT INTO feedbacks (stelle, commento, stato, idOrdineFK, idUtenteFK) VALUES
(5, 'Ottimo servizio', 'accettato', 1, 1),
(4, 'Buona esperienza', 'accettato', 2, 2),
(3, 'Servizio nella media', 'revisione', 3, 3),
(2, 'Non soddisfatto', 'rifiutato', 4, 4),
(5, 'Eccellente!', 'accettato', 5, 5),
(4, 'Piacevole acquisto', 'accettato', 6, 6),
(3, 'Mediocre', 'revisione', 7, 7),
(5, 'Consigliato', 'accettato', 8, 8),
(4, 'Soddisfatto', 'accettato', 9, 9),
(2, 'Esperienza migliorabile', 'rifiutato', 10, 10);
GO
