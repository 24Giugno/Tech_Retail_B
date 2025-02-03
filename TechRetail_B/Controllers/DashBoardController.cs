using Microsoft.AspNetCore.Mvc;
using TechRetail_B.Models;

namespace TechRetail_B.Controllers
{
    public class DashBoardController : Controller
    {
        public IActionResult Index()
        {
            var o = DAOOrdini.GetInstance().GetRecords();
            
            return View(o);
        }
    }
}
