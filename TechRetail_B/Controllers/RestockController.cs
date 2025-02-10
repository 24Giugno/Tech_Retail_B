
using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class RestockController : Controller
    {
        //public IActionResult Index(int id)
        //{
        //    Entity u = new Utente();
        //    u = DAOUtenti.GetInstance().FindRecord(id);
            
        //    return View("FormRestock",u);
        //}
        public IActionResult Index(int idUtente, int idProdotto, string nome, float prezzo)
        {
            Entity u = DAOUtenti.GetInstance().FindRecord(idUtente);
            Utente utente = (Utente)u;

            Entity p = DAOProdotti.GetInstance().FindRecord(idProdotto);
            Prodotto prodotto = (Prodotto)p;
            var viewModel = new RestockViewModel
            {
                UtenteLoggato = utente,
                ProdottoSelezionato = prodotto,
                
            };

            return View("FormRestock", viewModel);
        }
        [HttpPost]
        public IActionResult Create(int idProdotto, int quantita, int idUtente)
        {
            if (ModelState.IsValid)
            {
                
                // Recupera il prodotto dal database
                Entity eProdotto = DAOProdotti.GetInstance().FindRecord(idProdotto);
                Prodotto prodotto = (Prodotto)eProdotto;

                // Recupera l'utente (admin) che sta facendo il restock
                Entity eUtente = DAOUtenti.GetInstance().FindRecord(idUtente);
                Utente utente = (Utente)eUtente;

                // Recupera la filiale dell'admin (arrivo)
                Entity eFilialeArrivo = DAOFiliali.GetInstance().FindRecord(utente._Filiale.Id);
                Filiale filialeArrivo = (Filiale)eFilialeArrivo;

                Entity eFilialePartenza = DAOFiliali.GetInstance().FindRecord(1);
                Filiale Magazzino = (Filiale)eFilialePartenza;
                // Creazione dell'ordine
                Ordine ordine = new Ordine
                {
                    Data = DateTime.Now,
                    Quantita = quantita,
                    _Utente = utente,
                    _Prodotto = prodotto,
                    _FilialePartenza = Magazzino,
                    _FilialeArrivo = filialeArrivo,
                    IndirizzoConsegna = filialeArrivo.Indirizzo, // Indirizzo della filiale dell'admin
                    Stato = "in consegna",
                    InLoco = false,
                    Restock = true
                };

                // Inserisce l'ordine nel database
                DAOOrdini.GetInstance().CreateRecord(ordine);


                var inventario = DAOProdotti.GetInstance().ListaMagazzino();

                var viewModel = new MagazzinoViewModel
                {
                    UtenteLoggato = utente,
                    Prodotti = inventario
                };

                var Comunicazione = new Messaggio();
                Comunicazione.Dataora = DateTime.Now;
                Comunicazione.Contenuto = $"L'utente {utente.Nome} {utente.Cognome} ha richiesto un restock di {prodotto} il giorno {DateTime.Now}";
                Comunicazione._Utente = utente;

                DAOMessaggi.GetInstance().CreateRecord(Comunicazione);

                return RedirectToAction("IndexLogin", "DashBoard", utente);
            }
            
            return View();
        }




    }
}
