using Microsoft.AspNetCore.Mvc;

namespace TechRetail_B.Controllers
{
    public class MVCTechRetailController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
