using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Project_Web.Controllers
{
    public class AdminController : Controller
    {
        [Authorize(Roles ="Administrator")]
        public IActionResult Index()
        {
            return View();
        }
    }
}
