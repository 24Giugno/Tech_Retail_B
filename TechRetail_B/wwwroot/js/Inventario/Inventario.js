function searchProducts() {
    let input = document.getElementById('searchInput');
    let filter = input.value.toLowerCase();
    let rows = document.querySelectorAll("#inventoryTable tbody tr");

    rows.forEach(row => {
        let productName = row.cells[1].textContent.toLowerCase();
        if (filter === "") {
            // Se il campo di input è vuoto, rimuovi la classe highlight da tutte le righe
            row.classList.remove("highlight");
        } else if (productName.includes(filter)) {
            // Se il nome del prodotto include il filtro, aggiungi la classe highlight
            row.classList.add("highlight");
        } else {
            // Altrimenti, rimuovi la classe highlight
            row.classList.remove("highlight");
        }
    });
}

document.addEventListener("DOMContentLoaded", function() {
        let rows = document.querySelectorAll("#inventoryTable tbody tr");
        
        rows.forEach(row => {
            let quantity = parseInt(row.cells[3].textContent);
            if (quantity <= 5) {
                row.classList.add("low-stock");
            }
        });
    });

        // Apri la navbar al caricamento della pagina
window.onload = function() {
    var navbar = document.getElementById("Navbar");
    var navIcon = document.getElementById("navIcon");
    var schermataInventario = document.querySelector(".schermataInventario");
    var infoHeader = document.querySelector(".infoHeader");

    navbar.classList.add("open");
    navIcon.textContent = "✖";
    schermataInventario.style.marginRight = "250px";
    infoHeader.style.marginRight = "250px";
};

// Funzione per aprire/chiudere la navbar
function toggleNavbar() {
    var navbar = document.getElementById("Navbar");
    var navIcon = document.getElementById("navIcon");
    var schermataInventario = document.querySelector(".schermataInventario");
    var infoHeader = document.querySelector(".infoHeader");

    navbar.classList.toggle("open");

    if (navbar.classList.contains("open")) {
        navIcon.textContent = "✖";
        schermataInventario.style.marginRight = "250px"; // Sposta i contenuti quando la navbar è aperta
        infoHeader.style.marginRight = "250px";
    } else {
        navIcon.textContent = "☰";
        schermataInventario.style.marginRight = "0"; // Riporta i contenuti alla posizione iniziale
        infoHeader.style.marginRight = "0";
    }
}