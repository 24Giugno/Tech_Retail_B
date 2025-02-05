window.onload = function () {
    var navbar = document.getElementById("Navbar");
    var navIcon = document.getElementById("navIcon");
    //var dashboard = document.querySelector(".Dashboard");
    var infoHeader = document.querySelector(".infoHeader");

    navbar.classList.add("open");
    navIcon.textContent = "✖";
    //dashboard.style.marginRight = "250px";
    infoHeader.style.marginRight = "250px";
};

// Funzione per aprire/chiudere la navbar
function toggleNavbar() {
    var navbar = document.getElementById("Navbar");
    var navIcon = document.getElementById("navIcon");
    var dashboard = document.querySelector(".Dashboard");
    var infoHeader = document.querySelector(".infoHeader");

    navbar.classList.toggle("open");

    if (navbar.classList.contains("open")) {
        navIcon.textContent = "✖";
        //dashboard.style.marginRight = "250px"; // Sposta i contenuti quando la navbar è aperta
        infoHeader.style.marginRight = "250px";
    } else {
        navIcon.textContent = "☰";
        //dashboard.style.marginRight = "0"; // Riporta i contenuti alla posizione iniziale
        infoHeader.style.marginRight = "0";
    }
}


window.onload = function () {
    var chatScreen = document.getElementById('chatScreen');
    chatScreen.scrollTop = chatScreen.scrollHeight;
};





//Prova per messaggi live

//const sql = require('mssql');

//// Configurazione di connessione a SQL Server
//const dbConfig = {
//    server: 'localhost',  // O il nome del tuo server
//    database: 'your_database',
//    authentication: {
//        type: 'ntlm'  // Autenticazione Windows
//    },
//    options: {
//        encrypt: true, // Se necessario
//        trustServerCertificate: true
//    }
//};

//// Funzione per inviare un messaggio
//async function inviaMessaggio(IDMittente) {
//    try {
//        // Connessione al database
//        contenuto = document.getElementById("inputMessage");
//        await sql.connect(dbConfig);

//        // Inserimento del messaggio
//        const result = await sql.query`INSERT INTO Messaggi (IDMittente, Contenuto) VALUES (${IDMittente}, ${contenuto})`;

//        console.log("Messaggio inviato con successo!");
//    } catch (err) {
//        console.error('Errore durante l\'invio del messaggio:', err);
//    } finally {
//        sql.close();
//    }
//}

//async function recuperaMessaggi() {
//    try {
//        // Connessione al database
//        await sql.connect(dbConfig);

//        // Recupera i messaggi
//        const result = await sql.query`
//            SELECT m.ID, m.Contenuto, m.Data, mt.Nome AS Mittente
//            FROM Messaggi m
//            JOIN Mittenti mt ON m.IDMittente = mt.IDMittente
//            ORDER BY m.Data`;

//        console.log(result.recordset);
//    } catch (err) {
//        console.error('Errore durante il recupero dei messaggi:', err);
//    } finally {
//        sql.close();
//    }
//}