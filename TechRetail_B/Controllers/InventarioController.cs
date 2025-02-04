using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class InventarioController : Controller
    {
        public IActionResult Inventario(int id)
        {

            Entity u = DAOUtenti.GetInstance().FindRecord(id);

            Utente utente = (Utente)u;
            var inventario = DAOProdotti.GetInstance().ListaInventario(utente._Filiale.Id);

            return View("Inventario", inventario);
        }
    }
}
