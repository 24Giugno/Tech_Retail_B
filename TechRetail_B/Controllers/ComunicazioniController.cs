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

        public IActionResult NuovaComunicazione(int idUtente, string contenuto)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(idUtente);
            Utente u = (Utente)e;

            Messaggio m = new Messaggio();
            m.Contenuto= contenuto;
            m.Dataora=DateTime.Now;
            m._Utente = u;

            DAOMessaggi.GetInstance().CreateRecord(m);

            List<Entity> listaMessaggi = DAOMessaggi.GetInstance().GetRecords();


            var viewModel = new MessaggiViewModel
            {
                Messaggi = listaMessaggi,
                UtenteLoggato = u
            };

            return View("Chat", viewModel);
        }
    }
}
