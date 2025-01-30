using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;
namespace TechRetail_B.Controllers
{
    public class TestController : Controller
    {
        public IActionResult Index()
        {
            //int id = 1;
            //int id2 = 2;
            //Entity f = DAOFiliali.GetInstance().FindRecord(id);
            //Entity f2 = DAOProdotti.GetInstance().FindRecord(id);
            //Entity f3 = DAOUtenti.GetInstance().FindRecord(id);
            //Entity f4 = DAOFiliali.GetInstance().FindRecord(id2);
            //Ordine e = new Ordine()
            //{
            //    Data = new DateTime(30 / 01 / 2025),
            //    Quantita = 10,
            //    _Utente = (Utente)f3,
            //    _Prodotto = (Prodotto)f2,
            //    _FilialePartenza = (Filiale)f,
            //    _FilialeArrivo = (Filiale)f4,
            //    IndirizzoConsegna = "prova via casa di matteo",
            //    InLoco = false,
            //    Restock = true,


            //};
            //DAOOrdini.GetInstance().CreateRecord(e);

            DAOOrdini.GetInstance().DeleteRecord(15);
            
            List<Entity> prova = [];
            // prova = DAOProdotti.GetInstance().GetRecords();
            //prova = DAOFiliali.GetInstance().GetRecords();
            //prova = DAOUtenti.GetInstance().GetRecords();
            //prova = DAOStocks.GetInstance().GetRecords();
            //prova = DAOFeedbacks.GetInstance().GetRecords();
            prova = DAOOrdini.GetInstance().GetRecords();
            
            return View (prova);
        }
    }
}
