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

            public IActionResult IndexLogin(Utente u)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(u.Id);
            Utente i = (Utente)e;

            List<Entity> listaOrdini = DAOOrdini.GetInstance().OrdiniPerFiliale(i);
            List<Entity> feedbacks = DAOFeedbacks.GetInstance().FeedbacksPerFiliale(i._Filiale.Id);

            var viewModel2 = new OrdiniViewModel
            {
                UtenteLoggato = i,
                OrdiniInCorso = DAOOrdini.GetInstance().OrdiniInCorso(listaOrdini),
                PercentualeLoco = DAOOrdini.GetInstance().CalcoloPercentualeLoco(listaOrdini),
                FatturatoGiornaliero = DAOOrdini.GetInstance().FatturatoGiornaliero(listaOrdini),
                GraficoLineaLoco = DAOOrdini.GetInstance().GraficoLineaLoco(listaOrdini),
                GraficoLineaOnline = DAOOrdini.GetInstance().GraficoLineaOnline(listaOrdini),
                Feedbacks = feedbacks
            };
            return View("Index",viewModel2);
        }

        public IActionResult IndexDashBoard(int id)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(id);
            Utente i = (Utente)e;

            List<Entity> listaOrdini = DAOOrdini.GetInstance().OrdiniPerFiliale(i);
            List<Entity> feedbacks = DAOFeedbacks.GetInstance().FeedbacksPerFiliale(i._Filiale.Id);
            var viewModel3 = new OrdiniViewModel
            {
                UtenteLoggato = i,
                OrdiniInCorso = DAOOrdini.GetInstance().OrdiniInCorso(listaOrdini),
                PercentualeLoco = DAOOrdini.GetInstance().CalcoloPercentualeLoco(listaOrdini),
                FatturatoGiornaliero = DAOOrdini.GetInstance().FatturatoGiornaliero(listaOrdini),
                GraficoLineaLoco = DAOOrdini.GetInstance().GraficoLineaLoco(listaOrdini),
                GraficoLineaOnline = DAOOrdini.GetInstance().GraficoLineaOnline(listaOrdini),
                Feedbacks = feedbacks
            };
            return View("Index", viewModel3);
        }

        public IActionResult FeedbackAccettato(int idFeedback, int idUtente)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(idUtente);
            Utente i = (Utente)e;


            //modifica feedback qui
            DAOFeedbacks.GetInstance().FeedbackAccettato(idFeedback);

            List<Entity> listaOrdini = DAOOrdini.GetInstance().OrdiniPerFiliale(i);
            List<Entity> feedbacks = DAOFeedbacks.GetInstance().FeedbacksPerFiliale(i._Filiale.Id);
            var viewModel3 = new OrdiniViewModel
            {
                UtenteLoggato = i,
                OrdiniInCorso = DAOOrdini.GetInstance().OrdiniInCorso(listaOrdini),
                PercentualeLoco = DAOOrdini.GetInstance().CalcoloPercentualeLoco(listaOrdini),
                FatturatoGiornaliero = DAOOrdini.GetInstance().FatturatoGiornaliero(listaOrdini),
                GraficoLineaLoco = DAOOrdini.GetInstance().GraficoLineaLoco(listaOrdini),
                GraficoLineaOnline = DAOOrdini.GetInstance().GraficoLineaOnline(listaOrdini),
                Feedbacks = feedbacks
            };
            return View("Index", viewModel3);
        }

        public IActionResult FeedbackRifiutato(int idFeedback, int idUtente)
        {
            Entity e = DAOUtenti.GetInstance().FindRecord(idUtente);
            Utente i = (Utente)e;


            //modifica feedback qui
            DAOFeedbacks.GetInstance().FeedbackRifiutato(idFeedback);

            List<Entity> listaOrdini = DAOOrdini.GetInstance().OrdiniPerFiliale(i);
            List<Entity> feedbacks = DAOFeedbacks.GetInstance().FeedbacksPerFiliale(i._Filiale.Id);
            var viewModel3 = new OrdiniViewModel
            {
                UtenteLoggato = i,
                OrdiniInCorso = DAOOrdini.GetInstance().OrdiniInCorso(listaOrdini),
                PercentualeLoco = DAOOrdini.GetInstance().CalcoloPercentualeLoco(listaOrdini),
                FatturatoGiornaliero = DAOOrdini.GetInstance().FatturatoGiornaliero(listaOrdini),
                GraficoLineaLoco = DAOOrdini.GetInstance().GraficoLineaLoco(listaOrdini),
                GraficoLineaOnline = DAOOrdini.GetInstance().GraficoLineaOnline(listaOrdini),
                Feedbacks = feedbacks
            };
            return View("Index", viewModel3);
        }
    } 
}
