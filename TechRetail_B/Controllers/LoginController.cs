using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class LoginController : Controller
    {
        static int _tentativiAccesso = -1;
        static Utente _utenteLoggato = null;

        ILogger<LoginController> _logger;

        public LoginController(ILogger<LoginController> logger)
        {
            _logger = logger;
        }

        public IActionResult Login()
        {
            _tentativiAccesso++;
            _logger.LogInformation($"Tentativo numero {_tentativiAccesso} alle {DateTime.Now}");
            return View("Index",_tentativiAccesso);
        }

        public IActionResult Accesso(Dictionary<string, string> parameters)
        {
            string mail = parameters["Mail"];
            string passw = parameters["Passw"];

            if (DAOUtenti.GetInstance().Find(mail, passw))
            {
                // Se la combo esiste significa che l'utente è valido e può accedere.
                // Lo rimando alla sua pagina personale o all'Home page, quello che preferite.

                // Trovo l'oggetto Utente collegato alle credenziali valide
                Entity e = DAOUtenti.GetInstance().Find(mail);

                _utenteLoggato = (Utente)e;
                _logger.LogInformation($"Utente Loggato {_utenteLoggato.Mail} alle ore {DateTime.Now}");

                if (_utenteLoggato.Ruolo == "cliente")
                {
                    TempData["ClientAlert"] = "Area riservata allo staff.";
                    return RedirectToAction("Index");
                }
                // Passo l'oggetto alla pagine HTML
                return RedirectToAction("IndexLogin","DashBoard",((Utente)e));
              
            }
            else
            {
                // Se la combo non esiste significa che le credenziali sono sbagliate e rimandiamo alla pagina Index dove fare 
                // di nuovo Login.

                return RedirectToAction("Index");
            }
        }
        public IActionResult Index()
        {
            return View();
        }

      
        public IActionResult Logout()
        {
            _logger.LogInformation($"Utente Disconnesso alle ore {DateTime.Now}");
            Console.WriteLine("Entrato");
            _utenteLoggato = null; // Resetta l'utente loggato
            _tentativiAccesso = -1; // Reset del contatore di tentativi (opzionale)

            return RedirectToAction("Login"); // Reindirizza alla pagina di login
        }








    }
}
