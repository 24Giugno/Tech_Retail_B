CREATE DATABASE TechRetail_B;
USE TechRetail_B;

CREATE TABLE prodotti (
    id INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(200) NOT NULL,
    descrizione NVARCHAR(1500),
	prezzo FLOAT,
    immagineURL NVARCHAR(500)
);

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

CREATE TABLE filiali (
    id INT PRIMARY KEY IDENTITY,
    magazzino BIT NOT NULL,
    indirizzo NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL,
	telefono NVARCHAR(15) NOT NULL,
    disponibileAllaConsegna BIT NOT NULL
);
/*Da sistemare gli indirizzi.......*/
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
(0, 'Via Settevalli 9, Perugia', 'Perugia_settevalli@techretail.com', '075436901', 0),
(0, 'Via Ezio Maccani 29, Trento', 'trento_maccani@techretail.com', '0461725396', 0),
(0, 'Corso Sidney Sonnino 38, Bari', 'bari_sonnino@techretail.com', '080781033', 0);

CREATE TABLE stocks (
    id INT PRIMARY KEY IDENTITY,
    idProdottoFK INT NOT NULL,
    idFilialeFK INT NOT NULL,
    quantita INT NOT NULL CHECK (quantita >= 0),
    FOREIGN KEY (idProdottoFK) REFERENCES prodotti(id),
    FOREIGN KEY (idFilialeFK) REFERENCES filiali(id)
);

