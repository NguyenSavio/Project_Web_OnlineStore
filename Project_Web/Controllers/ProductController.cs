using Microsoft.AspNetCore.Mvc;

namespace Project_Web.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Detail(int id)
                {
                    return View();
                }
        
    }
}
