window.onload = function() {
    var navbar = document.getElementById("Navbar");
    var navIcon = document.getElementById("navIcon");
    var infoHeader = document.querySelector(".infoHeader");
    var contenuto = document.querySelector(".contenuto")

    navbar.classList.add("open");
    navIcon.textContent = "✖";
    infoHeader.style.marginRight = "250px";
    contenuto.style.marginRight = "250px";
    };

    // Funzione per aprire/chiudere la navbar
    function toggleNavbar() {
    var navbar = document.getElementById("Navbar");
    var navIcon = document.getElementById("navIcon");
        var infoHeader = document.querySelector(".infoHeader");
        var contenuto = document.querySelector(".contenuto")

    navbar.classList.toggle("open");

    if (navbar.classList.contains("open")) {
        navIcon.textContent = "✖";
        infoHeader.style.marginRight = "250px";
        contenuto.style.marginRight = "250px";
    } else {
        navIcon.textContent = "☰";
        infoHeader.style.marginRight = "0";
        contenuto.style.marginRight = "0";
    }


    }