/*Inserimento magazzino*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,1,200),
(2,1,200),
(3,1,200),
(4,1,200),
(5,1,200),
(6,1,200),
(7,1,200),
(8,1,200),
(9,1,200),
(10,1,200),
(11,1,200),
(12,1,200),
(13,1,200),
(14,1,200),
(15,1,200),
(16,1,200),
(17,1,200),
(18,1,200),
(19,1,200),
(20,1,200),
(21,1,200),
(22,1,200),
(23,1,200),
(24,1,200),
(25,1,200),
(26,1,200),
(27,1,200),
(28,1,200),
(29,1,200),
(30,1,200),
(31,1,200),
(32,1,200),
(33,1,200),
(34,1,200),
(35,1,200),
(36,1,200),
(37,1,200),
(38,1,200),
(39,1,200),
(40,1,200),
(41,1,200),
(42,1,200),
(43,1,200),
(44,1,200),
(45,1,200),
(46,1,200),
(47,1,200),
(48,1,200),
(49,1,200),
(50,1,200),
(51,1,200),
(52,1,200),
(53,1,200),
(54,1,200),
(55,1,200),
(56,1,200),
(57,1,200),
(58,1,200),
(59,1,200),
(60,1,200),
(61,1,200),
(62,1,200); 

/*Inserimento filiali per consegna*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,2,100),
(2,2,100),
(3,2,100),
(4,2,100),
(5,2,100),
(6,2,100),
(7,2,100),
(8,2,100),
(9,2,100),
(10,2,100),
(11,2,100),
(12,2,100),
(13,2,100),
(14,2,100),
(15,2,100),
(16,2,100),
(17,2,100),
(18,2,100),
(19,2,100),
(20,2,100),
(21,2,100),
(22,2,100),
(23,2,100),
(24,2,100),
(25,2,100),
(26,2,100),
(27,2,100),
(28,2,100),
(29,2,100),
(30,2,100),
(31,2,100),
(32,2,100),
(33,2,100),
(34,2,100),
(35,2,100),
(36,2,100),
(37,2,100),
(38,2,100),
(39,2,100),
(40,2,100),
(41,2,100),
(42,2,100),
(43,2,100),
(44,2,100),
(45,2,100),
(46,2,100),
(47,2,100),
(48,2,100),
(49,2,100),
(50,2,100),
(51,2,100),
(52,2,100),
(53,2,100),
(54,2,100),
(55,2,100),
(56,2,100),
(57,2,100),
(58,2,100),
(59,2,100),
(60,2,100),
(61,2,100),
(62,2,100);

INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,4,100),
(2,4,100),
(3,4,100),
(4,4,100),
(5,4,100),
(6,4,100),
(7,4,100),
(8,4,100),
(9,4,100),
(10,4,100),
(11,4,100),
(12,4,100),
(13,4,100),
(14,4,100),
(15,4,100),
(16,4,100),
(17,4,100),
(18,4,100),
(19,4,100),
(20,4,100),
(21,4,100),
(22,4,100),
(23,4,100),
(24,4,100),
(25,4,100),
(26,4,100),
(27,4,100),
(28,4,100),
(29,4,100),
(30,4,100),
(31,4,100),
(32,4,100),
(33,4,100),
(34,4,100),
(35,4,100),
(36,4,100),
(37,4,100),
(38,4,100),
(39,4,100),
(40,4,100),
(41,4,100),
(42,4,100),
(43,4,100),
(44,4,100),
(45,4,100),
(46,4,100),
(47,4,100),
(48,4,100),
(49,4,100),
(50,4,100),
(51,4,100),
(52,4,100),
(53,4,100),
(54,4,100),
(55,4,100),
(56,4,100),
(57,4,100),
(58,4,100),
(59,4,100),
(60,4,100),
(61,4,100),
(62,4,100);

/*Inserimento altre filiali*/
/*3*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,3,12),
(2,3,5),
(3,3,24),
(4,3,7),
(5,3,19),
(6,3,10),
(7,3,3),
(8,3,21),
(9,3,6),
(10,3,14),
(11,3,1),
(12,3,17),
(13,3,8),
(14,3,23),
(15,3,4),
(16,3,20),
(17,3,11),
(18,3,2),
(19,3,16),
(20,3,9),
(21,3,25),
(22,3,0),
(23,3,13),
(24,3,18),
(25,3,22),
(26,3,15),
(27,3,7),
(28,3,3),
(29,3,24),
(30,3,1),
(31,3,12),
(32,3,5),
(33,3,17),
(34,3,10),
(35,3,21),
(36,3,6),
(37,3,14),
(38,3,4),
(39,3,19),
(40,3,11),
(41,3,8),
(42,3,23),
(43,3,2),
(44,3,16),
(45,3,9),
(46,3,25),
(47,3,0),
(48,3,13),
(49,3,18),
(50,3,22),
(51,3,15),
(52,3,7),
(53,3,3),
(54,3,24),
(55,3,1),
(56,3,12),
(57,3,5),
(58,3,17),
(59,3,10),
(60,3,21),
(61,3,6),
(62,3,14);
/*5*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,5,14),
(2,5,1),
(3,5,19),
(4,5,11),
(5,5,19),
(6,5,2),
(7,5,9),
(8,5,15),
(9,5,5),
(10,5,11),
(11,5,13),
(12,5,3),
(13,5,3),
(14,5,3),
(15,5,20),
(16,5,9),
(17,5,11),
(18,5,13),
(19,5,6),
(20,5,16),
(21,5,21),
(22,5,0),
(23,5,11),
(24,5,17),
(25,5,16),
(26,5,7),
(27,5,10),
(28,5,1),
(29,5,1),
(30,5,18),
(31,5,25),
(32,5,18),
(33,5,20),
(34,5,11),
(35,5,22),
(36,5,18),
(37,5,20),
(38,5,14),
(39,5,15),
(40,5,18),
(41,5,2),
(42,5,23),
(43,5,13),
(44,5,1),
(45,5,17),
(46,5,12),
(47,5,5),
(48,5,4),
(49,5,23),
(50,5,3),
(51,5,18),
(52,5,10),
(53,5,22),
(54,5,1),
(55,5,20),
(56,5,24),
(57,5,11),
(58,5,15),
(59,5,8),
(60,5,23),
(61,5,25),
(62,5,8);
/*6*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,6,18),
(2,6,15),
(3,6,19),
(4,6,15),
(5,6,9),
(6,6,0),
(7,6,20),
(8,6,2),
(9,6,21),
(10,6,11),
(11,6,7),
(12,6,11),
(13,6,16),
(14,6,16),
(15,6,18),
(16,6,12),
(17,6,4),
(18,6,24),
(19,6,3),
(20,6,20),
(21,6,15),
(22,6,3),
(23,6,22),
(24,6,25),
(25,6,1),
(26,6,3),
(27,6,1),
(28,6,10),
(29,6,3),
(30,6,10),
(31,6,3),
(32,6,4),
(33,6,5),
(34,6,9),
(35,6,10),
(36,6,3),
(37,6,22),
(38,6,21),
(39,6,25),
(40,6,10),
(41,6,13),
(42,6,20),
(43,6,25),
(44,6,7),
(45,6,10),
(46,6,17),
(47,6,13),
(48,6,5),
(49,6,6),
(50,6,11),
(51,6,9),
(52,6,7),
(53,6,6),
(54,6,1),
(55,6,6),
(56,6,9),
(57,6,6),
(58,6,8),
(59,6,10),
(60,6,15),
(61,6,3),
(62,6,5);
/*7*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,7,18),
(2,7,10),
(3,7,12),
(4,7,4),
(5,7,2),
(6,7,4),
(7,7,7),
(8,7,16),
(9,7,21),
(10,7,3),
(11,7,19),
(12,7,16),
(13,7,18),
(14,7,24),
(15,7,9),
(16,7,19),
(17,7,8),
(18,7,1),
(19,7,16),
(20,7,9),
(21,7,16),
(22,7,15),
(23,7,4),
(24,7,25),
(25,7,19),
(26,7,21),
(27,7,21),
(28,7,2),
(29,7,2),
(30,7,10),
(31,7,14),
(32,7,2),
(33,7,12),
(34,7,9),
(35,7,14),
(36,7,2),
(37,7,5),
(38,7,8),
(39,7,7),
(40,7,25),
(41,7,8),
(42,7,11),
(43,7,15),
(44,7,12),
(45,7,4),
(46,7,23),
(47,7,23),
(48,7,14),
(49,7,14),
(50,7,1),
(51,7,8),
(52,7,21),
(53,7,12),
(54,7,22),
(55,7,25),
(56,7,8),
(57,7,22),
(58,7,10),
(59,7,17),
(60,7,1),
(61,7,1),
(62,7,23);
/*8*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,8,0),(2,8,1),(3,8,2),(4,8,3),(5,8,4),(6,8,5),(7,8,6),(8,8,7),(9,8,8),(10,8,9),
(11,8,10),(12,8,11),(13,8,12),(14,8,13),(15,8,14),(16,8,15),(17,8,16),(18,8,17),
(19,8,18),(20,8,19),(21,8,20),(22,8,21),(23,8,22),(24,8,23),(25,8,24),(26,8,25),
(27,8,0),(28,8,1),(29,8,2),(30,8,3),(31,8,4),(32,8,5),(33,8,6),(34,8,7),(35,8,8),
(36,8,9),(37,8,10),(38,8,11),(39,8,12),(40,8,13),(41,8,14),(42,8,15),(43,8,16),
(44,8,17),(45,8,18),(46,8,19),(47,8,20),(48,8,21),(49,8,22),(50,8,23),(51,8,24),
(52,8,25),(53,8,0),(54,8,1),(55,8,2),(56,8,3),(57,8,4),(58,8,5),(59,8,6),(60,8,7),
(61,8,8),(62,8,9);
/*9*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,9,17),(2,9,5),(3,9,22),(4,9,8),(5,9,13),(6,9,0),(7,9,25),(8,9,10),(9,9,3),
(10,9,18),(11,9,7),(12,9,14),(13,9,2),(14,9,20),(15,9,11),(16,9,4),(17,9,19),
(18,9,6),(19,9,23),(20,9,12),(21,9,1),(22,9,15),(23,9,9),(24,9,21),(25,9,16),
(26,9,24),(27,9,3),(28,9,8),(29,9,14),(30,9,0),(31,9,5),(32,9,22),(33,9,10),
(34,9,18),(35,9,1),(36,9,13),(37,9,7),(38,9,25),(39,9,4),(40,9,20),(41,9,11),
(42,9,17),(43,9,2),(44,9,6),(45,9,19),(46,9,15),(47,9,23),(48,9,9),(49,9,12),
(50,9,21),(51,9,3),(52,9,16),(53,9,8),(54,9,24),(55,9,14),(56,9,0),(57,9,5),
(58,9,22),(59,9,10),(60,9,18),(61,9,1),(62,9,13);
/*10*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,10,2),(2,10,18),(3,10,5),(4,10,23),(5,10,11),(6,10,0),(7,10,14),(8,10,7),
(9,10,21),(10,10,16),(11,10,3),(12,10,9),(13,10,25),(14,10,12),(15,10,4),
(16,10,19),(17,10,6),(18,10,22),(19,10,1),(20,10,15),(21,10,8),(22,10,24),
(23,10,10),(24,10,17),(25,10,3),(26,10,13),(27,10,0),(28,10,5),(29,10,20),
(30,10,7),(31,10,11),(32,10,2),(33,10,18),(34,10,23),(35,10,16),(36,10,9),
(37,10,25),(38,10,12),(39,10,4),(40,10,19),(41,10,6),(42,10,22),(43,10,1),
(44,10,15),(45,10,8),(46,10,24),(47,10,10),(48,10,17),(49,10,3),(50,10,13),
(51,10,0),(52,10,5),(53,10,20),(54,10,7),(55,10,11),(56,10,2),(57,10,18),
(58,10,23),(59,10,16),(60,10,9),(61,10,25),(62,10,12);
/*11*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,11,7),(2,11,22),(3,11,14),(4,11,3),(5,11,18),(6,11,9),(7,11,0),(8,11,24),
(9,11,12),(10,11,5),(11,11,17),(12,11,10),(13,11,2),(14,11,21),(15,11,15),
(16,11,6),(17,11,25),(18,11,8),(19,11,1),(20,11,19),(21,11,4),(22,11,13),
(23,11,20),(24,11,11),(25,11,23),(26,11,7),(27,11,22),(28,11,14),(29,11,3),
(30,11,18),(31,11,9),(32,11,0),(33,11,24),(34,11,12),(35,11,5),(36,11,17),
(37,11,10),(38,11,2),(39,11,21),(40,11,15),(41,11,6),(42,11,25),(43,11,8),
(44,11,1),(45,11,19),(46,11,4),(47,11,13),(48,11,20),(49,11,11),(50,11,23),
(51,11,7),(52,11,22),(53,11,14),(54,11,3),(55,11,18),(56,11,9),(57,11,0),
(58,11,24),(59,11,12),(60,11,5),(61,11,17),(62,11,10);
/*12*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,12,15),(2,12,4),(3,12,21),(4,12,9),(5,12,0),(6,12,17),(7,12,11),(8,12,24),
(9,12,6),(10,12,19),(11,12,3),(12,12,13),(13,12,22),(14,12,8),(15,12,1),
(16,12,16),(17,12,10),(18,12,25),(19,12,5),(20,12,18),(21,12,2),(22,12,14),
(23,12,7),(24,12,20),(25,12,12),(26,12,23),(27,12,15),(28,12,4),(29,12,21),
(30,12,9),(31,12,0),(32,12,17),(33,12,11),(34,12,24),(35,12,6),(36,12,19),
(37,12,3),(38,12,13),(39,12,22),(40,12,8),(41,12,1),(42,12,16),(43,12,10),
(44,12,25),(45,12,5),(46,12,18),(47,12,2),(48,12,14),(49,12,7),(50,12,20),
(51,12,12),(52,12,23),(53,12,15),(54,12,4),(55,12,21),(56,12,9),(57,12,0),
(58,12,17),(59,12,11),(60,12,24),(61,12,6),(62,12,19);
/*13*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,13,8),(2,13,20),(3,13,3),(4,13,16),(5,13,10),(6,13,23),(7,13,6),(8,13,1),
(9,13,14),(10,13,25),(11,13,9),(12,13,18),(13,13,4),(14,13,12),(15,13,21),
(16,13,7),(17,13,0),(18,13,15),(19,13,2),(20,13,19),(21,13,5),(22,13,24),
(23,13,11),(24,13,17),(25,13,8),(26,13,20),(27,13,3),(28,13,16),(29,13,10),
(30,13,23),(31,13,6),(32,13,1),(33,13,14),(34,13,25),(35,13,9),(36,13,18),
(37,13,4),(38,13,12),(39,13,21),(40,13,7),(41,13,0),(42,13,15),(43,13,2),
(44,13,19),(45,13,5),(46,13,24),(47,13,11),(48,13,17),(49,13,8),(50,13,20),
(51,13,3),(52,13,16),(53,13,10),(54,13,23),(55,13,6),(56,13,1),(57,13,14),
(58,13,25),(59,13,9),(60,13,18),(61,13,4),(62,13,12);
/*14*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,14,25),(2,14,7),(3,14,13),(4,14,1),(5,14,19),(6,14,4),(7,14,11),(8,14,22),
(9,14,6),(10,14,16),(11,14,0),(12,14,24),(13,14,9),(14,14,15),(15,14,3),
(16,14,21),(17,14,8),(18,14,18),(19,14,5),(20,14,12),(21,14,23),(22,14,10),
(23,14,2),(24,14,17),(25,14,25),(26,14,7),(27,14,13),(28,14,1),(29,14,19),
(30,14,4),(31,14,11),(32,14,22),(33,14,6),(34,14,16),(35,14,0),(36,14,24),
(37,14,9),(38,14,15),(39,14,3),(40,14,21),(41,14,8),(42,14,18),(43,14,5),
(44,14,12),(45,14,23),(46,14,10),(47,14,2),(48,14,17),(49,14,25),(50,14,7),
(51,14,13),(52,14,1),(53,14,19),(54,14,4),(55,14,11),(56,14,22),(57,14,6),
(58,14,16),(59,14,0),(60,14,24),(61,14,9),(62,14,15);
/*15*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,15,12),(2,15,24),(3,15,7),(4,15,1),(5,15,16),(6,15,9),(7,15,21),(8,15,4),
(9,15,14),(10,15,0),(11,15,19),(12,15,6),(13,15,23),(14,15,11),(15,15,3),
(16,15,18),(17,15,8),(18,15,25),(19,15,10),(20,15,2),(21,15,17),(22,15,5),
(23,15,13),(24,15,22),(25,15,15),(26,15,12),(27,15,24),(28,15,7),(29,15,1),
(30,15,16),(31,15,9),(32,15,21),(33,15,4),(34,15,14),(35,15,0),(36,15,19),
(37,15,6),(38,15,23),(39,15,11),(40,15,3),(41,15,18),(42,15,8),(43,15,25),
(44,15,10),(45,15,2),(46,15,17),(47,15,5),(48,15,13),(49,15,22),(50,15,15),
(51,15,12),(52,15,24),(53,15,7),(54,15,1),(55,15,16),(56,15,9),(57,15,21),
(58,15,4),(59,15,14),(60,15,0),(61,15,19),(62,15,6);
/*16*/
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1,16,5),(2,16,18),(3,16,9),(4,16,23),(5,16,1),(6,16,14),(7,16,0),(8,16,20),
(9,16,7),(10,16,12),(11,16,25),(12,16,4),(13,16,17),(14,16,10),(15,16,3),
(16,16,22),(17,16,6),(18,16,15),(19,16,2),(20,16,19),(21,16,8),(22,16,24),
(23,16,11),(24,16,13),(25,16,5),(26,16,18),(27,16,9),(28,16,23),(29,16,1),
(30,16,14),(31,16,0),(32,16,20),(33,16,7),(34,16,12),(35,16,25),(36,16,4),
(37,16,17),(38,16,10),(39,16,3),(40,16,22),(41,16,6),(42,16,15),(43,16,2),
(44,16,19),(45,16,8),(46,16,24),(47,16,11),(48,16,13),(49,16,5),(50,16,18),
(51,16,9),(52,16,23),(53,16,1),(54,16,14),(55,16,0),(56,16,20),(57,16,7),
(58,16,12),(59,16,25),(60,16,4),(61,16,17),(62,16,10);

