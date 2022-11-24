using Microsoft.AspNetCore.Mvc;

namespace Project_Web.Controllers
{
	public class CategoryController : Controller
	{
		public IActionResult Index()
		{
			return View();
		}
	}
}
