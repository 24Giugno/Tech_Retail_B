using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class ProdottoController : Controller
    {
        public IActionResult Index(int idUtente, int idProdotto)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(idUtente);
            Utente i = (Utente)e;

            Entity prodotto = DAOProdotti.GetInstance().FindRecord(idProdotto);
            Prodotto p = (Prodotto)prodotto;

            var viewModel = new ProdottoViewModel
            {
                UtenteLoggato=i,
                Prodotto = p
            };
            return View("Views/SchedaTecnica/SchedaTecnica.cshtml", viewModel);
        }
    }
}
