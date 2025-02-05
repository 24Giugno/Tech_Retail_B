﻿-- inserimento gentilmente fatto da chat

USE TechRetail_B;
GO

-- Inserimenti per la tabella "prodotti"
INSERT INTO prodotti (nome, descrizione, prezzo, immagineURL) VALUES
('Samsung Galaxy S24', 'Smartphone Android con schermo AMOLED 6.8" e fotocamera 200MP', 1299.99, 'https://www.cnet.com/a/img/resize/3bf30f6292574521381b20796f95c9114d96e8a0/hub/2024/01/15/8095bca1-bc1c-41a7-8294-e32d1e102449/p1021005.jpg?auto=webp&width=1200'),
('Apple iPhone 15 Pro', 'Smartphone Apple con chip A17 e display Super Retina XDR', 1199.00, 'https://img.pccomponentes.com/articles/1077/10777839/140-apple-iphone-15-pro-128gb-titanio-natural-libre.jpg'),
('Apple MacBook Pro 16"', 'Laptop Apple con chip M3 Max e schermo Liquid Retina XDR', 2999.00, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/refurb-mbp16touch-silver-gallery-2019_GEO_IT?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1582233077542'),
('Asus ROG Zephyrus G14', 'Laptop gaming con Ryzen 9 e RTX 4070', 1999.99, 'https://images.eprice.it/nobrand/0/hres/220/210989220/DAM210989220-2-7327ba56-05bd-4808-b91b-10352b34f243.jpg'),
('Samsung Galaxy Tab S9', 'Tablet Android con S-Pen e display AMOLED', 849.99, 'https://www.tecnosell.com/media/catalog/product/cache/60c31028333b516fd0f8945d994bb7aa/s/9/s9gr1.jpg'),
('Bose QuietComfort Ultra', 'Cuffie wireless con audio immersivo e ANC', 429.99, 'https://m.media-amazon.com/images/I/51ZR4lyxBHL._AC_UF1000,1000_QL80_.jpg'),
('Apple Watch Ultra 2', 'Smartwatch Apple con GPS avanzato e resistenza 100m', 799.00, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/49-cell-titanium-black-ocean-band-black-ultra?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1724552755715'),
('Samsung Galaxy Watch 6', 'Smartwatch con Wear OS e monitoraggio salute avanzato', 349.99, 'https://m.media-amazon.com/images/I/61Swv-UJIVL.jpg'),
('Dell XPS 15', 'Ultrabook con Intel i9 e display OLED 4K', 2499.99, 'https://www.pc-outlet.it/wedit/uploads/prodotti/2369/notebook-ultrabook-dell-xps-15-9560_2186.jpg'),
('Logitech MX Master 3S', 'Mouse ergonomico con alta precisione e scorrimento veloce', 99.99, 'https://m.media-amazon.com/images/I/61ni3t1ryQL._AC_UF1000,1000_QL80_.jpg'),
('Corsair K95 RGB Platinum', 'Tastiera meccanica con switch Cherry MX e illuminazione RGB', 199.99, 'https://i.ebayimg.com/images/g/Dz0AAOSwo~BgwYp4/s-l1200.jpg'),
('Samsung Odyssey G9', 'Monitor curvo 49" con refresh rate 240Hz', 1399.99, 'https://m.media-amazon.com/images/I/61nlq5B2KqL.jpg'),
('LG C3 OLED 55"', 'TV OLED 4K con supporto Dolby Vision e G-Sync', 1499.99, 'https://www.lg.com/content/dam/channel/wcms/it/oled-tvs/2023/c3-pdp-update/gallery/55c3a/2010-1.jpg/_jcr_content/renditions/thum-1600x1062.jpeg'),
('Sony A95K OLED 65"', 'TV OLED 4K con Cognitive Processor XR', 2999.99, 'https://pixeltv.it/wp-content/uploads/Sony-A95K.webp'),
('GoPro Hero 12 Black', 'Action cam con 5.3K 60fps e HyperSmooth 6.0', 499.99, 'https://static1.unieuro.it/medias/sys_master/root/hcc/he3/45157212717086/-api-rest-00ed29448a7522f610cac04d7b9ea7e0-assets-f0b4b37f4ef51e731676b7a44bc72bad-preview-sgmConversionBaseFormat-sgmThumbFormat.jpg'),
('DJI Mini 4 Pro', 'Drone compatto con 4K HDR e autonomia di 45 min', 899.99, 'https://photo-xl.it/7023-large_default/dji-mini-4-pro.jpg'),
('Sony PlayStation 5', 'Console gaming Sony con SSD ultra-veloce e Ray Tracing', 499.99, 'https://m.media-amazon.com/images/I/51f6iZlNnvL._AC_UF894,1000_QL80_.jpg'),
('Microsoft Xbox Series S', 'Console Microsoft con supporto 4K e 120FPS', 499.99, 'https://m.media-amazon.com/images/I/61CLCiCNtaL._AC_UF894,1000_QL80_.jpg'),
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
('Huawei P40 Pro', 'Smartphone con quadrupla fotocamera Leica e 5G', 999.99, 'https://consumer.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/phones/p40-pro/images/p40-pro-kv.jpg'),
('Dell XPS 13', 'Ultrabook con display InfinityEdge e processore Intel Core i7', 1399.99, 'https://i.dell.com/sites/csimages/Video_Imagery/all/xps-13-9305-laptop-touch-notebook.jpg'),
('Asus ROG Strix G15', 'Laptop gaming con GPU NVIDIA RTX 3060 e display 144Hz', 1599.99, 'https://dlcdnwebimgs.asus.com/gain/0938cb7a-8189-432d-939e-7a452e857c1e/'),
('Amazon Echo Dot (4ª Gen)', 'Smart speaker con Alexa integrato', 49.99, 'https://m.media-amazon.com/images/I/714Rq4k05UL._AC_SL1000_.jpg'),
('Sony WH-1000XM4', 'Cuffie wireless con cancellazione del rumore avanzata', 349.99, 'https://m.media-amazon.com/images/I/71o8Q5XJS5L._AC_SX425_.jpg'),
('Lenovo ThinkPad X1 Carbon', 'Laptop business ultraleggero con sicurezza avanzata', 1599.99, 'https://www.lenovo.com/medias/thinkpad-x1-carbon-gen-9-subseries-hero.png?context=bWFzdGVyfHJvb3R8ODI4NDd8aW1hZ2UvcG5nfGg0Mi9oZGYvMTA1MTk0MDgzNTE5MjYucG5nfDU0YmZhZDk5MjJkN2MyYmY1YjhmNDVlNmM0ODhlODBjZjdiZWUwOWIwMTc3YjU4ZTUxMzA5NmQ1MzNmMTkzN2Q'),
('Apple MacBook Air M2', 'Laptop leggero con chip Apple M2 e batteria di lunga durata', 1199.99, 'https://www.apple.com/v/macbook-air-m2/j/images/overview/hero_endframe__ea0qze85eyi6_large.jpg'),
('Samsung QLED Q80A', 'TV QLED con Quantum Processor 4K e Direct Full Array', 1299.99, 'https://image.samsung.com/us/televisions-home-theater/tvs/qled-4k-tvs/q80a/gallery/65q80a_003_front2_silver.jpg'),
('Nikon Z7 II', 'Fotocamera mirrorless full-frame con alta risoluzione', 2999.99, 'https://m.media-amazon.com/images/I/81zZ3wV62eL._AC_SX425_.jpg'),
('Google Pixel 6 Pro', 'Smartphone con chip Google Tensor e fotocamera avanzata', 899.99, 'https://store.google.com/us/product/pixel_6_pro?hl=en-US'),
('Fitbit Versa 3', 'Smartwatch con GPS integrato e rilevazione battito cardiaco', 229.99, 'https://m.media-amazon.com/images/I/61HdhNFBXkL._AC_SX522_.jpg'),
('HP Envy 15', 'Laptop con display 4K OLED e grafica NVIDIA GTX', 1499.99, 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c06619868.png'),
('Canon EOS M50 Mark II', 'Fotocamera mirrorless compatta con video 4K', 699.99, 'https://m.media-amazon.com/images/I/81MZ5D1jf6L._AC_SX679_.jpg'),
('Microsoft Surface Pro 7', 'Tablet con prestazioni da laptop e kickstand integrato', 899.99, 'https://cdn.vox-cdn.com/thumbor/9g1VuGIeG7V0i5jI0kR4O6a-CaE=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19272832/mchin_191004_3707_0002.0.jpg'),
('JBL Flip 5', 'Speaker Bluetooth portatile resistente all''acqua', 119.99, 'https://m.media-amazon.com/images/I/71yYWh+-X2L._AC_SX679_.jpg'),
('GoPro HERO 9 Black', 'Action cam con video 5K e stabilizzazione HyperSmooth 3.0', 399.99, 'https://m.media-amazon.com/images/I/71wvop5sQqL._AC_SX679_.jpg'),
('DJI Mini 2', 'Drone ultraleggero con video 4K e trasmissione OcuSync 2.0', 449.99, 'https://m.media-amazon.com/images/I/71VlaG6LSyL._AC_SX679_.jpg'),
('LG Gram 17', 'Laptop ultraleggero con display da 17 pollici e lunga autonomia', 1799.99, 'https://www.lg.com/us/images/laptops/md07505023/gallery/desktop-01.jpg'),
('OnePlus 9 Pro', 'Smartphone con display Fluid AMOLED 120Hz e ricarica rapida Warp Charge 65T', 969.99, 'https://image01.oneplus.net/ebp/202103/23/1-m00-13-0a-rb8bwl-6haisaa9mxuah1nkaaxgrrtsiou632_840_840.png'),
('Nintendo Switch OLED', 'Console portatile con schermo OLED da 7 pollici e dock con porta LAN', 349.99, 'https://m.media-amazon.com/images/I/61-PblYntsL._AC_SX679_.jpg'),
('Samsung Galaxy Watch 4', 'Smartwatch con monitoraggio avanzato della salute e sistema operativo Wear OS', 269.99, 'https://images.samsung.com/is/image/samsung/p6pim/it/sm-r870ngeving/gallery/it-galaxy-watch4-398527-sm-r870ngeving-481020050?$684_547_PNG$'),
('Dyson V11 Absolute', 'Aspirapolvere senza fili con tecnologia ciclonica e schermo LCD', 649.99, 'https://www.dyson.it/medialibrary/Group/Products/Vacuum-Cleaners/V11/iron-sprayed-blue/dyson-v11-absolute-gallery1.ashx'),
('Sony PlayStation 5 Slim', 'Console di nuova generazione con supporto per giochi 4K e SSD ultraveloce', 499.99, 'https://m.media-amazon.com/images/I/619BkvKW35L._AC_SX679_.jpg'),
('ASUS ZenBook Duo 14', 'Laptop con doppio display touchscreen e processore Intel Core i7', 1499.99, 'https://dlcdnwebimgs.asus.com/gain/3d1722cc-49ea-4655-86b1-18b92f9bb51f/'),
('Apple AirPods Pro', 'Auricolari wireless con cancellazione attiva del rumore e modalità Trasparenza', 249.99, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MWP22'),
('Garmin Fenix 6 Pro', 'Sportwatch multisport con mappe e musica integrate', 699.99, 'https://m.media-amazon.com/images/I/71e-Kk18ZJL._AC_SX679_.jpg'),
('Logitech MX Master 3', 'Mouse wireless avanzato con scorrimento elettromagnetico MagSpeed', 99.99, 'https://resource.logitech.com/content/dam/logitech/en/products/mice/mx-master-3/mx-master-3-top-view.png'),
('Canon PIXMA G6050', 'Stampante multifunzione con serbatoi d''inchiostro ricaricabili', 349.99, 'https://m.media-amazon.com/images/I/81iFb0ZWCjL._AC_SX679_.jpg'),
('Philips Hue Starter Kit', 'Set di luci intelligenti con 3 lampadine e bridge', 179.99, 'https://m.media-amazon.com/images/I/51GRACqhShL._AC_SX425_.jpg'),
('Dell UltraSharp U2720Q', 'Monitor 4K UHD da 27 pollici con copertura colore sRGB 99%', 549.99, 'https://i.dell.com/sites/imagecontent/products/PublishingImages/u_series/u2720q/u2720q_c3600186_0001_desktop.jpg'),
('Sennheiser HD 660 S', 'Cuffie aperte Hi-Fi con audio di qualità audiophile', 499.99, 'https://sennheiser-vertrieb-live.staging.ogilvy-m2p.com/media/images/SA/HD660S_face.webp'),
('Microsoft Xbox Series X', 'Console con prestazioni di nuova generazione e supporto per giochi 8K', 499.99, 'https://compass-ssl.xbox.com/assets/15/70/15706d14-6925-4c84-a04a-d87f1155c499.jpg?n=XBX_Console_Large-Priority-Feature-0_XSX_767x431.jpg'),
('Fujifilm X-T4', 'Fotocamera mirrorless con stabilizzazione dell''immagine integrata e video 4K', 1699.99, 'https://m.media-amazon.com/images/I/81ieSPZHJbL._AC_SX679_.jpg'),
('Amazon Kindle Paperwhite', 'E-reader con schermo da 6 pollici ad alta risoluzione e illuminazione integrata', 129.99, 'https://m.media-amazon.com/images/I/61IzK3fQ+DL._AC_SX679_.jpg'),
('Anker PowerCore 20000', 'Power bank da 20000mAh con PowerIQ e ricarica rapida', 49.99, 'https://m.media-amazon.com/images/I/61u2FjwFyHL._AC_SX679_.jpg'),
('Epson EcoTank ET-2750', 'Stampante a getto d''inchiostro con serbatoi ad alta capacità e Wi-Fi', 299.99, 'https://m.media-amazon.com/images/I/81oOMbn+NrL._AC_SX679_.jpg'),
('HyperX Cloud II', 'Cuffie da gaming con suono surround 7.1 virtuale e microfono staccabile', 99.99, 'https://m.media-amazon.com/images/I/71r698VQY5L._AC_SX679_.jpg'),
('GoPro MAX', 'Videocamera 360° con HyperSmooth e PowerPano', 499.99, 'https://m.media-amazon.com/images/I/51MZHdcgPzL._AC_SX679_.jpg'),
('Tile Mate', 'Dispositivo di localizzazione Bluetooth con foro per portachiavi', 24.99, 'https://m.media-amazon.com/images/I/71MvEoNURsL._AC_SX679_.jpg'),
('HP Spectre x360', 'Ultrabook convertibile con display touch 4K e penna inclusa', 1599.99, 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c06209112.png'),
('Apple AirTag', 'Dispositivo di localizzazione con integrazione nell''ecosistema Apple', 35.99, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/airtag-select-202104'),
('Samsung Galaxy Buds Pro', 'Auricolari wireless con ANC e suono immersivo 360 Audio', 199.99, 'https://images.samsung.com/is/image/samsung/p6pim/it/galaxy-buds-pro/gallery/it-galaxy-buds-pro-sm-r190nzkaitv-368355-sm-r190nzkaitv-368357-thumb-386769134'),
('Nest Learning Thermostat', 'Termostato intelligente che impara le tue abitudini', 249.99, 'https://m.media-amazon.com/images/I/71NY7maKL6L._AC_SX679_.jpg'),
('Sony Bravia XR A90J', 'TV OLED 4K con processore cognitivo XR e Google TV', 2799.99, 'https://m.media-amazon.com/images/I/914R2URcG7L._AC_SX679_.jpg'),
('Bose QuietComfort Earbuds', 'Auricolari con cancellazione avanzata del rumore e qualità audio superiore', 279.99, 'https://assets.bose.com/content/dam/Bose_DAM/Web/consumer_electronics/global/products/headphones/quietcomfort-earbuds/product_silo_images/QC_Earbuds_Triple_Black_EC_hero.psd/jcr:content/renditions/cq5dam.web.320.320.png'),
('Google Nest Hub Max', 'Display smart con Assistente Google e videocamera integrata', 229.99, 'https://lh3.googleusercontent.com/3GG4YjX96thHO9uXdLPntLt4_Q1cfVnHdx3kHhsz2Y5kdXFABf_kddjvbVg7g1eMV8Mo1ciVhkFUv4c1h0d7W-UPdHkk60gHNcFX'),
('Fitbit Sense', 'Smartwatch avanzato con monitoraggio dello stress e sensore ECG', 329.99, 'https://m.media-amazon.com/images/I/71uJZc0CLcL._AC_SX679_.jpg'),
('Razer BlackShark V2', 'Cuffie da gaming con driver TriForce in titanio e microfono HyperClear', 109.99, 'https://assets3.razerzone.com/rzr/kz6x572v2YJrJ9hmHibxaA0UoNI/blackshark-v2-gallery-hero-desktop.jpg'),
('Acer Predator Helios 300', 'Laptop gaming con Intel Core i7 e GPU NVIDIA RTX 3060', 1299.99, 'https://static.acer.com/up/Resource/Acer/Laptops/Predator_Helios_300/Images/20210201/Predator-Helios-300-PH315-53-modelpreview.png'),
('Corsair K95 RGB Platinum XT', 'Tastiera meccanica da gaming con tasti macro e retroilluminazione RGB', 199.99, 'https://www.corsair.com/medias/sys_master/images/images/h3c/hf6/9110148687902/-CH-9127414-NA-Gallery-K95-PLATINUM-XT-01.png'),
('DJI FPV Combo', 'Drone con esperienza di volo in prima persona e velocità fino a 140 km/h', 1349.99, 'https://m.media-amazon.com/images/I/71x0dtuvH1L._AC_SX679_.jpg'),
('Eufy RoboVac 30C', 'Aspirapolvere robot con controllo tramite app e supporto Alexa', 249.99, 'https://m.media-amazon.com/images/I/61G5qhW1ubL._AC_SX679_.jpg'),
('Sony Alpha ZV-1', 'Fotocamera compatta per vlogging con microfono direzionale integrato', 749.99, 'https://m.media-amazon.com/images/I/81U6zH6Z-8L._AC_SX679_.jpg'),
('Philips Airfryer XXL', 'Friggitrice ad aria calda con tecnologia Rapid Air e capacità familiare', 279.99, 'https://m.media-amazon.com/images/I/81dpOJCgmFL._AC_SX679_.jpg'),
('Logitech G Pro Wireless', 'Mouse gaming leggero con sensore HERO 25K e design ambidestro', 129.99, 'https://resource.logitechg.com/w_692,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/gaming/en/products/pro-wireless/pro-wireless-gallery-1.png?v=1'),
('Kindle Oasis', 'E-reader premium con display da 7 pollici e luce calda regolabile', 249.99, 'https://m.media-amazon.com/images/I/61Iu42jEl0L._AC_SY679_.jpg'),
('Samsung Galaxy Tab S7+', 'Tablet con display Super AMOLED da 12.4 pollici e S Pen inclusa', 849.99, 'https://images.samsung.com/is/image/samsung/p6pim/it/galaxy-tab-s7-plus/gallery/it-galaxy-tab-s7-plus-5g-t976-sm-t976bzseitv-frontmysticbronze-350256393'),
('NVIDIA Shield TV Pro', 'Dispositivo di streaming 4K HDR con AI Upscaling e GeForce NOW', 199.99, 'https://m.media-amazon.com/images/I/61EJm7rZ53L._AC_SX679_.jpg'),
('Dell XPS 15', 'Laptop con display InfinityEdge e grafica NVIDIA GTX', 1849.99, 'https://i.dell.com/sites/csimages/Video_Imagery/all/xps-15-7590-laptop.jpg'),
('Apple Watch Series 7', 'Smartwatch con display sempre attivo e nuove funzionalità di salute', 399.99, 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/ML773_VW_34FR+watch-44-alum-silver-cell-7s_VW_34FR_WF_CO_GEO_IT?wid=940&hei=1112&fmt=png-alpha&.v=1632171067000'),
('Xbox Elite Wireless Controller Series 2', 'Controller wireless personalizzabile per prestazioni elevate', 179.99, 'https://compass-ssl.xbox.com/assets/01/ba/01ba1e10-0542-4513-8db8-07592eaa94b6.jpg?n=Xbox-Design-Lab-Xbox-Wireless-Controller-BG-Booking-Page_Panel-0_Feature-0_XDL-Deluxe-Controller_767x431.jpg'),
('Segway Ninebot KickScooter MAX G30', 'Monopattino elettrico con autonomia fino a 65 km e sistema di recupero energia', 799.99, 'https://m.media-amazon.com/images/I/61TxA4jeC7L._AC_SX679_.jpg'),
('BenQ PD2700U', 'Monitor professionale 4K UHD da 27 pollici con AQCOLOR e HDR10', 499.99, 'https://m.media-amazon.com/images/I/61w6u-N0rHL._AC_SX679_.jpg'),
('HyperX Alloy Origins', 'Tastiera meccanica compatta con switch personalizzati HyperX', 109.99, 'https://m.media-amazon.com/images/I/71cam6HE0bL._AC_SX679_.jpg'),
('Garmin Edge 830', 'Ciclocomputer GPS con touchscreen e mappe integrate', 399.99, 'https://m.media-amazon.com/images/I/71ooWdjaWkL._AC_SX679_.jpg'),
('Epos Sennheiser GSP 600', 'Cuffie da gaming chiuse con audio ad alta fedeltà e microfono broadcast', 219.99, 'https://m.media-amazon.com/images/I/71GLmmeCCwL._AC_SX679_.jpg'),
('Ring Video Doorbell Pro', 'Campanello smart con video HD 1080p e rilevazione di movimento', 269.99, 'https://m.media-amazon.com/images/I/51HaKX-Oq6L._AC_SX679_.jpg'),
('Thermaltake Toughpower GF1 750W', 'Alimentatore modulare con certificazione 80+ Gold e ventola silenziosa', 139.99, 'https://m.media-amazon.com/images/I/61kMu4S-DnL._AC_SX679_.jpg'),
('AMD Ryzen 9 5900X', 'Processore desktop a 12 core e 24 thread per prestazioni da gaming avanzate', 549.99, 'https://m.media-amazon.com/images/I/61vGQNUEsGL._AC_SX679_.jpg'),
('Asus ROG Swift PG259QN', 'Monitor gaming eSports 360Hz con NVIDIA G-SYNC', 699.99, 'https://dlcdnwebimgs.asus.com/gain/765d44f5-ac9e-46fe-a195-51f77a4947bf/'),
('Logitech StreamCam', 'Webcam Full HD 1080p per streaming con montaggio versatile', 169.99, 'https://resource.logitech.com/w_692,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/webcams/streamcam/gallery/graphite/streamcam-graphite-front.png?v=1'),
('Wacom Intuos Pro Medium', 'Tavoletta grafica professionale con penna sensibile alla pressione', 379.99, 'https://m.media-amazon.com/images/I/81XJ3KMvZsL._AC_SX679_.jpg'),
('Roku Streaming Stick+', 'Dispositivo di streaming 4K HDR con telecomando vocale', 59.99, 'https://m.media-amazon.com/images/I/71kd21YvBwL._AC_SX679_.jpg'),
('Netgear Nighthawk AX12', 'Router Wi-Fi 6 con supporto fino a 10.8Gbps e 12 stream simultanei', 599.99, 'https://m.media-amazon.com/images/I/51Udm4xUvzL._AC_SX679_.jpg'),
('Ultimate Ears Boom 3', 'Speaker Bluetooth portatile con suono a 360° e impermeabilità IP67', 149.99, 'https://m.media-amazon.com/images/I/81Z1Y34QTaL._AC_SX679_.jpg'),
('Samsung T7 Portable SSD', 'SSD portatile con velocità di trasferimento fino a 1050MB/s', 199.99, 'https://m.media-amazon.com/images/I/81F-El9Z2EL._AC_SX679_.jpg'),
('Oculus Quest 2', 'Visore VR standalone con display ad alta risoluzione e controller Touch', 399.99, 'https://m.media-amazon.com/images/I/61kwRNPtMpL._AC_SX679_.jpg'),
('Seiko 5 Sports', 'Orologio automatico con movimento meccanico e design sportivo', 299.99, 'https://m.media-amazon.com/images/I/81ZHHjzjZVL._AC_SX679_.jpg'),
('Xiaomi Mi Electric Scooter Pro 2', 'Monopattino elettrico con autonomia fino a 45 km e display LED', 549.99, 'https://m.media-amazon.com/images/I/71E2eRs8KdL._AC_SX679_.jpg'),
('Jabra Elite 85t', 'Auricolari true wireless con cancellazione attiva del rumore regolabile', 229.99, 'https://m.media-amazon.com/images/I/61oXqn9H9mL._AC_SX679_.jpg'),
('DJI Osmo Mobile 4', 'Stabilizzatore per smartphone con design magnetico e modalità creativa', 149.99, 'https://m.media-amazon.com/images/I/61cwkGLdZXL._AC_SX679_.jpg'),
('Brother HL-L2350DW', 'Stampante laser monocromatica con duplex e Wi-Fi', 119.99, 'https://m.media-amazon.com/images/I/71KdJZyPM7L._AC_SX679_.jpg'),
('Lenovo Legion 5', 'Laptop gaming con AMD Ryzen 7 e GPU NVIDIA RTX 3060', 1199.99, 'https://m.media-amazon.com/images/I/61qwK5+Pp3L._AC_SX679_.jpg'),
('Sony Alpha a7 III', 'Fotocamera mirrorless full-frame con prestazioni elevate in condizioni di scarsa illuminazione', 1999.99, 'https://m.media-amazon.com/images/I/81zKcBEj9-L._AC_SX679_.jpg'),
('Belkin Boost Up Charge', 'Caricatore wireless 3-in-1 per iPhone, Apple Watch e AirPods', 139.99, 'https://m.media-amazon.com/images/I/51qIRJuQi0L._AC_SX679_.jpg'),
('Razer Blade 15', 'Laptop gaming con GPU NVIDIA RTX 3070 e display 360Hz', 2499.99, 'https://assets2.razerzone.com/images/pnx.assets/542a8a8a53d0b0b6976bb6d6ac367117/razer-blade-15-advanced-gallery-01.jpg'),
('Theragun PRO', 'Dispositivo per terapia a percussione professionale', 599.99, 'https://cdn.shopify.com/s/files/1/0041/4948/1572/products/pro-gallery-1_800x.jpg'),
('Apple iMac 24"', 'Desktop all-in-one con chip M1 e display Retina 4.5K', 1299.99, 'https://www.apple.com/v/imac-24/c/images/overview/hero_imac__dqh65f0jywuy_large.jpg'),
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
(0, 'Via Settevalli 9, Perugia', 'Perugia_settevalli@techretail.com', '075436901', 0),
(0, 'Via Ezio Maccani 29, Trento', 'trento_maccani@techretail.com', '0461725396', 0),
(0, 'Corso Sidney Sonnino 38, Bari', 'bari_sonnino@techretail.com', '080781033', 0);
GO

-- Inserimenti per la tabella "stocks"
-- Si assume che gli id dei prodotti vadano da 1 a N e quelli delle filiali da 1 a 16
INSERT INTO stocks (idProdottoFK, idFilialeFK, quantita) VALUES
(1, 1, 10),
(10, 10, 40),
(11, 2, 12),
(12, 3, 18),
(13, 4, 7),
(14, 5, 6),
(15, 6, 14),
(16, 7, 9),
(17, 8, 10),
(18, 9, 8),
(19, 10, 20),
(20, 11, 5),
(21, 12, 17),
(22, 13, 16),
(23, 14, 3),
(2, 2, 5),
(3, 3, 20),
(4, 4, 15),
(5, 5, 30),
(6, 6, 7),
(7, 7, 12),
(8, 8, 9),
(9, 9, 25),
(24, 15, 7),
(25, 16, 2),
(26, 1, 13),
(27, 2, 8),
(28, 3, 19),
(29, 4, 21),
(30, 5, 11),
(31, 6, 12),
(32, 7, 8),
(33, 8, 10),
(34, 9, 15),
(35, 10, 7),
(36, 11, 13),
(37, 12, 9),
(38, 13, 14),
(39, 14, 10),
(40, 15, 20),
(41, 16, 4),
(42, 1, 11),
(43, 2, 13),
(44, 3, 15),
(45, 4, 7),
(46, 5, 5),
(47, 6, 9),
(48, 7, 8),
(49, 8, 12),
(50, 9, 14),
(51, 10, 6),
(52, 11, 10),
(53, 12, 11),
(54, 13, 7),
(55, 14, 13),
(56, 15, 5),
(57, 16, 8),
(58, 1, 9),
(59, 2, 7),
(60, 3, 12),
(61, 4, 8),
(62, 5, 10),
(63, 6, 11),
(64, 7, 5),
(65, 8, 14),
(66, 9, 9),
(67, 10, 15),
(68, 11, 6),
(69, 12, 10),
(70, 13, 3),
(71, 14, 8),
(72, 15, 11),
(73, 16, 7),
(74, 1, 12),
(75, 2, 9),
(76, 3, 14),
(77, 4, 10),
(1, 1, 50),
(2, 1, 30),
(23, 4, 20),
(24, 4, 40),
(25, 4, 15),
(26, 4, 25),
(27, 4, 35),
(28, 4, 45),
(29, 4, 10),
(3, 1, 20),
(4, 1, 40),
(5, 1, 15),
(6, 1, 25),
(7, 1, 35),
(8, 1, 45),
(9, 1, 10),
(10, 1, 60),
(11, 2, 55),
(12, 2, 20),
(13, 2, 30),
(14, 2, 25),
(15, 2, 35),
(16, 2, 40),
(17, 2, 50),
(18, 2, 45),
(19, 2, 15),
(20, 2, 10),
(21, 4, 50),
(22, 4, 30),
(30, 4, 60),
(78, 5, 6);
GO

-- Inserimenti per la tabella "utenti"
INSERT INTO utenti (nome, cognome, mail, passw, ruolo, idFilialeFK) VALUES
('Mario', 'Rossi', 'mario.rossi@example.com', 'password1', 'staff', 1),
('Luigi', 'Verdi', 'luigi.verdi@example.com', 'password2', 'cliente', 2),
('Anna', 'Bianchi', 'anna.bianchi@example.com', 'password3', 'staff', 3),
('Giulia', 'Neri', 'giulia.neri@example.com', 'password4', 'cliente', 4),
('Marco', 'Gialli', 'marco.gialli@example.com', 'password5', 'staff', 5),
('Sara', 'Ferri', 'sara.ferri@example.com', 'password6', 'cliente', 6),
('Luca', 'Blu', 'luca.blu@example.com', 'password7', 'cliente', 7),
('Elena', 'Rosa', 'elena.rosa@example.com', 'password8', 'staff', 8),
('Paolo', 'Viola', 'paolo.viola@example.com', 'password9', 'cliente', 9),
('Laura', 'Marrone', 'laura.marrone@example.com', 'password10', 'admin', 10),
('Simone', 'Verdi', 'simone.verdi@example.com', 'password11', 'staff', 11),
('Federica', 'Rossi', 'federica.rossi@example.com', 'password12', 'cliente', 12),
('Davide', 'Gialli', 'davide.gialli@example.com', 'password13', 'staff', 13),
('Ilaria', 'Neri', 'ilaria.neri@example.com', 'password14', 'cliente', 14),
('Matteo', 'Bianchi', 'matteo.bianchi@example.com', 'password15', 'staff', 15),
('Francesca', 'Blu', 'francesca.blu@example.com', 'password16', 'cliente', 16),
('Alessandro', 'Rosa', 'alessandro.rosa@example.com', 'password17', 'staff', 10),
('Marta', 'Viola', 'marta.viola@example.com', 'password18', 'cliente', 9),
('Giorgio', 'Marrone', 'giorgio.marrone@example.com', 'password19', 'admin', 15),
('Valeria', 'Ferri', 'valeria.ferri@example.com', 'password20', 'cliente', 12),
('Stefano', 'Gialli', 'stefano.gialli@example.com', 'password21', 'staff', 11),
('Chiara', 'Rossi', 'chiara.rossi@example.com', 'password22', 'cliente', 2),
('Nicola', 'Verdi', 'nicola.verdi@example.com', 'password23', 'staff', 14),
('Alessia', 'Neri', 'alessia.neri@example.com', 'password24', 'cliente', 16),
('Riccardo', 'Bianchi', 'riccardo.bianchi@example.com', 'password25', 'staff', 15),
('Vittoria', 'Blu', 'vittoria.blu@example.com', 'password26', 'cliente', 16),
('Claudio', 'Rosa', 'claudio.rosa@example.com', 'password27', 'staff', 8),
('Ginevra', 'Viola', 'ginevra.viola@example.com', 'password28', 'cliente', 9),
('Enrico', 'Marrone', 'enrico.marrone@example.com', 'password29', 'staff', 15),
('Eleonora', 'Ferri', 'eleonora.ferri@example.com', 'password30', 'cliente', 14);
GO

-- Inserimenti per la tabella "ordini"
-- Si assumono gli id degli utenti, prodotti e filiali coerenti con i precedenti inserimenti
INSERT INTO ordini (data, quantita, idUtenteFK, idProdottoFK, idFilialePartenzaFK, idFilialeArrivoFK, indirizzoConsegna, inLoco, restock, stato) VALUES
('2025-02-03', 2, 1, 1, 1, 2, 'Via Roma, Milano', 1, 0, 'elaborazione'),
('2025-02-03', 1, 2, 2, 2, 3, 'Corso Buenos Aires, Milano', 0, 0, 'consegna'),
('2025-02-02', 3, 3, 3, 3, 4, 'Via Po, Torino', 1, 1, 'consegnato'),
('2025-02-01', 5, 4, 4, 4, 5, 'Via Toledo, Napoli', 0, 1, 'elaborazione'),
('2025-02-03', 1, 5, 5, 5, 6, 'Via de'' Tornabuoni, Firenze', 1, 0, 'consegna'),
('2025-02-03', 4, 6, 6, 6, 7, 'Via dell''Indipendenza, Bologna', 0, 0, 'elaborazione'),
('2025-02-02', 2, 7, 7, 7, 8, 'Via Maqueda, Palermo', 1, 1, 'consegnato'),
('2025-02-01', 3, 8, 8, 8, 9, 'Via XX Settembre, Genova', 0, 0, 'consegna'),
('2025-02-03', 2, 9, 9, 9, 10, 'Via Mazzini, Verona', 1, 0, 'elaborazione'),
('2025-02-03', 6, 10, 10, 10, 1, 'Corso Vittorio Emanuele, Bari', 0, 1, 'consegnato'),
('2025-02-04', 2, 11, 11, 1, 3, 'Via Etnea, Catania', 1, 0, 'elaborazione'),
('2025-02-04', 1, 12, 12, 2, 4, 'Riva degli Schiavoni, Venezia', 0, 0, 'consegna'),
('2025-02-02', 3, 13, 13, 3, 5, 'Borgo Stretto, Pisa', 1, 1, 'consegnato'),
('2025-02-01', 5, 14, 14, 4, 6, 'Corso Vannucci, Perugia', 0, 1, 'elaborazione'),
('2025-02-03', 1, 15, 15, 5, 7, 'Via Trinchese, Lecce', 1, 0, 'consegna'),
('2025-02-03', 4, 16, 16, 6, 8, 'Viale Vespucci, Rimini', 0, 0, 'elaborazione'),
('2025-02-02', 2, 17, 17, 7, 9, 'Corso Garibaldi, Ancona', 1, 1, 'consegnato'),
('2025-02-01', 3, 18, 18, 8, 10, 'Via Emilia, Modena', 0, 0, 'consegna'),
('2025-02-03', 2, 19, 19, 9, 1, 'Via Belenzani, Trento', 1, 0, 'elaborazione'),
('2025-02-03', 6, 20, 20, 10, 2, 'Via dei Principati, Salerno', 0, 1, 'consegnato');

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
(5, 'Prodotto perfetto e consegna veloce', 'accettato', 11, 1),
(3, 'Consegna in ritardo, ma prodotto ok', 'revisione', 12, 2),
(4, 'Buon servizio clienti', 'accettato', 13, 3),
(2, 'Problemi con la consegna', 'rifiutato', 14, 4),
(5, 'Fantastica esperienza di acquisto', 'accettato', 15, 5),
(1, 'Ordine errato, non soddisfatto', 'rifiutato', 16, 6),
(4, 'Merce di qualità, buon prezzo', 'accettato', 17, 7),
(5, 'Tutto perfetto!', 'accettato', 18, 8),
(3, 'Aspettative non del tutto soddisfatte', 'revisione', 19, 9),
(2, 'Prodotto non conforme alla descrizione', 'rifiutato', 20, 10),
(4, 'Servizio rapido e puntuale', 'accettato', 21, 11),
(3, 'Media esperienza, niente di speciale', 'revisione', 22, 12),
(5, 'Straordinario, lo consiglio', 'accettato', 23, 13),
(2, 'Pacco arrivato danneggiato', 'rifiutato', 24, 14),
(4, 'Ordinerei di nuovo qui', 'accettato', 25, 15),
(3, 'Normale esperienza di acquisto', 'revisione', 26, 16),
(5, 'Consegna perfetta e prodotto ottimo', 'accettato', 27, 17),
(1, 'Brutta esperienza, non lo rifarei', 'rifiutato', 28, 18),
(4, 'Nel complesso, un buon servizio', 'accettato', 29, 19),
(5, 'Fantastico, nulla da dire!', 'accettato', 30, 20),
(2, 'Esperienza migliorabile', 'rifiutato', 10, 10);
GO