/*Non ricordo se è corretto avere la 17esima*/

CREATE TABLE utenti (
    id INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(100) NOT NULL,
    cognome NVARCHAR(100) NOT NULL,
    mail NVARCHAR(255) NOT NULL UNIQUE,
    passw NVARCHAR(255) NOT NULL,
    ruolo NVARCHAR(50) CHECK (ruolo IN ('staff', 'cliente', 'admin')),
    idFilialeFK INT NULL,
    FOREIGN KEY (idFilialeFK) REFERENCES filiali(id)
);
/*Inserimento staff*/
-- Utente con ruolo 'cliente'
INSERT INTO utenti (nome, cognome, mail, passw, ruolo, idFilialeFK) VALUES
('Marco', 'Rossi', 'marco.rossi@example.com', 'p@ssw0rd123', 'cliente', NULL);
--Utente con ruolo admin
INSERT INTO utenti (nome, cognome, mail, passw, ruolo, idFilialeFK) VALUES
('Admin', 'Master', 'admin.master@example.com', 'Adm1nPassw0rd', 'admin', 2);

-- Utenti con ruolo 'staff' (almeno 3 per ogni idFilialeFK da 2 a 16)
INSERT INTO utenti (nome, cognome, mail, passw, ruolo, idFilialeFK) VALUES

('Luigi', 'Bianchi', 'luigi.bianchi@example.com', 's3cur3p4ss', 'staff', 2),
('Sara', 'Ferrari', 'sara.ferrari@example.com', 'myP@ssw0rd', 'staff', 2),
('Giovanni', 'Russo', 'giovanni.russo@example.com', 'passw0rd!', 'staff', 2),

('Anna', 'Verdi', 'anna.verdi@example.com', 'verd1pass', 'staff', 3),
('Paolo', 'Esposito', 'paolo.esposito@example.com', 'espo12345', 'staff', 3),
('Francesca', 'Greco', 'francesca.greco@example.com', 'gr3c0pass', 'staff', 3),

('Maria', 'Costa', 'maria.costa@example.com', 'costapass', 'staff', 4),
('Alessandro', 'Martinez', 'alessandro.martinez@example.com', 'mart1nez', 'staff', 4),
('Laura', 'Conte', 'laura.conte@example.com', 'cont3pass', 'staff', 4),

('Davide', 'Lopez', 'davide.lopez@example.com', 'l0pez123', 'staff', 5),
('Simona', 'Moretti', 'simona.moretti@example.com', 'm0rett1', 'staff', 5),
('Andrea', 'Tamburi', 'andrea.tamburi@example.com', 'tambur1', 'staff', 5),

('Valentina', 'Neri', 'valentina.neri@example.com', 'n3ripass', 'staff', 6),
('Matteo', 'Colombo', 'matteo.colombo@example.com', 'col0mb0', 'staff', 6),
('Chiara', 'Barone', 'chiara.barone@example.com', 'bar0ne123', 'staff', 6),

('Giulia', 'Caruso', 'giulia.caruso@example.com', 'c4rus0pass', 'staff', 7),
('Fabio', 'Di Carlo', 'fabio.dicarlo@example.com', 'dic4rlo', 'staff', 7),
('Elisa', 'Rizzo', 'elisa.rizzo@example.com', 'rizz0pass', 'staff', 7),

('Roberta', 'Mancini', 'roberta.mancini@example.com', 'm4nc1n1', 'staff', 8),
('Tommaso', 'Romano', 'tommaso.romano@example.com', 'rom4n0pass', 'staff', 8),
('Silvia', 'Galli', 'silvia.galli@example.com', 'g4llipass', 'staff', 8),

('Antonio', 'Bruno', 'antonio.bruno@example.com', 'brun0pass', 'staff', 9),
('Isabella', 'Villa', 'isabella.villa@example.com', 'vill4pass', 'staff', 9),
('Enrico', 'Coppola', 'enrico.coppola@example.com', 'c0pp0lapass', 'staff', 9),

('Patrizia', 'Donati', 'patrizia.donati@example.com', 'd0n4tipass', 'staff', 10),
('Nicola', 'Ferri', 'nicola.ferri@example.com', 'f3rr1pass', 'staff', 10),
('Elena', 'Marino', 'elena.marino@example.com', 'm4r1nopass', 'staff', 10),

('Stefania', 'Amato', 'stefania.amato@example.com', 'am4topass', 'staff', 11),
('Alberto', 'De Luca', 'alberto.deluca@example.com', 'd3luc4pass', 'staff', 11),
('Monica', 'Parisi', 'monica.parisi@example.com', 'p4risipass', 'staff', 11),

('Giuseppe', 'Pellegrino', 'giuseppe.pellegrino@example.com', 'p3llegpass', 'staff', 12),
('Camilla', 'Grassi', 'camilla.grassi@example.com', 'gr4ssipass', 'staff', 12),
('Riccardo', 'Mora', 'riccardo.mora@example.com', 'mor4pass', 'staff', 12),

('Beatrice', 'Fontana', 'beatrice.fontana@example.com', 'f0nt4napass', 'staff', 13),
('Michele', 'Orlando', 'michele.orlando@example.com', '0rl4ndopass', 'staff', 13),
('Daniela', 'Ricci', 'daniela.ricci@example.com', 'r1ccipass', 'staff', 13),

('Alessia', 'Calderoni', 'alessia.calderoni@example.com', 'c4ld3ronipass', 'staff', 14),
('Gabriele', 'Marchetti', 'gabriele.marchetti@example.com', 'm4rchett1', 'staff', 14),
('Valeria', 'Bernardi', 'valeria.bernardi@example.com', 'b3rn4rdipass', 'staff', 14),

('Simone', 'Battaglia', 'simone.battaglia@example.com', 'b4tt4gliapass', 'staff', 15),
('Federica', 'Mariani', 'federica.mariani@example.com', 'm4r1anipass', 'staff', 15),
('Leonardo', 'Pagano', 'leonardo.pagano@example.com', 'p4g4nopass', 'staff', 15),

('Alice', 'Caputo', 'alice.caputo@example.com', 'c4putopass', 'staff', 16),
('Claudio', 'Gallo', 'claudio.gallo@example.com', 'g4ll0pass', 'staff', 16),
('Sofia', 'Zambrano', 'sofia.zambrano@example.com', 'z4mbr4nopass', 'staff', 16);

CREATE TABLE ordini (
    id INT PRIMARY KEY IDENTITY,
    data DATE default getdate(),
    quantita INT NOT NULL CHECK (quantita > 0),
    idUtenteFK INT NOT NULL,
    idProdottoFK INT NOT NULL,
    idFilialePartenzaFK INT NOT NULL,
    idFilialeArrivoFK INT ,
    indirizzoConsegna NVARCHAR(255),
    inLoco BIT NOT NULL,
    restock BIT NOT NULL,
	stato VARCHAR(50) CHECK(stato IN ('elaborazione','consegna','consegnato')),
    FOREIGN KEY (idUtenteFK) REFERENCES utenti(id),
    FOREIGN KEY (idProdottoFK) REFERENCES prodotti(id),
    FOREIGN KEY (idFilialePartenzaFK) REFERENCES filiali(id),
    FOREIGN KEY (idFilialeArrivoFK) REFERENCES filiali(id)
);

