using Microsoft.AspNetCore.Mvc;

namespace TechRetail_B.Controllers
{
    public class NegoziController : Controller
    {
        public IActionResult Index()
        {
            return View("Negozi");
        }
    }
}
