using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class FilialiController : Controller
    {
        public IActionResult Index(int id)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(id);
            Utente u = (Utente)e;

            List<Entity> filiali = DAOFiliali.GetInstance().GetRecords();

            var viewModel = new FilialiViewModel
            {
                UtenteLoggato = u,
                Filiali = filiali,
            };
            return View("Negozi",viewModel);
        }
    }
}
