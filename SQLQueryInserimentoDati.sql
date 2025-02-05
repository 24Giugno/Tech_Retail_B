-- inserimento gentilmente fatto da chat

USE TechRetail_B;
GO

-- Inserimenti per la tabella "prodotti"
INSERT INTO prodotti (nome, descrizione, prezzo, immagineURL) VALUES
('Smartphone Galaxy S24', 'Smartphone Android con schermo AMOLED 6.8" e fotocamera 200MP', 1299.99, 'data:image/jpeg;base64,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'),
('iPhone 15 Pro', 'Smartphone Apple con chip A17 e display Super Retina XDR', 1199.00, 'https://img.pccomponentes.com/articles/1077/10777839/140-apple-iphone-15-pro-128gb-titanio-natural-libre.jpg'),
('MacBook Pro 16"', 'Laptop Apple con chip M3 Max e schermo Liquid Retina XDR', 2999.00, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/refurb-mbp16touch-silver-gallery-2019_GEO_IT?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1582233077542'),
('Asus ROG Zephyrus G14', 'Laptop gaming con Ryzen 9 e RTX 4070', 1999.99, 'https://images.eprice.it/nobrand/0/hres/220/210989220/DAM210989220-2-7327ba56-05bd-4808-b91b-10352b34f243.jpg'),
('Samsung Galaxy Tab S9', 'Tablet Android con S-Pen e display AMOLED', 849.99, 'https://www.tecnosell.com/media/catalog/product/cache/60c31028333b516fd0f8945d994bb7aa/s/9/s9gr1.jpg'),
('Apple iPad Pro 12.9"', 'Tablet con chip M2 e display Liquid Retina XDR', 1299.00, 'https://m.media-amazon.com/images/I/613d4Bhj3JL._AC_UF1000,1000_QL80_.jpg'),
('Sony WH-1000XM5', 'Cuffie wireless con cancellazione attiva del rumore', 399.99, 'https://m.media-amazon.com/images/I/61fxPWFu6aL._AC_UF1000,1000_QL80_.jpg'),
('Bose QuietComfort Ultra', 'Cuffie wireless con audio immersivo e ANC', 429.99, 'https://m.media-amazon.com/images/I/51ZR4lyxBHL._AC_UF1000,1000_QL80_.jpg'),
('Apple Watch Ultra 2', 'Smartwatch Apple con GPS avanzato e resistenza 100m', 799.00, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/49-cell-titanium-black-ocean-band-black-ultra?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1724552755715'),
('Samsung Galaxy Watch 6', 'Smartwatch con Wear OS e monitoraggio salute avanzato', 349.99, 'https://m.media-amazon.com/images/I/61Swv-UJIVL.jpg'),
('Dell XPS 15', 'Ultrabook con Intel i9 e display OLED 4K', 2499.99, 'https://www.pc-outlet.it/wedit/uploads/prodotti/2369/notebook-ultrabook-dell-xps-15-9560_2186.jpg'),
('Razer Blade 15', 'Laptop gaming con RTX 4080 e display 360Hz', 2699.99, 'https://m.media-amazon.com/images/I/617y8GpMAaL.jpg'),
('Logitech MX Master 3S', 'Mouse ergonomico con alta precisione e scorrimento veloce', 99.99, 'https://m.media-amazon.com/images/I/61ni3t1ryQL._AC_UF1000,1000_QL80_.jpg'),
('Corsair K95 RGB Platinum', 'Tastiera meccanica con switch Cherry MX e illuminazione RGB', 199.99, 'https://i.ebayimg.com/images/g/Dz0AAOSwo~BgwYp4/s-l1200.jpg'),
('Samsung Odyssey G9', 'Monitor curvo 49" con refresh rate 240Hz', 1399.99, 'https://m.media-amazon.com/images/I/61nlq5B2KqL.jpg'),
('LG C3 OLED 55"', 'TV OLED 4K con supporto Dolby Vision e G-Sync', 1499.99, 'https://www.lg.com/content/dam/channel/wcms/it/oled-tvs/2023/c3-pdp-update/gallery/55c3a/2010-1.jpg/_jcr_content/renditions/thum-1600x1062.jpeg'),
('Sony A95K OLED 65"', 'TV OLED 4K con Cognitive Processor XR', 2999.99, 'https://pixeltv.it/wp-content/uploads/Sony-A95K.webp'),
('GoPro Hero 12 Black', 'Action cam con 5.3K 60fps e HyperSmooth 6.0', 499.99, 'https://static1.unieuro.it/medias/sys_master/root/hcc/he3/45157212717086/-api-rest-00ed29448a7522f610cac04d7b9ea7e0-assets-f0b4b37f4ef51e731676b7a44bc72bad-preview-sgmConversionBaseFormat-sgmThumbFormat.jpg'),
('DJI Mini 4 Pro', 'Drone compatto con 4K HDR e autonomia di 45 min', 899.99, 'https://photo-xl.it/7023-large_default/dji-mini-4-pro.jpg'),
('PlayStation 5', 'Console gaming Sony con SSD ultra-veloce e Ray Tracing', 499.99, 'https://m.media-amazon.com/images/I/51f6iZlNnvL._AC_UF894,1000_QL80_.jpg'),
('Xbox Series X', 'Console Microsoft con supporto 4K e 120FPS', 499.99, 'https://m.media-amazon.com/images/I/61CLCiCNtaL._AC_UF894,1000_QL80_.jpg'),
('Nintendo Switch OLED', 'Console ibrida con display OLED da 7"', 349.99, 'https://www.hidrobrico.it/10241-home_default/nintendo-switch-oled-178-cm-7-64-gb-wi-fi-bianco-10007454-console.jpg'),
('Meta Quest 3', 'Visore VR con tracking avanzato e grafica migliorata', 499.99, 'https://komete-xr.com/cdn/shop/files/Acheter-Meta-Quest-3.webp?v=1695843071'),
('Steam Deck', 'Console portatile con hardware AMD e Steam OS', 399.99, 'https://m.media-amazon.com/images/I/516sb3osGJL._AC_UF894,1000_QL80_.jpg'),
('NVIDIA RTX 4090', 'Scheda grafica per gaming 8K e AI rendering', 1599.99, 'https://m.media-amazon.com/images/I/51c1zFDNVmL.jpg'),
('AMD Radeon RX 7900 XTX', 'GPU top di gamma per gaming e ray tracing', 999.99, 'https://m.media-amazon.com/images/I/81il2WdPPJL.jpg'),
('Samsung 990 Pro 2TB', 'SSD NVMe PCIe 4.0 con velocità 7450 MB/s', 229.99, 'https://m.media-amazon.com/images/I/81JnI8qKs6L.jpg'),
('WD Black SN850X 2TB', 'SSD gaming con supporto DirectStorage', 199.99, 'https://media.ldlc.com/r1600/ld/products/00/05/97/20/LD0005972014.jpg'),
('HyperX Cloud Alpha Wireless', 'Cuffie gaming con 300 ore di autonomia', 199.99, 'https://m.media-amazon.com/images/I/81h57VezuJL.jpg'),
('Elgato Stream Deck XL', 'Controller per streaming con 32 tasti personalizzabili', 249.99, 'https://res.cloudinary.com/elgato-pwa/video/upload/so_40/v1683908267/Stream_Deck_XL_trailer_EN.jpg'),
('Rode Wireless GO II', 'Microfono wireless per creator e streamer', 299.99, 'https://m.media-amazon.com/images/I/519TvRDJyYL._AC_UF1000,1000_QL80_.jpg'),
('Blue Yeti X', 'Microfono USB professionale per podcast e streaming', 169.99, 'https://m.media-amazon.com/images/I/61yw+MkDwpL._AC_UF1000,1000_QL80_.jpg'),
('Sony ZV-1', 'Fotocamera compatta 4K per vlogging', 749.99, 'https://fotodiego.com/wp-content/uploads/2024/06/sy1500030-sonyzv1ii.jpg'),
('Canon EOS R6 Mark II', 'Fotocamera mirrorless full-frame con 40fps', 2499.99, 'https://i1.adis.ws/i/canon/5666C028_EOS-R6-Mark-II_01?w=940&bg=rgb(245,246,246)&fmt=webp&qlt=100&sm=aspect&aspect=1:1'),
('Apple AirPods Pro 2', 'Auricolari wireless con ANC e audio spaziale', 249.99, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airpods-pro-2-hero-select-202409_FMT_WHH?wid=750&hei=556&fmt=jpeg&qlt=90&.v=1724041668836'),
('Google Pixel Buds Pro', 'Auricolari con Google Assistant e ANC', 199.99, 'https://m.media-amazon.com/images/I/61DGBXMDMpL.jpg'),
('OnePlus Pad', 'Tablet Android con display 144Hz e penna inclusa', 479.99, 'https://m.media-amazon.com/images/I/61xavUupweL.jpg'),
('Lenovo ThinkPad X1 Carbon', 'Ultrabook business con Intel i7 e schermo 2K', 1799.99, 'https://m.media-amazon.com/images/I/61jdbnHFGsL._AC_UF1000,1000_QL80_.jpg'),
('HP Spectre x360', 'Convertible laptop con display touch OLED 3K', 1599.99, 'https://www.hp.com/it-it/shop/Html/Merch/Images/c08857547_1750x1285.jpg');
GO

-- Inserimenti per la tabella "filiali"
INSERT INTO filiali (magazzino, indirizzo, email, telefono, disponibileAllaConsegna) VALUES
(1, 'Via dei Missaglia 31, Milano', 'milano_missaglia@techretail.com', '02314881', 0),
(0, 'Via Rosa Bianca 16, Milano', 'milano_rosabianca@techretail.com', '02175092', 1),
(0, 'Corso Giulio Cesare 19, Torino', 'torino_giuliocesare@techretail.com', '011006528', 0),
(0, 'Piazza dei Martiri 5, Napoli', 'napoli_martiri@techretail.com', '081316234', 1),
(0, 'Via Ghibellina 16, Firenze', 'firenze_ghibellina@techretail.com', '055652604', 0),
(0, 'Viale Alfredo Oriani 7, Bologna', 'bologna_oriani@techretail.com', '051307712', 0),
(0, 'Via Maqueda 9, Palermo', 'palermo_maqueda@techretail.com', '091098143', 0),
(0, 'Piazza Caricamento 2, Genova', 'genova_caricamento@techretail.com', '010943688', 0),
(0, 'Via Goffredo Mameli 24, Verona', 'verona_mameli@techretail.com', '045315498', 0),
(0, 'Viale Isonzo 11, Catanzaro', 'catanzaro_isonzo@techretail.com', '0961440301', 0),
(0, 'Via Rio Sparto 8, Pescara', 'pescara_riosparto@techretail.com', '085628476', 0),
(0, 'Via Palmanova 14, Udine', 'udine_palmanova@techretail.com', '0432091144', 0),
(0, 'Corso Trieste 41, Roma', 'roma_trieste@techretail.com', '06653198', 0),
(0, 'Piazza Erminio Ferretto 12, Mestre', 'mestre_ferretto@techretail.com', '041296052', 0),
(0, 'Corso Sidney Sonnino 38, Bari', 'bari_sonnino@techretail.com', '080781033', 0);
GO

-- Inserimenti per la tabella "stocks"
-- Si assume che gli id dei prodotti vadano da 1 a 1000 e quelli delle filiali da 1 a 16
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
(10, 10, 40),
(1, 11, 11),
(7, 12, 23),
(7, 13, 22),
(7, 14, 36),
(7, 14, 45),
(7, 16, 34);
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