--ordini al magazzino
INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
-- Ordine 1
(1, 12, 2, '2025-01-15', 1, NULL, 'Via Roma 12, Milano', 0, 0, 'elaborazione'),
-- Ordine 2
(1, 25, 3, '2025-01-20', 1, NULL, 'Piazza Duomo 5, Torino', 0, 0, 'consegna'),
-- Ordine 3
(1, 37, 1, '2025-01-22', 1, NULL, 'Corso Vittorio Emanuele 18, Palermo', 0, 0, 'consegnato'),
-- Ordine 4
(1, 49, 2, '2025-01-10', 1, NULL, 'Viale Europa 7, Bologna', 0, 0, 'elaborazione'),
-- Ordine 5
(1, 56, 3, '2025-01-18', 1, NULL, 'Strada Statale 10, Genova', 0, 0, 'consegna'),
-- Ordine 6
(1, 7, 1, '2025-01-24', 1, NULL, 'Largo Leopardi 9, Firenze', 0, 0, 'consegnato'),
-- Ordine 7
(1, 19, 2, '2025-01-16', 1, NULL, 'Piazza Fontana 14, Napoli', 0, 0, 'elaborazione'),
-- Ordine 8
(1, 31, 3, '2025-01-26', 1, NULL, 'Via Dante 23, Verona', 0, 0, 'consegna'),
-- Ordine 9
(1, 43, 1, '2025-01-12', 1, NULL, 'Corso Umberto I 30, Catania', 0, 0, 'consegnato'),
-- Ordine 10
(1, 55, 2, '2025-01-28', 1, NULL, 'Viale Italia 5, Trieste', 0, 0, 'elaborazione'),
-- Ordine 11
(1, 8, 1, '2025-02-01', 1, NULL, 'Piazza San Marco 1, Venezia', 0, 0, 'consegna'),
-- Ordine 12
(1, 20, 3, '2025-02-03', 1, NULL, 'Via Garibaldi 11, Cagliari', 0, 0, 'consegnato'),
-- Ordine 13
(1, 32, 2, '2025-02-05', 1, NULL, 'Corso Vittorio Veneto 15, Ancona', 0, 0, 'elaborazione'),
-- Ordine 14
(1, 44, 1, '2025-02-07', 1, NULL, 'Strada Principale 7, Bari', 0, 0, 'consegna'),
-- Ordine 15
(1, 57, 3, '2025-02-02', 1, NULL, 'Largo della Repubblica 20, Padova', 0, 0, 'consegnato'),
-- Ordine 16
(1, 9, 2, '2025-02-04', 1, NULL, 'Viale Europa 8, Modena', 0, 0, 'elaborazione'),
-- Ordine 17
(1, 21, 1, '2025-02-06', 1, NULL, 'Piazza del Popolo 12, Roma', 0, 0, 'consegna'),
-- Ordine 18
(1, 33, 3, '2025-02-08', 1, NULL, 'Corso Umberto I 25, Reggio Calabria', 0, 0, 'consegnato'),
-- Ordine 19
(1, 45, 2, '2025-02-09', 1, NULL, 'Via delle Mura 10, Siena', 0, 0, 'elaborazione'),
-- Ordine 20
(1, 58, 1, '2025-02-10', 1, NULL, 'Strada Nuova 17, Udine', 0, 0, 'consegna');
--restock dal magazzino
INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
-- Ordine 1
(2, 15, 3, '2025-01-12', 1, 5, NULL, 0, 1, 'elaborazione'),
-- Ordine 2
(2, 28, 2, '2025-01-18', 1, 9, NULL, 0, 1, 'consegna'),
-- Ordine 3
(2, 41, 1, '2025-01-24', 1, 12, NULL, 0, 1, 'consegnato'),
-- Ordine 4
(2, 54, 3, '2025-01-28', 1, 3, NULL, 0, 1, 'elaborazione'),
-- Ordine 5
(2, 7, 2, '2025-02-01', 1, 7, NULL, 0, 1, 'consegna'),
-- Ordine 6
(2, 20, 1, '2025-02-03', 1, 10, NULL, 0, 1, 'consegnato'),
-- Ordine 7
(2, 33, 3, '2025-02-05', 1, 14, NULL, 0, 1, 'elaborazione'),
-- Ordine 8
(2, 46, 2, '2025-02-07', 1, 6, NULL, 0, 1, 'consegna'),
-- Ordine 9
(2, 59, 1, '2025-02-09', 1, 11, NULL, 0, 1, 'consegnato'),
-- Ordine 10
(2, 8, 3, '2025-02-10', 1, 16, NULL, 0, 1, 'elaborazione');

--ordini ai Negozi
--filiali con magazzino
	--Filiale 2
		--ordini online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
-- Ordine 1
(1, 13, 2, '2025-01-14', 2, NULL, 'Via Dante 5, Milano', 0, 0, 'elaborazione'),
-- Ordine 2
(1, 26, 3, '2025-01-19', 2, NULL, 'Piazza Vittorio 7, Torino', 0, 0, 'consegna'),
-- Ordine 3
(1, 38, 1, '2025-01-23', 2, NULL, 'Corso Garibaldi 20, Palermo', 0, 0, 'consegnato'),
-- Ordine 4
(1, 50, 2, '2025-01-11', 2, NULL, 'Viale Stazione 8, Bologna', 0, 0, 'elaborazione'),
-- Ordine 5
(1, 57, 3, '2025-01-17', 2, NULL, 'Strada Provinciale 11, Genova', 0, 0, 'consegna'),
-- Ordine 6
(1, 8, 1, '2025-01-25', 2, NULL, 'Largo San Giovanni 10, Firenze', 0, 0, 'consegnato'),
-- Ordine 7
(1, 20, 2, '2025-01-15', 2, NULL, 'Piazza Mercato 15, Napoli', 0, 0, 'elaborazione'),
-- Ordine 8
(1, 32, 3, '2025-01-27', 2, NULL, 'Via Cavour 24, Verona', 0, 0, 'consegna'),
-- Ordine 9
(1, 44, 1, '2025-01-13', 2, NULL, 'Corso Italia 31, Catania', 0, 0, 'consegnato'),
-- Ordine 10
(1, 56, 2, '2025-01-29', 2, NULL, 'Viale Europa 6, Trieste', 0, 0, 'elaborazione'),
-- Ordine 11
(1, 9, 1, '2025-02-02', 2, NULL, 'Piazza San Marco 2, Venezia', 0, 0, 'consegna'),
-- Ordine 12
(1, 21, 3, '2025-02-04', 2, NULL, 'Via Umberto I 12, Cagliari', 0, 0, 'consegnato'),
-- Ordine 13
(1, 33, 2, '2025-02-06', 2, NULL, 'Corso Vittorio Veneto 16, Ancona', 0, 0, 'elaborazione'),
-- Ordine 14
(1, 45, 1, '2025-02-08', 2, NULL, 'Strada Centrale 8, Bari', 0, 0, 'consegna'),
-- Ordine 15
(1, 58, 3, '2025-02-03', 2, NULL, 'Largo della Repubblica 21, Padova', 0, 0, 'consegnato'),
-- Ordine 16
(1, 10, 2, '2025-02-05', 2, NULL, 'Viale Europa 9, Modena', 0, 0, 'elaborazione'),
-- Ordine 17
(1, 22, 1, '2025-02-07', 2, NULL, 'Piazza del Popolo 13, Roma', 0, 0, 'consegna'),
-- Ordine 18
(1, 34, 3, '2025-02-09', 2, NULL, 'Corso Umberto I 26, Reggio Calabria', 0, 0, 'consegnato'),
-- Ordine 19
(1, 46, 2, '2025-02-10', 2, NULL, 'Via delle Mura 11, Siena', 0, 0, 'elaborazione'),
-- Ordine 20
(1, 59, 1, '2025-02-11', 2, NULL, 'Strada Nuova 18, Udine', 0, 0, 'consegna');
		
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES

