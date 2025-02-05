-- inserimento gentilmente fatto da chat

USE TechRetail_B;
GO

-- Inserimenti per la tabella "prodotti"
INSERT INTO prodotti (nome, descrizione, prezzo, immagineURL) VALUES
('Samsung Galaxy S24', 'Smartphone Android con schermo AMOLED 6.8" e fotocamera 200MP', 1299.99, 'https://www.cnet.com/a/img/resize/3bf30f6292574521381b20796f95c9114d96e8a0/hub/2024/01/15/8095bca1-bc1c-41a7-8294-e32d1e102449/p1021005.jpg?auto=webp&width=1200'),
('iPhone 15 Pro', 'Smartphone Apple con chip A17 e display Super Retina XDR', 1199.00, 'https://img.pccomponentes.com/articles/1077/10777839/140-apple-iphone-15-pro-128gb-titanio-natural-libre.jpg'),
('MacBook Pro 16"', 'Laptop Apple con chip M3 Max e schermo Liquid Retina XDR', 2999.00, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/refurb-mbp16touch-silver-gallery-2019_GEO_IT?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1582233077542'),
('Asus ROG Zephyrus G14', 'Laptop gaming con Ryzen 9 e RTX 4070', 1999.99, 'https://images.eprice.it/nobrand/0/hres/220/210989220/DAM210989220-2-7327ba56-05bd-4808-b91b-10352b34f243.jpg'),
('Samsung Galaxy Tab S9', 'Tablet Android con S-Pen e display AMOLED', 849.99, 'https://www.tecnosell.com/media/catalog/product/cache/60c31028333b516fd0f8945d994bb7aa/s/9/s9gr1.jpg'),
('Apple iPad Pro 12.9"', 'Tablet con chip M2 e display Liquid Retina XDR', 1299.00, 'https://m.media-amazon.com/images/I/613d4Bhj3JL._AC_UF1000,1000_QL80_.jpg'),
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
('Sony WH-1000XM5', 'Cuffie wireless premium con cancellazione del rumore avanzata', 399.99, 'https://m.media-amazon.com/images/I/71o8Q5XJS5L._AC_SX679_.jpg'),
('GoPro HERO11 Black', 'Action camera con video 5.3K e stabilizzazione HyperSmooth 5.0', 549.99, 'https://m.media-amazon.com/images/I/61657XytywL._AC_SX679_.jpg'),
('Apple iPad Pro 12.9"', 'Tablet con chip M2 e display Liquid Retina XDR', 1449.00, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/ipad-pro-12-11-select-202210?wid=470&hei=556&fmt=png-alpha&.v=1664414009506'),
('DJI Mavic 3', 'Drone con fotocamera Hasselblad e autonomia di 46 minuti', 2049.00, 'https://m.media-amazon.com/images/I/71ZU+lFaGAL._AC_SX679_.jpg'),
('HP Spectre x360', 'Laptop convertibile con Intel i7 e display OLED 4K', 1699.99, 'https://m.media-amazon.com/images/I/71p6QIHbA1L._AC_SX679_.jpg'),
('Samsung Galaxy Z Fold4', 'Smartphone pieghevole con doppio display e S Pen', 1799.99, 'https://m.media-amazon.com/images/I/71rJ7KDFKYL._AC_SX679_.jpg'),
('Bose SoundLink Revolve+', 'Altoparlante Bluetooth portatile con suono a 360 gradi', 329.95, 'https://m.media-amazon.com/images/I/61rOy6PizML._AC_SX679_.jpg'),
('Fitbit Versa 4', 'Smartwatch fitness con monitoraggio del sonno e GPS integrato', 229.95, 'https://m.media-amazon.com/images/I/61EeY3EIHnL._AC_SX679_.jpg'),
('ASUS ROG Zephyrus G14', 'Laptop gaming con AMD Ryzen 9 e RTX 3060', 1499.99, 'https://m.media-amazon.com/images/I/81-cpFmhqUS._AC_SX679_.jpg'),
('Kindle Oasis', 'eReader con schermo da 7 pollici e luce frontale regolabile', 249.99, 'https://m.media-amazon.com/images/I/61Iu3INdC6L._AC_SX679_.jpg'),
('Google Pixel 7 Pro', 'Smartphone Android con fotocamera avanzata e display 120Hz', 899.00, 'https://store.google.com/product/images/Pixel_7_Pro.png'), 
('HP Spectre x360', 'Ultrabook convertibile con Intel i7 e display OLED 4K', 1599.99, 'https://store.hp.com/app/assets/images/product/5VY83AV_1/center_facing.jpg'),
('Lenovo ThinkPad X1 Carbon', 'Ultrabook business con Intel i7 e display Full HD', 1399.99, 'https://www.lenovo.com/medias/lenovo-laptop-thinkpad-x1-carbon-gen-8-subseries-gallery-1.jpg'), 
('Sony Xperia 5 II', 'Smartphone Android con display OLED e fotocamera avanzata', 799.99, 'https://cdn.sony-asia.com/image/sony/809402/1200x800/00-xperia5ii.jpg'), 
('Apple iPad Pro 12.9', 'Tablet Apple con chip M1 e display Liquid Retina XDR', 1099.99, 'https://www.apple.com/v/ipad-pro/ah/images/overview/hero_endframe__f9veoizhqum6_large.jpg'), 
('Microsoft Surface Laptop 4', 'Laptop con AMD Ryzen 7 e display PixelSense', 1299.99, 'https://microsoftsurface365.com/wp-content/uploads/2021/04/surface-laptop-4-2.jpg'), 
('JBL Charge 5', 'Speaker Bluetooth portatile con bassi potenti e waterproof', 179.99, 'https://m.media-amazon.com/images/I/81Yoxs4D4xL._AC_SX522_.jpg'), 
('Canon EOS R5', 'Fotocamera mirrorless con sensore full-frame e 8K video', 3899.99, 'https://m.media-amazon.com/images/I/81SHg2xjI0L._AC_SX425_.jpg'), 
('GoPro HERO 10', 'Action cam con stabilizzazione HyperSmooth e video 5.3K', 499.99, 'https://m.media-amazon.com/images/I/51nG45FS7ML._AC_SX425_.jpg'), 
('DJI Mavic Air 2', 'Drone con fotocamera 4K e tempo di volo esteso', 799.99, 'https://m.media-amazon.com/images/I/51y30OhW1nL._AC_SX425_.jpg'), 
('Fitbit Charge 5', 'Fitness tracker con monitoraggio del sonno e GPS', 149.99, 'https://m.media-amazon.com/images/I/61xRXnZeFeL._AC_SL1500_.jpg'),
('LG OLED CX', 'TV OLED con processore AI e supporto HDR', 1999.99, 'https://m.media-amazon.com/images/I/81aPGlNbeGL._AC_SL1500_.jpg'),
('Nikon Z6 II', 'Fotocamera mirrorless con doppio processore e video 4K', 1999.99, 'https://m.media-amazon.com/images/I/71JlO8Sh1xL._AC_SX425_.jpg'), 
('Samsung Galaxy S21 Ultra', 'Smartphone con display 120Hz e fotocamera da 108MP', 1199.99, 'https://m.media-amazon.com/images/I/61O45C5qASL._AC_SX425_.jpg'),
('Asus ZenBook Duo', 'Laptop con doppio schermo e Intel i7', 1999.99, 'https://m.media-amazon.com/images/I/61ZHrc6nF0L._AC_SX425_.jpg');
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
('2025-02-01', 5, 4, 4, 4, 5, 'Via Cliente 4, Napoli', 1, 1, 'elaborazione'),
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
