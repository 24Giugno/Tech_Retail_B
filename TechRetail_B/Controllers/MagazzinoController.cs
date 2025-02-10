using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using System.ComponentModel;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class MagazzinoController : Controller
    {
        static int IdMagazzino = 1;
        public IActionResult Index(int Id)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(Id);
            Utente i = (Utente)e;

            var inventario = DAOProdotti.GetInstance().ListaInventario(1);

            var viewModel = new MagazzinoViewModel
            {
                UtenteLoggato = i,
                Prodotti = inventario
            };

            return View("Magazzino", viewModel);
        }

        [HttpPost]
        public IActionResult CercaProdottiLinq(int Id, string parola)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(Id);
            Utente i = (Utente)e;

            // Esegui la query SQL per cercare i prodotti simili
            var prodottiFiltrati = DAOProdotti.GetInstance().CercaProdotti(IdMagazzino, parola);

            var viewModel = new MagazzinoViewModel
            {
                UtenteLoggato = i,
                Prodotti = prodottiFiltrati
            };

            return View("Magazzino", viewModel);
        }
        public IActionResult ModificaQuantita(int idProdotto, int idFiliale)
        {
            var stock = DAOStocks.GetInstance().FindStock(idProdotto, idFiliale);
            if (stock == null)
            {
                return NotFound("Stock non trovato.");
            }
            Stocks stockAttuale = (Stocks)stock;
            var viewModel = new ModificaQuantitaViewModel
            {
                IdProdotto = idProdotto,
                IdFiliale = idFiliale,
                QuantitaAttuale = stockAttuale.Quantita
            };

            return View(viewModel);
        }

        [HttpPost]
        public IActionResult SalvaQuantita(int idProdotto, int idFiliale, int quantita)
        {
            var stock = DAOStocks.GetInstance().FindStock(idProdotto, idFiliale);
            if (stock == null)
            {
                return NotFound("Stock non trovato.");
            }
            Stocks stockAttuale = (Stocks)stock;
            stockAttuale.Quantita = quantita;
            DAOStocks.GetInstance().UpdateRecord(stock);  // Metodo per aggiornare il database

            return RedirectToAction("Index", new { id = idFiliale });
        }

        [HttpPost]
        public IActionResult EliminaStock(int idProdotto, int idFiliale) 
        {
            var stock = DAOStocks.GetInstance().FindStock(idProdotto, idFiliale);
            if (stock == null)
            {
                return NotFound("Stock non trovato.");
            }
            Stocks stockAttuale = (Stocks)stock;
            DAOStocks.GetInstance().EliminaStock(stockAttuale);

            return RedirectToAction("Index", new { id = idFiliale });
        }

    }
}


