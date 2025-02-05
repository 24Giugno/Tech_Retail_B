using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using System.ComponentModel;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class MagazzinoController : Controller
    {
        public IActionResult Index(int Id)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(Id);
            Utente i = (Utente)e;

            var inventario = DAOProdotti.GetInstance().ListaMagazzino();

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
            var prodottiFiltrati = DAOProdotti.GetInstance().CercaProdotti(Id, parola);

            var viewModel = new MagazzinoViewModel
            {
                UtenteLoggato = i,
                Prodotti = prodottiFiltrati
            };

            return View("Magazzino", viewModel);
        }
    }
}


