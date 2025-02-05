using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class InventarioController : Controller
    {

        public IActionResult Index(int idUtente)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(idUtente);
            Utente i = (Utente)e;

            var inventario = DAOProdotti.GetInstance().ListaInventario(i._Filiale.Id);

            var viewModel = new InventarioViewModel
            {
                UtenteLoggato = i,
                Prodotti = inventario
            };

            return View("Inventario",viewModel);

        }
        
        [HttpGet]
        public IActionResult CercaProdotti(int idUtente, string termine)
        {
            // Se il termine è vuoto, mostra tutti i prodotti
            if (string.IsNullOrEmpty(termine))
            {
                return RedirectToAction("Index", new { idUtente });
            }

            // Trova l'utente e il suo inventario
            Entity e = DAOUtenti.GetInstance().FindRecord(idUtente);
            Utente i = (Utente)e;

            // Query per filtrare i prodotti con LIKE
            var prodottiFiltrati = DAOProdotti.GetInstance().CercaProdotti(i._Filiale.Id, termine);

            // Creiamo il ViewModel aggiornato con i prodotti filtrati
            var viewModel = new InventarioViewModel
            {
                UtenteLoggato = i,
                Prodotti = prodottiFiltrati // Mostriamo solo i prodotti filtrati
            };

            return View("Inventario", viewModel); // Ritorniamo la pagina con i nuovi dati
        }





    }
}