-- Ordine 1
(1, 12, 2, '2025-01-12', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 2
(1, 25, 3, '2025-01-15', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 3
(1, 38, 1, '2025-01-18', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 4
(1, 51, 2, '2025-01-20', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 5
(1, 7, 3, '2025-01-22', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 6
(1, 20, 1, '2025-01-25', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 7
(1, 33, 2, '2025-01-28', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 8
(1, 46, 3, '2025-02-01', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 9
(1, 59, 2, '2025-02-03', 2, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 10
(1, 8, 1, '2025-02-05', 2, NULL, NULL, 1, 0, 'consegnato');

		--ordini restock
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES

-- Ordine 1
(2, 16, 3, '2025-01-13', 2, 6, NULL, 0, 1, 'elaborazione'),
-- Ordine 2
(2, 29, 2, '2025-01-19', 2, 10, NULL, 0, 1, 'consegna'),
-- Ordine 3
(2, 42, 1, '2025-01-25', 2, 13, NULL, 0, 1, 'consegnato'),
-- Ordine 4
(2, 55, 3, '2025-01-29', 2, 4, NULL, 0, 1, 'elaborazione'),
-- Ordine 5
(2, 8, 2, '2025-02-02', 2, 8, NULL, 0, 1, 'consegna'),
-- Ordine 6
(2, 21, 1, '2025-02-04', 2, 11, NULL, 0, 1, 'consegnato'),
-- Ordine 7
(2, 34, 3, '2025-02-06', 2, 15, NULL, 0, 1, 'elaborazione'),
-- Ordine 8
(2, 47, 2, '2025-02-08', 2, 5, NULL, 0, 1, 'consegna'),
-- Ordine 9
(2, 60, 1, '2025-02-10', 2, 12, NULL, 0, 1, 'consegnato'),
-- Ordine 10
(2, 9, 3, '2025-02-11', 2, 16, NULL, 0, 1, 'elaborazione');

	--Filiale 4
		--ordini online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES

-- Ordine 1
(1, 14, 2, '2025-01-15', 4, NULL, 'Corso Vittorio 6, Milano', 0, 0, 'elaborazione'),
-- Ordine 2
(1, 27, 3, '2025-01-20', 4, NULL, 'Piazza Reale 8, Torino', 0, 0, 'consegna'),
-- Ordine 3
(1, 39, 1, '2025-01-24', 4, NULL, 'Via Indipendenza 21, Palermo', 0, 0, 'consegnato'),
-- Ordine 4
(1, 51, 2, '2025-01-12', 4, NULL, 'Viale Centrale 9, Bologna', 0, 0, 'elaborazione'),
-- Ordine 5
(1, 58, 3, '2025-01-18', 4, NULL, 'Strada Principale 12, Genova', 0, 0, 'consegna'),
-- Ordine 6
(1, 9, 1, '2025-01-26', 4, NULL, 'Largo San Marco 11, Firenze', 0, 0, 'consegnato'),
-- Ordine 7
(1, 21, 2, '2025-01-16', 4, NULL, 'Piazza del Sole 16, Napoli', 0, 0, 'elaborazione'),
-- Ordine 8
(1, 33, 3, '2025-01-28', 4, NULL, 'Via Mazzini 25, Verona', 0, 0, 'consegna'),
-- Ordine 9
(1, 45, 1, '2025-01-14', 4, NULL, 'Corso Libertà 32, Catania', 0, 0, 'consegnato'),
-- Ordine 10
(1, 57, 2, '2025-01-30', 4, NULL, 'Viale Italia 7, Trieste', 0, 0, 'elaborazione'),
-- Ordine 11
(1, 10, 1, '2025-02-03', 4, NULL, 'Piazza San Giorgio 3, Venezia', 0, 0, 'consegna'),
-- Ordine 12
(1, 22, 3, '2025-02-05', 4, NULL, 'Via Regina Margherita 13, Cagliari', 0, 0, 'consegnato'),
-- Ordine 13
(1, 34, 2, '2025-02-07', 4, NULL, 'Corso Umberto II 17, Ancona', 0, 0, 'elaborazione'),
-- Ordine 14
(1, 46, 1, '2025-02-09', 4, NULL, 'Strada Provinciale 9, Bari', 0, 0, 'consegna'),
-- Ordine 15
(1, 59, 3, '2025-02-04', 4, NULL, 'Largo della Libertà 22, Padova', 0, 0, 'consegnato'),
-- Ordine 16
(1, 11, 2, '2025-02-06', 4, NULL, 'Viale Europa 10, Modena', 0, 0, 'elaborazione'),
-- Ordine 17
(1, 23, 1, '2025-02-08', 4, NULL, 'Piazza del Popolo 14, Roma', 0, 0, 'consegna'),
-- Ordine 18
(1, 35, 3, '2025-02-10', 4, NULL, 'Corso Umberto I 27, Reggio Calabria', 0, 0, 'consegnato'),
-- Ordine 19
(1, 47, 2, '2025-02-11', 4, NULL, 'Via delle Mura 12, Siena', 0, 0, 'elaborazione'),
-- Ordine 20
(1, 60, 1, '2025-02-12', 4, NULL, 'Strada Nuova 19, Udine', 0, 0, 'consegna');
		
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES

-- Ordine 1
(1, 13, 2, '2025-01-13', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 2
(1, 26, 3, '2025-01-16', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 3
(1, 39, 1, '2025-01-19', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 4
(1, 52, 2, '2025-01-21', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 5
(1, 8, 3, '2025-01-23', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 6
(1, 21, 1, '2025-01-26', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 7
(1, 34, 2, '2025-01-29', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 8
(1, 47, 3, '2025-02-02', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 9
(1, 60, 2, '2025-02-04', 4, NULL, NULL, 1, 0, 'consegnato'),
-- Ordine 10
(1, 9, 1, '2025-02-06', 4, NULL, NULL, 1, 0, 'consegnato');

		--ordini restock
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES

-- Ordine 1
(2, 17, 3, '2025-01-14', 4, 7, NULL, 0, 1, 'elaborazione'),
-- Ordine 2
(2, 30, 2, '2025-01-20', 4, 11, NULL, 0, 1, 'consegna'),
-- Ordine 3
(2, 43, 1, '2025-01-26', 4, 14, NULL, 0, 1, 'consegnato'),
-- Ordine 4
(2, 56, 3, '2025-01-30', 4, 5, NULL, 0, 1, 'elaborazione'),
-- Ordine 5
(2, 9, 2, '2025-02-03', 4, 9, NULL, 0, 1, 'consegna'),
-- Ordine 6
(2, 22, 1, '2025-02-05', 4, 12, NULL, 0, 1, 'consegnato'),
-- Ordine 7
(2, 35, 3, '2025-02-07', 4, 16, NULL, 0, 1, 'elaborazione'),
-- Ordine 8
(2, 48, 2, '2025-02-09', 4, 6, NULL, 0, 1, 'consegna'),
-- Ordine 9
(2, 61, 1, '2025-02-11', 4, 13, NULL, 0, 1, 'consegnato'),
-- Ordine 10
(2, 10, 3, '2025-02-12', 4, 8, NULL, 0, 1, 'elaborazione');

--filiali normali
	--Filiale 3
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 14, 2, '2025-01-14', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 27, 3, '2025-01-17', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 40, 1, '2025-01-20', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 53, 2, '2025-01-22', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 9, 3, '2025-01-24', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 22, 1, '2025-01-27', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 35, 2, '2025-01-29', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 48, 3, '2025-02-01', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 61, 2, '2025-02-03', 3, NULL, NULL, 1, 0, 'consegnato'),
(1, 10, 1, '2025-02-05', 3, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 14, 2, '2025-01-14', 3, NULL, 'Via Dante 12, Milano', 0, 0, 'elaborazione'),
(1, 27, 3, '2025-01-17', 3, NULL, 'Piazza Duomo 5, Torino', 0, 0, 'consegna'),
(1, 40, 1, '2025-01-20', 3, NULL, 'Corso Vittorio Emanuele 18, Palermo', 0, 0, 'consegnato'),
(1, 53, 2, '2025-01-22', 3, NULL, 'Viale Europa 7, Bologna', 0, 0, 'elaborazione'),
(1, 9, 3, '2025-01-24', 3, NULL, 'Strada Statale 10, Genova', 0, 0, 'consegna'),
(1, 22, 1, '2025-01-26', 3, NULL, 'Largo Leopardi 9, Firenze', 0, 0, 'consegnato'),
(1, 35, 2, '2025-01-28', 3, NULL, 'Piazza Fontana 14, Napoli', 0, 0, 'elaborazione'),
(1, 48, 3, '2025-02-01', 3, NULL, 'Via Dante 23, Verona', 0, 0, 'consegna'),
(1, 61, 1, '2025-02-03', 3, NULL, 'Corso Umberto I 30, Catania', 0, 0, 'consegnato'),
(1, 10, 2, '2025-02-05', 3, NULL, 'Viale Italia 5, Trieste', 0, 0, 'elaborazione');

	--Filiale 5
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 15, 2, '2025-01-15', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 28, 3, '2025-01-18', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 41, 1, '2025-01-21', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 54, 2, '2025-01-23', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 10, 3, '2025-01-25', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 23, 1, '2025-01-28', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 36, 2, '2025-01-30', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 49, 3, '2025-02-02', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 62, 2, '2025-02-04', 5, NULL, NULL, 1, 0, 'consegnato'),
(1, 11, 1, '2025-02-06', 5, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 15, 2, '2025-01-15', 5, NULL, 'Piazza San Marco 1, Venezia', 0, 0, 'elaborazione'),
(1, 28, 3, '2025-01-18', 5, NULL, 'Via Garibaldi 11, Cagliari', 0, 0, 'consegna'),
(1, 41, 1, '2025-01-21', 5, NULL, 'Corso Vittorio Veneto 15, Ancona', 0, 0, 'consegnato'),
(1, 54, 2, '2025-01-23', 5, NULL, 'Strada Principale 7, Bari', 0, 0, 'elaborazione'),
(1, 11, 3, '2025-01-25', 5, NULL, 'Largo della Repubblica 20, Padova', 0, 0, 'consegna'),
(1, 24, 1, '2025-01-27', 5, NULL, 'Viale Europa 8, Modena', 0, 0, 'consegnato'),
(1, 37, 2, '2025-01-29', 5, NULL, 'Piazza del Popolo 12, Roma', 0, 0, 'elaborazione'),
(1, 50, 3, '2025-02-02', 5, NULL, 'Corso Umberto I 25, Reggio Calabria', 0, 0, 'consegna'),
(1, 62, 1, '2025-02-04', 5, NULL, 'Via delle Mura 10, Siena', 0, 0, 'consegnato'),
(1, 12, 2, '2025-02-06', 5, NULL, 'Strada Nuova 17, Udine', 0, 0, 'elaborazione');

	--Filiale 6
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 16, 2, '2025-01-16', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 29, 3, '2025-01-19', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 42, 1, '2025-01-22', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 55, 2, '2025-01-24', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 11, 3, '2025-01-26', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 24, 1, '2025-01-29', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 37, 2, '2025-01-31', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 50, 3, '2025-02-03', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 1, 2, '2025-02-05', 6, NULL, NULL, 1, 0, 'consegnato'),
(1, 12, 1, '2025-02-07', 6, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 16, 2, '2025-01-16', 6, NULL, 'Via Roma 12, Milano', 0, 0, 'elaborazione'),
(1, 29, 3, '2025-01-19', 6, NULL, 'Piazza Vittorio 7, Torino', 0, 0, 'consegna'),
(1, 42, 1, '2025-01-22', 6, NULL, 'Corso Garibaldi 20, Palermo', 0, 0, 'consegnato'),
(1, 55, 2, '2025-01-24', 6, NULL, 'Viale Stazione 8, Bologna', 0, 0, 'elaborazione'),
(1, 12, 3, '2025-01-26', 6, NULL, 'Strada Provinciale 11, Genova', 0, 0, 'consegna'),
(1, 25, 1, '2025-01-28', 6, NULL, 'Largo San Giovanni 10, Firenze', 0, 0, 'consegnato'),
(1, 38, 2, '2025-01-30', 6, NULL, 'Piazza Mercato 15, Napoli', 0, 0, 'elaborazione'),
(1, 51, 3, '2025-02-02', 6, NULL, 'Via Cavour 24, Verona', 0, 0, 'consegna'),
(1, 60, 1, '2025-02-04', 6, NULL, 'Corso Italia 31, Catania', 0, 0, 'consegnato'),
(1, 13, 2, '2025-02-06', 6, NULL, 'Viale Europa 6, Trieste', 0, 0, 'elaborazione');
	--Filiale 7
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 17, 2, '2025-01-17', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 30, 3, '2025-01-20', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 43, 1, '2025-01-23', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 56, 2, '2025-01-25', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 12, 3, '2025-01-27', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 25, 1, '2025-01-30', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 38, 2, '2025-02-01', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 51, 3, '2025-02-03', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 2, 2, '2025-02-05', 7, NULL, NULL, 1, 0, 'consegnato'),
(1, 13, 1, '2025-02-07', 7, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 17, 2, '2025-01-17', 7, NULL, 'Via Dante 5, Milano', 0, 0, 'elaborazione'),
(1, 30, 3, '2025-01-20', 7, NULL, 'Piazza Vittorio 8, Torino', 0, 0, 'consegna'),
(1, 43, 1, '2025-01-23', 7, NULL, 'Corso Garibaldi 21, Palermo', 0, 0, 'consegnato'),
(1, 56, 2, '2025-01-25', 7, NULL, 'Viale Stazione 9, Bologna', 0, 0, 'elaborazione'),
(1, 13, 3, '2025-01-27', 7, NULL, 'Strada Provinciale 12, Genova', 0, 0, 'consegna'),
(1, 26, 1, '2025-01-29', 7, NULL, 'Largo San Giovanni 11, Firenze', 0, 0, 'consegnato'),
(1, 39, 2, '2025-01-31', 7, NULL, 'Piazza Mercato 16, Napoli', 0, 0, 'elaborazione'),
(1, 52, 3, '2025-02-03', 7, NULL, 'Via Cavour 25, Verona', 0, 0, 'consegna'),
(1, 61, 1, '2025-02-05', 7, NULL, 'Corso Italia 32, Catania', 0, 0, 'consegnato'),
(1, 14, 2, '2025-02-07', 7, NULL, 'Viale Europa 7, Trieste', 0, 0, 'elaborazione');
	--Filiale 8
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 18, 2, '2025-01-18', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 31, 3, '2025-01-21', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 44, 1, '2025-01-24', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 57, 2, '2025-01-26', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 13, 3, '2025-01-28', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 26, 1, '2025-01-31', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 39, 2, '2025-02-02', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 52, 3, '2025-02-04', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 3, 2, '2025-02-06', 8, NULL, NULL, 1, 0, 'consegnato'),
(1, 14, 1, '2025-02-08', 8, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 18, 2, '2025-01-18', 8, NULL, 'Via Garibaldi 5, Milano', 0, 0, 'elaborazione'),
(1, 31, 3, '2025-01-21', 8, NULL, 'Piazza Reale 7, Torino', 0, 0, 'consegna'),
(1, 44, 1, '2025-01-24', 8, NULL, 'Corso Indipendenza 20, Palermo', 0, 0, 'consegnato'),
(1, 57, 2, '2025-01-26', 8, NULL, 'Viale Centrale 8, Bologna', 0, 0, 'elaborazione'),
(1, 14, 3, '2025-01-28', 8, NULL, 'Strada Provinciale 13, Genova', 0, 0, 'consegna'),
(1, 27, 1, '2025-01-30', 8, NULL, 'Largo San Marco 10, Firenze', 0, 0, 'consegnato'),
(1, 40, 2, '2025-02-02', 8, NULL, 'Piazza del Sole 15, Napoli', 0, 0, 'elaborazione'),
(1, 53, 3, '2025-02-04', 8, NULL, 'Via Mazzini 24, Verona', 0, 0, 'consegna'),
(1, 62, 1, '2025-02-06', 8, NULL, 'Corso Libertà 33, Catania', 0, 0, 'consegnato'),
(1, 15, 2, '2025-02-08', 8, NULL, 'Viale Italia 6, Trieste', 0, 0, 'elaborazione');
	--Filiale 9
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 19, 2, '2025-01-19', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 32, 3, '2025-01-22', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 45, 1, '2025-01-25', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 58, 2, '2025-01-27', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 14, 3, '2025-01-29', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 27, 1, '2025-02-01', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 40, 2, '2025-02-03', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 53, 3, '2025-02-05', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 4, 2, '2025-02-07', 9, NULL, NULL, 1, 0, 'consegnato'),
(1, 15, 1, '2025-02-09', 9, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 19, 2, '2025-01-19', 9, NULL, 'Corso Vittorio 6, Milano', 0, 0, 'elaborazione'),
(1, 32, 3, '2025-01-22', 9, NULL, 'Piazza Reale 8, Torino', 0, 0, 'consegna'),
(1, 45, 1, '2025-01-25', 9, NULL, 'Via Indipendenza 21, Palermo', 0, 0, 'consegnato'),
(1, 58, 2, '2025-01-27', 9, NULL, 'Viale Centrale 9, Bologna', 0, 0, 'elaborazione'),
(1, 15, 3, '2025-01-29', 9, NULL, 'Strada Provinciale 14, Genova', 0, 0, 'consegna'),
(1, 28, 1, '2025-01-31', 9, NULL, 'Largo San Marco 11, Firenze', 0, 0, 'consegnato'),
(1, 41, 2, '2025-02-03', 9, NULL, 'Piazza del Sole 16, Napoli', 0, 0, 'elaborazione'),
(1, 54, 3, '2025-02-05', 9, NULL, 'Via Mazzini 25, Verona', 0, 0, 'consegna'),
(1, 60, 1, '2025-02-07', 9, NULL, 'Corso Libertà 34, Catania', 0, 0, 'consegnato'),
(1, 16, 2, '2025-02-09', 9, NULL, 'Viale Italia 7, Trieste', 0, 0, 'elaborazione');
	--Filiale 10
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 20, 2, '2025-01-20', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 33, 3, '2025-01-23', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 46, 1, '2025-01-26', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 59, 2, '2025-01-28', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 15, 3, '2025-01-30', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 28, 1, '2025-02-02', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 41, 2, '2025-02-04', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 54, 3, '2025-02-06', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 5, 2, '2025-02-08', 10, NULL, NULL, 1, 0, 'consegnato'),
(1, 16, 1, '2025-02-10', 10, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 20, 2, '2025-01-20', 10, NULL, 'Corso Vittorio 7, Milano', 0, 0, 'elaborazione'),
(1, 33, 3, '2025-01-23', 10, NULL, 'Piazza Reale 9, Torino', 0, 0, 'consegna'),
(1, 46, 1, '2025-01-26', 10, NULL, 'Via Indipendenza 22, Palermo', 0, 0, 'consegnato'),
(1, 59, 2, '2025-01-28', 10, NULL, 'Viale Centrale 10, Bologna', 0, 0, 'elaborazione'),
(1, 16, 3, '2025-01-30', 10, NULL, 'Strada Provinciale 15, Genova', 0, 0, 'consegna'),
(1, 29, 1, '2025-02-02', 10, NULL, 'Largo San Marco 12, Firenze', 0, 0, 'consegnato'),
(1, 42, 2, '2025-02-04', 10, NULL, 'Piazza del Sole 17, Napoli', 0, 0, 'elaborazione'),
(1, 55, 3, '2025-02-06', 10, NULL, 'Via Mazzini 26, Verona', 0, 0, 'consegna'),
(1, 60, 1, '2025-02-08', 10, NULL, 'Corso Libertà 35, Catania', 0, 0, 'consegnato'),
(1, 17, 2, '2025-02-10', 10, NULL, 'Viale Italia 8, Trieste', 0, 0, 'elaborazione');
	--Filiale 11
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 21, 2, '2025-01-21', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 34, 3, '2025-01-24', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 47, 1, '2025-01-27', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 60, 2, '2025-01-29', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 16, 3, '2025-01-31', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 29, 1, '2025-02-03', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 42, 2, '2025-02-05', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 55, 3, '2025-02-07', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 6, 2, '2025-02-09', 11, NULL, NULL, 1, 0, 'consegnato'),
(1, 17, 1, '2025-02-11', 11, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 21, 2, '2025-01-21', 11, NULL, 'Corso Vittorio 8, Milano', 0, 0, 'elaborazione'),
(1, 34, 3, '2025-01-24', 11, NULL, 'Piazza Reale 10, Torino', 0, 0, 'consegna'),
(1, 47, 1, '2025-01-27', 11, NULL, 'Via Indipendenza 23, Palermo', 0, 0, 'consegnato'),
(1, 60, 2, '2025-01-29', 11, NULL, 'Viale Centrale 11, Bologna', 0, 0, 'elaborazione'),
(1, 17, 3, '2025-01-31', 11, NULL, 'Strada Provinciale 16, Genova', 0, 0, 'consegna'),
(1, 30, 1, '2025-02-03', 11, NULL, 'Largo San Marco 13, Firenze', 0, 0, 'consegnato'),
(1, 43, 2, '2025-02-05', 11, NULL, 'Piazza del Sole 18, Napoli', 0, 0, 'elaborazione'),
(1, 56, 3, '2025-02-07', 11, NULL, 'Via Mazzini 27, Verona', 0, 0, 'consegna'),
(1, 59, 1, '2025-02-09', 11, NULL, 'Corso Libertà 36, Catania', 0, 0, 'consegnato'),
(1, 18, 2, '2025-02-11', 11, NULL, 'Viale Italia 9, Trieste', 0, 0, 'elaborazione');
	--Filiale 12
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 22, 2, '2025-01-22', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 35, 3, '2025-01-25', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 48, 1, '2025-01-28', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 61, 2, '2025-01-30', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 17, 3, '2025-02-01', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 30, 1, '2025-02-03', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 43, 2, '2025-02-05', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 56, 3, '2025-02-07', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 7, 2, '2025-02-09', 12, NULL, NULL, 1, 0, 'consegnato'),
(1, 18, 1, '2025-02-11', 12, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 22, 2, '2025-01-22', 12, NULL, 'Corso Vittorio 9, Milano', 0, 0, 'elaborazione'),
(1, 35, 3, '2025-01-25', 12, NULL, 'Piazza Reale 11, Torino', 0, 0, 'consegna'),
(1, 48, 1, '2025-01-28', 12, NULL, 'Via Indipendenza 24, Palermo', 0, 0, 'consegnato'),
(1, 61, 2, '2025-01-30', 12, NULL, 'Viale Centrale 12, Bologna', 0, 0, 'elaborazione'),
(1, 18, 3, '2025-02-01', 12, NULL, 'Strada Provinciale 17, Genova', 0, 0, 'consegna'),
(1, 31, 1, '2025-02-03', 12, NULL, 'Largo San Marco 14, Firenze', 0, 0, 'consegnato'),
(1, 44, 2, '2025-02-05', 12, NULL, 'Piazza del Sole 19, Napoli', 0, 0, 'elaborazione'),
(1, 57, 3, '2025-02-07', 12, NULL, 'Via Mazzini 28, Verona', 0, 0, 'consegna'),
(1, 60, 1, '2025-02-09', 12, NULL, 'Corso Libertà 37, Catania', 0, 0, 'consegnato'),
(1, 19, 2, '2025-02-11', 12, NULL, 'Viale Italia 10, Trieste', 0, 0, 'elaborazione');
	--Filiale 13
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 23, 2, '2025-01-23', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 36, 3, '2025-01-26', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 49, 1, '2025-01-29', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 1, 2, '2025-01-31', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 18, 3, '2025-02-02', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 31, 1, '2025-02-04', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 44, 2, '2025-02-06', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 57, 3, '2025-02-08', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 8, 2, '2025-02-10', 13, NULL, NULL, 1, 0, 'consegnato'),
(1, 19, 1, '2025-02-12', 13, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 22, 2, '2025-01-22', 12, NULL, 'Corso Vittorio 9, Milano', 0, 0, 'elaborazione'),
(1, 35, 3, '2025-01-25', 12, NULL, 'Piazza Reale 11, Torino', 0, 0, 'consegna'),
(1, 48, 1, '2025-01-28', 12, NULL, 'Via Indipendenza 24, Palermo', 0, 0, 'consegnato'),
(1, 61, 2, '2025-01-30', 12, NULL, 'Viale Centrale 12, Bologna', 0, 0, 'elaborazione'),
(1, 18, 3, '2025-02-01', 12, NULL, 'Strada Provinciale 17, Genova', 0, 0, 'consegna'),
(1, 31, 1, '2025-02-03', 12, NULL, 'Largo San Marco 14, Firenze', 0, 0, 'consegnato'),
(1, 44, 2, '2025-02-05', 12, NULL, 'Piazza del Sole 19, Napoli', 0, 0, 'elaborazione'),
(1, 57, 3, '2025-02-07', 12, NULL, 'Via Mazzini 28, Verona', 0, 0, 'consegna'),
(1, 60, 1, '2025-02-09', 12, NULL, 'Corso Libertà 37, Catania', 0, 0, 'consegnato'),
(1, 19, 2, '2025-02-11', 12, NULL, 'Viale Italia 10, Trieste', 0, 0, 'elaborazione');
	--Filiale 14
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 24, 2, '2025-01-24', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 37, 3, '2025-01-27', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 50, 1, '2025-01-29', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 2, 2, '2025-01-31', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 19, 3, '2025-02-03', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 32, 1, '2025-02-05', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 45, 2, '2025-02-07', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 58, 3, '2025-02-09', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 9, 2, '2025-02-11', 14, NULL, NULL, 1, 0, 'consegnato'),
(1, 20, 1, '2025-02-13', 14, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 24, 2, '2025-01-24', 14, NULL, 'Corso Vittorio 11, Milano', 0, 0, 'elaborazione'),
(1, 37, 3, '2025-01-27', 14, NULL, 'Piazza Reale 13, Torino', 0, 0, 'consegna'),
(1, 50, 1, '2025-01-30', 14, NULL, 'Via Indipendenza 26, Palermo', 0, 0, 'consegnato'),
(1, 61, 2, '2025-02-01', 14, NULL, 'Viale Centrale 14, Bologna', 0, 0, 'elaborazione'),
(1, 20, 3, '2025-02-03', 14, NULL, 'Strada Provinciale 19, Genova', 0, 0, 'consegna'),
(1, 33, 1, '2025-02-05', 14, NULL, 'Largo San Marco 16, Firenze', 0, 0, 'consegnato'),
(1, 46, 2, '2025-02-07', 14, NULL, 'Piazza del Sole 21, Napoli', 0, 0, 'elaborazione'),
(1, 59, 3, '2025-02-09', 14, NULL, 'Via Mazzini 30, Verona', 0, 0, 'consegna'),
(1, 62, 1, '2025-02-11', 14, NULL, 'Corso Libertà 39, Catania', 0, 0, 'consegnato'),
(1, 21, 2, '2025-02-13', 14, NULL, 'Viale Italia 12, Trieste', 0, 0, 'elaborazione');
	--Filiale 15
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 25, 2, '2025-01-25', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 38, 3, '2025-01-28', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 51, 1, '2025-01-30', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 3, 2, '2025-02-01', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 20, 3, '2025-02-03', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 33, 1, '2025-02-05', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 46, 2, '2025-02-07', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 59, 3, '2025-02-09', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 10, 2, '2025-02-11', 15, NULL, NULL, 1, 0, 'consegnato'),
(1, 21, 1, '2025-02-13', 15, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 25, 2, '2025-01-25', 15, NULL, 'Corso Vittorio 12, Milano', 0, 0, 'elaborazione'),
(1, 38, 3, '2025-01-28', 15, NULL, 'Piazza Reale 14, Torino', 0, 0, 'consegna'),
(1, 51, 1, '2025-01-31', 15, NULL, 'Via Indipendenza 27, Palermo', 0, 0, 'consegnato'),
(1, 54, 2, '2025-02-02', 15, NULL, 'Viale Centrale 15, Bologna', 0, 0, 'elaborazione'),
(1, 21, 3, '2025-02-04', 15, NULL, 'Strada Provinciale 20, Genova', 0, 0, 'consegna'),
(1, 34, 1, '2025-02-06', 15, NULL, 'Largo San Marco 17, Firenze', 0, 0, 'consegnato'),
(1, 47, 2, '2025-02-08', 15, NULL, 'Piazza del Sole 22, Napoli', 0, 0, 'elaborazione'),
(1, 60, 3, '2025-02-10', 15, NULL, 'Via Mazzini 31, Verona', 0, 0, 'consegna'),
(1, 23, 1, '2025-02-12', 15, NULL, 'Corso Libertà 40, Catania', 0, 0, 'consegnato'),
(1, 22, 2, '2025-02-14', 15, NULL, 'Viale Italia 13, Trieste', 0, 0, 'elaborazione');
	--Filiale 16
		--ordini inLoco
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 26, 2, '2025-01-26', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 39, 3, '2025-01-29', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 52, 1, '2025-01-31', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 4, 2, '2025-02-02', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 21, 3, '2025-02-04', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 34, 1, '2025-02-06', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 47, 2, '2025-02-08', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 60, 3, '2025-02-10', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 11, 2, '2025-02-12', 16, NULL, NULL, 1, 0, 'consegnato'),
(1, 22, 1, '2025-02-14', 16, NULL, NULL, 1, 0, 'consegnato');
		--ordini Online
		INSERT INTO ordini (idUtenteFK, idProdottoFK, quantita, data, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
(1, 26, 2, '2025-01-26', 16, NULL, 'Corso Vittorio 13, Milano', 0, 0, 'elaborazione'),
(1, 39, 3, '2025-01-29', 16, NULL, 'Piazza Reale 15, Torino', 0, 0, 'consegna'),
(1, 52, 1, '2025-02-01', 16, NULL, 'Via Indipendenza 28, Palermo', 0, 0, 'consegnato'),
(1, 45, 2, '2025-02-03', 16, NULL, 'Viale Centrale 16, Bologna', 0, 0, 'elaborazione'),
(1, 22, 3, '2025-02-05', 16, NULL, 'Strada Provinciale 21, Genova', 0, 0, 'consegna'),
(1, 35, 1, '2025-02-07', 16, NULL, 'Largo San Marco 18, Firenze', 0, 0, 'consegnato'),
(1, 48, 2, '2025-02-09', 16, NULL, 'Piazza del Sole 23, Napoli', 0, 0, 'elaborazione'),
(1, 61, 3, '2025-02-11', 16, NULL, 'Via Mazzini 32, Verona', 0, 0, 'consegna'),
(1, 54, 1, '2025-02-13', 16, NULL, 'Corso Libertà 41, Catania', 0, 0, 'consegnato'),
(1, 23, 2, '2025-02-15', 16, NULL, 'Viale Italia 14, Trieste', 0, 0, 'elaborazione');


CREATE TABLE feedbacks (
    id INT PRIMARY KEY IDENTITY,
    stelle INT NOT NULL CHECK (stelle BETWEEN 1 AND 5),
    commento NVARCHAR(500),
    stato VARCHAR(50)CHECK (stato IN ('revisione', 'accettato', 'rifiutato')),
    idOrdineFK INT NOT NULL,
    idUtenteFK INT NOT NULL,
    FOREIGN KEY (idOrdineFK) REFERENCES ordini(id),
    FOREIGN KEY (idUtenteFK) REFERENCES utenti(id)
);

--feedbacks casuali generati
INSERT INTO feedbacks (stelle, commento, stato, idOrdineFK, idUtenteFK) VALUES

-- Feedback 1-10
(3, 'Il prodotto è arrivato in tempo, ma la qualità lascia a desiderare.', 'revisione', 15, 1),
(5, 'Ottimo servizio e prodotto impeccabile!', 'revisione', 87, 1),
(2, 'Purtroppo il prodotto non corrisponde alle aspettative.', 'revisione', 123, 1),
(4, 'Molto soddisfatto del servizio e della velocità di consegna.', 'revisione', 210, 1),
(1, 'Pessima esperienza, il prodotto è difettoso.', 'revisione', 35, 1),
(5, 'Tutto perfetto, consiglio vivamente!', 'revisione', 99, 1),
(3, 'Il prodotto è decente, ma ci sono alcuni miglioramenti da fare.', 'revisione', 178, 1),
(4, 'Consegna veloce e prodotto di buona qualità.', 'revisione', 256, 1),
(2, 'Non molto contento del prodotto ricevuto.', 'revisione', 312, 1),
(5, 'Un vero ottimo acquisto, ne sono felice!', 'revisione', 58, 1),

-- Feedback 11-20
(4, 'Servizio impeccabile, raccomandato!', 'revisione', 105, 1),
(3, 'Qualità accettabile, nulla di straordinario.', 'revisione', 189, 1),
(5, 'Prodotti fantastici e servizio clienti eccellente.', 'revisione', 234, 1),
(2, 'Disappointing experience, the product is not what I expected.', 'revisione', 45, 1),
(4, 'La consegna è stata rapida e il prodotto è di buona qualità.', 'revisione', 76, 1),
(3, 'Soddisfatto in parte, alcune migliorie sarebbero necessarie.', 'revisione', 145, 1),
(5, 'Un grande acquisto, lo consiglio caldamente!', 'revisione', 213, 1),
(1, 'Pessima esperienza, non comprerei di nuovo.', 'revisione', 300, 1),
(4, 'Molto contento sia del prodotto che del servizio.', 'revisione', 88, 1),
(3, 'L''esperienza è stata positiva, ma con margini di miglioramento.', 'revisione', 199, 1),

-- Feedback 21-30
(5, 'Ottimo prodotto e servizio cliente sempre disponibile.', 'revisione', 111, 1),
(2, 'Il prodotto non ha rispettato le mie aspettative.', 'revisione', 222, 1),
(4, 'Velocità di consegna eccezionale e prodotto di alta qualità.', 'revisione', 333, 1),
(3, 'Buona qualità, ma il packaging potrebbe essere migliorato.', 'revisione', 44, 1),
(5, 'Un acquisto davvero soddisfacente!', 'revisione', 67, 1),
(1, 'Deluso dal prodotto, non vale i soldi spesi.', 'revisione', 156, 1),
(4, 'Tutto ok, nessun problema durante l''acquisto.', 'revisione', 245, 1),
(3, 'Il prodotto è discreto, ma nulla di speciale.', 'revisione', 310, 1),
(5, 'Un servizio eccellente, complimenti!', 'revisione', 78, 1),
(2, 'Il prodotto è arrivato danneggiato.', 'revisione', 187, 1),

-- Feedback 31-40
(4, 'Consegna veloce e prodotto in ottime condizioni.', 'revisione', 90, 1),
(3, 'Esperienza positiva, ma con piccoli inconvenienti.', 'revisione', 165, 1),
(5, 'Un acquisto di cui sono molto soddisfatto!', 'revisione', 230, 1),
(1, 'Pessima esperienza, il prodotto è difettoso.', 'revisione', 35, 1),
(4, 'Il servizio è stato efficiente e professionale.', 'revisione', 101, 1),
(3, 'Il prodotto è decente, ma manca qualcosa.', 'revisione', 180, 1),
(5, 'Un prodotto eccezionale, lo consiglio!', 'revisione', 255, 1),
(2, 'Non ho apprezzato la qualità del prodotto.', 'revisione', 40, 1),
(4, 'Consegna rapida e prodotto come descritto.', 'revisione', 70, 1),
(3, 'Esperienza media, nulla di particolarmente impressionante.', 'revisione', 140, 1),

-- Feedback 41-50
(5, 'Un servizio impeccabile, complimenti!', 'revisione', 220, 1),
(1, 'Deluso dalla qualità del prodotto.', 'revisione', 33, 1),
(4, 'Molto soddisfatto sia del prodotto che del servizio.', 'revisione', 95, 1),
(3, 'Il prodotto è ok, ma c''è spazio per miglioramenti.', 'revisione', 168, 1),
(5, 'Un acquisto di successo, tutto perfetto!', 'revisione', 240, 1),
(2, 'Il prodotto non è all''altezza delle aspettative.', 'revisione', 50, 1),
(4, 'Consegna veloce e prodotto di alta qualità.', 'revisione', 82, 1),
(3, 'Esperienza positiva, ma con qualche piccolo dettaglio da sistemare.', 'revisione', 175, 1),
(5, 'Un servizio straordinario, complimenti!', 'revisione', 250, 1),
(1, 'Pessima esperienza, non lo raccomando.', 'revisione', 35, 1),

-- Feedback 51-60
(4, 'Il prodotto è arrivato in tempo e in ottime condizioni.', 'revisione', 102, 1),
(3, 'Qualità accettabile, ma nulla di straordinario.', 'revisione', 183, 1),
(5, 'Un prodotto fantastico, lo consiglio!', 'revisione', 235, 1),
(2, 'Il prodotto non è all''altezza delle mie aspettative.', 'revisione', 44, 1),
(4, 'Consegna veloce e servizio eccellente.', 'revisione', 77, 1),
(3, 'Il prodotto è discreto, ma potrebbe essere migliorato.', 'revisione', 146, 1),
(5, 'Un acquisto di cui sono molto felice!', 'revisione', 215, 1),
(1, 'Deluso dalla qualità del prodotto.', 'revisione', 30, 1),
(4, 'Tutto è andato lisamente, nessun problema.', 'revisione', 89, 1),
(3, 'Esperienza positiva, ma con piccoli margini di miglioramento.', 'revisione', 160, 1),

-- Feedback 61-70
(5, 'Un servizio impeccabile, complimenti!', 'revisione', 225, 1),
(2, 'Il prodotto non mi ha convinto del tutto.', 'revisione', 38, 1),
(4, 'Consegna veloce e prodotto di alta qualità.', 'revisione', 72, 1),
(3, 'Il prodotto è decente, ma nulla di straordinario.', 'revisione', 148, 1),
(5, 'Un acquisto fantastico, lo consiglio vivamente!', 'revisione', 218, 1),
(1, 'Pessima esperienza, il prodotto è arrivato rotto.', 'revisione', 330, 1),
(4, 'Servizio efficiente e prodotto come descritto.', 'revisione', 93, 1),
(3, 'L''esperienza è stata positiva, ma con margini di miglioramento.', 'revisione', 170, 1),
(5, 'Un prodotto eccezionale, lo consiglio!', 'revisione', 242, 1),
(2, 'Il prodotto non è all''altezza delle aspettative.', 'revisione', 48, 1),

-- Feedback 71-80
(4, 'Consegna veloce e servizio clienti eccellente.', 'revisione', 75, 1),
(3, 'Il prodotto è discreto, ma manca qualcosa.', 'revisione', 150, 1),
(5, 'Un acquisto di successo, tutto perfetto!', 'revisione', 232, 1),
(1, 'Deluso dalla qualità del prodotto.', 'revisione', 36, 1),
(4, 'Il servizio è stato efficiente e professionale.', 'revisione', 97, 1),
(3, 'Esperienza positiva, ma con piccoli problemi.', 'revisione', 163, 1),
(5, 'Un prodotto eccezionale, lo consiglio caldamente!', 'revisione', 248, 1),
(2, 'Il prodotto non è arrivato come descritto.', 'revisione', 42, 1),
(4, 'Consegna veloce e prodotto in ottime condizioni.', 'revisione', 85, 1),
(3, 'Il prodotto è decente, ma nulla di straordinario.', 'revisione', 152, 1),

-- Feedback 81-90
(5, 'Un servizio impeccabile, complimenti!', 'revisione', 228, 1),
(1, 'Pessima esperienza, il prodotto è difettoso.', 'revisione', 34, 1),
(4, 'Molto soddisfatto sia del prodotto che del servizio.', 'revisione', 91, 1),
(3, 'Il prodotto è ok, ma con margini di miglioramento.', 'revisione', 167, 1),
(5, 'Un acquisto di cui sono molto soddisfatto!', 'revisione', 217, 1),
(2, 'Il prodotto non è all''altezza delle mie aspettative.', 'revisione', 46, 1),
(4, 'Consegna veloce e servizio clienti eccellente.', 'revisione', 79, 1),
(3, 'Il prodotto è decente, ma nulla di straordinario.', 'revisione', 149, 1),
(5, 'Un servizio eccezionale, complimenti!', 'revisione', 236, 1),
(1, 'Deluso dalla qualità del prodotto.', 'revisione', 32, 1),

-- Feedback 91-100
(4, 'Consegna veloce e prodotto in ottime condizioni.', 'revisione', 84, 1),
(3, 'Il prodotto è discreto, ma potrebbe essere migliorato.', 'revisione', 155, 1),
(5, 'Un acquisto fantastico, lo consiglio!', 'revisione', 221, 1),
(2, 'Il prodotto non è arrivato come descritto.', 'revisione', 41, 1),
(4, 'Servizio efficiente e prodotto di alta qualità.', 'revisione', 73, 1),
(3, 'Esperienza positiva, ma con piccoli margini di miglioramento.', 'revisione', 161, 1),
(5, 'Un servizio impeccabile, complimenti!', 'revisione', 233, 1),
(1, 'Pessima esperienza, il prodotto è arrivato rotto.', 'revisione', 31, 1),
(4, 'Consegna veloce e prodotto come descritto.', 'revisione', 81, 1),
(3, 'Il prodotto è decente, ma nulla di straordinario.', 'revisione', 158, 1);

CREATE TABLE Comunicazioni (
    id INT PRIMARY KEY IDENTITY,
    idUtenteFK INT NOT NULL,
    Contenuto VARCHAR(500),
    DataOra DATETIME DEFAULT SYSDATETIME(),
    FOREIGN KEY (idUtenteFK) REFERENCES Utenti(id)
);

INSERT INTO Comunicazioni (idUtenteFK, Contenuto, DataOra) VALUES
(1, 'Messaggio interno di prova del sistema di comunicazione. ricevete questo messaggio?','2025-02-05 14:30:00'),
(2, 'messaggio ricevuto!','2025-02-05 14:31:00'),
(1, 'gli altri?','2025-02-05 14:32:00'),
(3, 'riceviamo anche noi forte e chiaro.','2025-02-05 14:34:00');
