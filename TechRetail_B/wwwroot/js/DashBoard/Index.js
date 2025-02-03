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
// Pie Chart
var ctxPie = document.getElementById('pieChart').getContext('2d');
var pieChart = new Chart(ctxPie, {
    type: 'pie',
    data: {
        labels: ['In Loco', 'Online'],
        datasets: [{
            label: 'Statistiche Ordini',
            data: [60, 40], 
            backgroundColor: ['#000', '#bd7d28'],
            hoverOffset: 4
        }]
    },
    options: {
        plugins: {
            legend: {
                position: 'bottom',
                labels: { font: { size: 20 },
                color: '#fff'
            }
            }
        }
    }
});

// Line Chart con 3 dataset
var ctxLine = document.getElementById('lineChart').getContext('2d');
var oggi = new Date();
var giorni = [];
for (var i = 29; i >= 0; i--) {
    var giorno = new Date();
    giorno.setDate(oggi.getDate() - i);
    giorni.push(giorno.toLocaleDateString('it-IT'));
}
var ordiniOnline = [25, 30, 33, 28, 30, 31, 32, 30, 32, 28, 31, 26, 28, 28, 26, 32, 30, 28, 31, 35, 26, 29, 29, 30, 33, 34, 28, 29, 25, 33];
var ordiniLoco = [27, 29, 26, 25, 27, 31, 28, 35, 35, 26, 31, 25, 29, 29, 28, 31, 26, 33, 25, 27, 26, 29, 26, 25, 27, 32, 25, 31, 34, 27];
var ordiniTotali = ordiniOnline.map((val, i) => val + ordiniLoco[i]);

var lineChart = new Chart(ctxLine, {
    type: 'line',
    data: {
        labels: giorni,
        datasets: [
            {
                label: 'Ordini Online',
                data: ordiniOnline,
                borderColor: '#06BCC1',
                backgroundColor: 'rgba(6, 188, 193, 0.2)',
                fill: true
            },
            {
                label: 'Ordini In Loco',
                data: ordiniLoco,
                borderColor: '#FF5733',
                backgroundColor: 'rgba(255, 87, 51, 0.2)',
                fill: true
            },
            {
                label: 'Totale Ordini',
                data: ordiniTotali,
                borderColor: '#4CAF50',
                backgroundColor: 'rgba(76, 175, 80, 0.2)',
                fill: true
            }
        ]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: {
                labels: {
                    color: '#fff'
                }
            }
        },
        scales: {
            x: {
                ticks: {
                    color: '#fff'
                },
                grid: {
                    color: '#rgba(255, 255, 255, 0.384)'
                }
            },
            y: {
                ticks: {
                    color: '#fff'
                },
                grid: {
                    color: '#rgba(255, 255, 255, 0.384)'
                }
            }
        }
    }
});

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