using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using System.ComponentModel;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class MagazzinoController : Controller
    {
        public IActionResult Index(int utenteID)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(utenteID);
            Utente u = (Utente)e;


            return View("Magazzino");
        }

     

        [HttpGet]
        public IActionResult CercaProdottiLinq(string parola )
        {

            var prodotti = new List<Prodotto>
            {
                new Prodotto { Nome = "Cuffie Bluetooth", Descrizione = "Cuffie wireless con cancellazione del rumore.", Prezzo = 89.99f, ImmagineURL = "url_cuffie_bluetooth.jpg" },
                new Prodotto { Nome = "Cuffie Over-Ear", Descrizione = "Cuffie over-ear con audio di alta qualità.", Prezzo = 129.99f, ImmagineURL = "url_cuffie_over_ear.jpg" },
                new Prodotto { Nome = "Cuffie In-Ear", Descrizione = "Cuffie in-ear compatte e leggere.", Prezzo = 49.99f, ImmagineURL = "url_cuffie_in_ear.jpg" },
                new Prodotto { Nome = "Smartphone 5G", Descrizione = "Smartphone con connettività 5G e fotocamera da 108 MP.", Prezzo = 699.99f, ImmagineURL = "url_smartphone_5g.jpg" },
                new Prodotto { Nome = "Tablet 10 pollici", Descrizione = "Tablet con schermo da 10 pollici e 64 GB di memoria.", Prezzo = 299.99f, ImmagineURL = "url_tablet_10.jpg" },
                new Prodotto { Nome = "Laptop Gaming", Descrizione = "Laptop potente per giochi e applicazioni pesanti.", Prezzo = 1499.99f, ImmagineURL = "url_laptop_gaming.jpg" },
                new Prodotto { Nome = "Monitor 27 pollici", Descrizione = "Monitor 27 pollici con risoluzione 4K.", Prezzo = 399.99f, ImmagineURL = "url_monitor_27.jpg" },
                new Prodotto { Nome = "Mouse Gaming", Descrizione = "Mouse da gioco con retroilluminazione RGB.", Prezzo = 59.99f, ImmagineURL = "url_mouse_gaming.jpg" },
                new Prodotto { Nome = "Tastiera Meccanica", Descrizione = "Tastiera meccanica con switch personalizzabili.", Prezzo = 89.99f, ImmagineURL = "url_tastiera_meccanica.jpg" },
                new Prodotto { Nome = "Power Bank 20000mAh", Descrizione = "Power bank ad alta capacità per ricariche multiple.", Prezzo = 39.99f, ImmagineURL = "url_power_bank.jpg" },
                new Prodotto { Nome = "Cavo USB-C", Descrizione = "Cavo USB-C per ricarica e trasferimento dati.", Prezzo = 9.99f, ImmagineURL = "url_cavo_usb_c.jpg" },
                new Prodotto { Nome = "Cuffie Sportive", Descrizione = "Cuffie progettate per l'attività fisica.", Prezzo = 69.99f, ImmagineURL = "url_cuffie_sportive.jpg" },
                new Prodotto { Nome = "Smartwatch", Descrizione = "Smartwatch con monitoraggio della salute e notifiche.", Prezzo = 199.99f, ImmagineURL = "url_smartwatch.jpg" },
                new Prodotto { Nome = "Altoparlante Bluetooth", Descrizione = "Altoparlante portatile con suono potente.", Prezzo = 79.99f, ImmagineURL = "url_altoparlante_bluetooth.jpg" },
                new Prodotto { Nome = "Drone con Telecamera", Descrizione = "Drone con telecamera HD per riprese aeree.", Prezzo = 499.99f, ImmagineURL = "url_drone.jpg" },
                new Prodotto { Nome = "Videocamera 4K", Descrizione = "Videocamera 4K per registrazioni di alta qualità.", Prezzo = 349.99f, ImmagineURL = "url_videocamera_4k.jpg" },
                new Prodotto { Nome = "Router Wi-Fi 6", Descrizione = "Router Wi-Fi 6 per una connessione veloce e stabile.", Prezzo = 129.99f, ImmagineURL = "url_router_wifi6.jpg" },
                new Prodotto { Nome = "Hard Disk Esterno 1TB", Descrizione = "Hard disk esterno da 1TB per archiviazione dati.", Prezzo = 59.99f, ImmagineURL = "url_hard_disk_esterno.jpg" },
                new Prodotto { Nome = "Stampante Laser", Descrizione = "Stampante laser veloce e di alta qualità.", Prezzo = 199.99f, ImmagineURL = "url_stampante_laser.jpg" },
                new Prodotto { Nome = "Cuffie Noise Cancelling", Descrizione = "Cuffie con tecnologia di cancellazione del rumore.", Prezzo = 149.99f, ImmagineURL = "url_cuffie_noise_cancelling.jpg" },
                new Prodotto { Nome = "Cuffie Wireless", Descrizione = "Cuffie wireless con audio di alta qualità.", Prezzo = 99.99f, ImmagineURL = "url_cuffie_wireless.jpg" },
                new Prodotto { Nome = "Cuffie Gaming", Descrizione = "Cuffie da gioco con microfono e audio surround.", Prezzo = 89.99f, ImmagineURL = "url_cuffie_gaming.jpg" },
                new Prodotto { Nome = "Cuffie Bluetooth Sport", Descrizione = "Cuffie Bluetooth progettate per lo sport.", Prezzo = 79.99f, ImmagineURL = "url_cuffie_bluetooth_sport.jpg" },
                new Prodotto { Nome = "Cuffie con Microfono", Descrizione = "Cuffie con microfono per chiamate e musica.", Prezzo = 49.99f, ImmagineURL = "url_cuffie_con_microfono.jpg" }
            };


            var query = from prodotto in prodotti
                        where prodotto.Nome.Contains(parola)
                        select prodotto;
            
            List <Prodotto> prodottiCercati = query.ToList();

            return View("Magazzino",prodottiCercati);
        }







    }
}
