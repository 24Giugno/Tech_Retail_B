using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class FilialiController : Controller
    {
        public IActionResult Index(int id, string searchTerm = "")
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(id);
            Utente u = (Utente)e;

            List<Entity> filiali = DAOFiliali.GetInstance().GetRecords();

            // Se c'è un termine di ricerca, filtra la lista
            if (!string.IsNullOrEmpty(searchTerm))
            {
                filiali = filiali
                    .Where(f => ((Filiale)f).Indirizzo.Contains(searchTerm, StringComparison.OrdinalIgnoreCase) ||
                                ((Filiale)f).Email.Contains(searchTerm, StringComparison.OrdinalIgnoreCase) ||
                                ((Filiale)f).Telefono.Contains(searchTerm, StringComparison.OrdinalIgnoreCase))
                    .ToList();
            }

            var viewModel = new FilialiViewModel
            {
                UtenteLoggato = u,
                Filiali = filiali,
            };

            return View("Negozi", viewModel);
        }


    }
}
