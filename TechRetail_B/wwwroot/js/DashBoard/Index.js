
document.querySelectorAll('.stars').forEach(starsContainer => {
    const rating = parseInt(starsContainer.getAttribute('data-rating'));
    for (let i = 1; i <= 5; i++) {
        const star = document.createElement('span');
        star.classList.add('fa', 'fa-star');
        if (i <= rating) {
            star.classList.add('checked');
        }
        starsContainer.appendChild(star);
    }
});

function acceptFeedback() {
    alert("Feedback accettato e inviato alla pagina e-Commerce!");
}

function rejectFeedback() {
    alert("Feedback rifiutato!");
}


// Apri la navbar al caricamento della pagina
window.onload = function() {
var navbar = document.getElementById("Navbar");
var navIcon = document.getElementById("navIcon");
var dashboard = document.querySelector(".Dashboard");
var infoHeader = document.querySelector(".infoHeader");

navbar.classList.add("open");
navIcon.textContent = "✖";
dashboard.style.marginRight = "250px";
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
    dashboard.style.marginRight = "250px"; // Sposta i contenuti quando la navbar è aperta
    infoHeader.style.marginRight = "250px";
} else {
    navIcon.textContent = "☰";
    dashboard.style.marginRight = "0"; // Riporta i contenuti alla posizione iniziale
    infoHeader.style.marginRight = "0";
}
}
