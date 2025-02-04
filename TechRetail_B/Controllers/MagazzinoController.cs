using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using System.ComponentModel;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class MagazzinoController : Controller
    {
        public IActionResult Index(int idUtente)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(idUtente);
            Utente i = (Utente)e;

            var inventario = DAOProdotti.GetInstance().ListaMagazzino();

            var viewModel = new MagazzinoViewModel
            {
                UtenteLoggato = i,
                Prodotti = inventario
            };


            return View("Magazzino",viewModel);
        }

     

        //[HttpGet]
        //public IActionResult CercaProdottiLinq(string parola )
        //{
        //    List<Entity> list = DAOProdotti.GetInstance().GetRecords();

        //    var query = from Prodotto prodotto in list
        //                where prodotto.Nome.Contains(parola)
        //                select prodotto;
            
        //    List <Prodotto> prodottiCercati = query.ToList();

        //    return View("Magazzino",prodottiCercati);
        //}







    }
}
