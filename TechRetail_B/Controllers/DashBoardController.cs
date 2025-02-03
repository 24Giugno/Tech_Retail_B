using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
       public class DashBoardController : Controller
       {
            public IActionResult Index()
            {
                // Supponendo che tu abbia una lista di ordini ottenuta da qualche parte
                List<Entity> listaOrdini = DAOOrdini.GetInstance().GetRecords(); // metodo ipotetico per leggere tutti gli ordini

                var viewModel = new OrdiniViewModel
                {
                    OrdiniInCorso = DAOOrdini.GetInstance().OrdiniInCorso(listaOrdini),
                    PercentualeLoco = DAOOrdini.GetInstance().CalcoloPercentualeLoco(listaOrdini),
                    FatturatoGiornaliero = DAOOrdini.GetInstance().FatturatoGiornaliero(listaOrdini),
                    GraficoLineaLoco = DAOOrdini.GetInstance().GraficoLineaLoco(listaOrdini),
                    GraficoLineaOnline = DAOOrdini.GetInstance().GraficoLineaOnline(listaOrdini)
                };
                return View(viewModel);
            }
       } 
}
