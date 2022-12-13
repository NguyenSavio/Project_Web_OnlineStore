using Microsoft.AspNetCore.Mvc;

namespace Project_Web.Areas.Admin.Controllers
{
    public class AdminHomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
