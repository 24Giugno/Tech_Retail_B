CREATE DATABASE TechRetail_B;

USE TechRetail_B;

CREATE TABLE prodotti (
    id INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(200) NOT NULL,
    descrizione NVARCHAR(1500),
	prezzo FLOAT,
    immagineURL NVARCHAR(500)
);
CREATE TABLE filiali (
    id INT PRIMARY KEY IDENTITY,
    magazzino BIT NOT NULL,
    indirizzo NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL,
	telefono NVARCHAR(15) NOT NULL,
    disponibileAlRitiro BIT NOT NULL
);
CREATE TABLE stocks (
    id INT PRIMARY KEY IDENTITY,
    idProdottoFK INT NOT NULL,
    idFilialeFK INT NOT NULL,
    quantita INT NOT NULL CHECK (quantita >= 0),
    FOREIGN KEY (idProdottoFK) REFERENCES prodotti(id),
    FOREIGN KEY (idFilialeFK) REFERENCES filiali(id)
);
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