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
    }
}
