using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class ComunicazioniController : Controller
    {
        public IActionResult Index(int Id)
        {
            List<Entity> listaMessaggi = DAOMessaggi.GetInstance().GetRecords();
            Entity e = DAOUtenti.GetInstance().FindRecord(Id);
            Utente u = (Utente)e;

            var viewModel = new MessaggiViewModel
            {
                Messaggi = listaMessaggi,
                UtenteLoggato = u
            };

            return View("Chat",viewModel);
        }
    }
}
