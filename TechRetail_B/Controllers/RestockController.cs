
using Microsoft.AspNetCore.Mvc;
using MSSTU.DB.Utility;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class RestockController : Controller
    {
        public IActionResult Index(int id)
        {
            Entity u = new Utente();
            u = DAOUtenti.GetInstance().FindRecord(id);
            
            return View("FormRestock",u);
        }
    }
}
