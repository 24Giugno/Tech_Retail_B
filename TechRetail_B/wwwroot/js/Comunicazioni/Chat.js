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





