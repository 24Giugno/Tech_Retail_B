using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;
namespace TechRetail_B.Controllers
{
    public class TestController : Controller
    {
        public IActionResult Index()
        {
            int id = 1;
            Entity f = DAOFiliali.GetInstance().FindRecord(id);

            Utente e = new Utente()
            {
                Nome = "prova",
                Cognome = "prova cognome",
                Mail = "prova email@utente",
                Passw = "1234prova",
                Ruolo = "staff",
                _Filiale = (Filiale)f

            };
            DAOUtenti.GetInstance().CreateRecord(e);


            List<Entity> prova = [];
            // prova = DAOProdotti.GetInstance().GetRecords();
            //prova = DAOFiliali.GetInstance().GetRecords();
            prova = DAOUtenti.GetInstance().GetRecords();
            return View (prova);
        }
    }
}
