CREATE DATABASE TechRetail_B;



USE TechRetail_B;


CREATE TABLE prodotto (
    id_prodotto INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(200) NOT NULL,
    descrizione NVARCHAR(500),
    immagineURL NVARCHAR(500)
);


CREATE TABLE filiali (
    id_filiale INT PRIMARY KEY IDENTITY,
    magazzino BIT NOT NULL,
    indirizzo NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL,
	telefono NVARCHAR(15) NOT NULL,
    disponibileAlRitiro BIT NOT NULL
);

CREATE TABLE stocks (
    id_stock INT PRIMARY KEY IDENTITY,
    idProdottoFK INT NOT NULL,
    idFilialeFK INT NOT NULL,
    quantita INT NOT NULL CHECK (quantita >= 0),
    FOREIGN KEY (idProdottoFK) REFERENCES prodotto(id_prodotto),
    FOREIGN KEY (idFilialeFK) REFERENCES filiali(id_filiale)
);



CREATE TABLE utente (
    id_utente INT PRIMARY KEY IDENTITY,
    nome NVARCHAR(100) NOT NULL,
    cognome NVARCHAR(100) NOT NULL,
    mail NVARCHAR(255) NOT NULL UNIQUE,
    passw NVARCHAR(255) NOT NULL,
    ruolo NVARCHAR(50) CHECK (ruolo IN ('staff', 'cliente', 'admin')),
    idFilialeFK INT NULL,
    FOREIGN KEY (idFilialeFK) REFERENCES filiali(id_filiale)
);

CREATE TABLE ordine (
    id_ordine INT PRIMARY KEY IDENTITY,
    data DATE default getdate(),
    quantita INT NOT NULL CHECK (quantita > 0),
    idUtenteFK INT NOT NULL,
    idProdottoFK INT NOT NULL,
    idFilialePartenzaFK INT NOT NULL,
    idFilialeArrivoFK INT ,
    indirizzoConsegna NVARCHAR(255),
    inLoco BIT NOT NULL,
    restock BIT NOT NULL,
    FOREIGN KEY (idUtenteFK) REFERENCES utente(id_utente),
    FOREIGN KEY (idProdottoFK) REFERENCES prodotto(id_prodotto),
    FOREIGN KEY (idFilialePartenzaFK) REFERENCES filiali(id_filiale),
    FOREIGN KEY (idFilialeArrivoFK) REFERENCES filiali(id_filiale)
);

CREATE TABLE feedbacks (
    id_feedback INT PRIMARY KEY IDENTITY,
    stelle INT NOT NULL CHECK (stelle BETWEEN 1 AND 5),
    commento NVARCHAR(500),
    idOrdineFK INT NOT NULL,
    idUtenteFK INT NOT NULL,
    FOREIGN KEY (idOrdineFK) REFERENCES ordine(id_ordine),
    FOREIGN KEY (idUtenteFK) REFERENCES utente(id_utente)
);