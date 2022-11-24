using Microsoft.AspNetCore.Mvc;
using Project_Web.Data;

namespace Project_Web.Controllers
{
	public class CategoryController : Controller
	{
        private readonly AppDbContext _Context;

        // GET: ProductController

        public CategoryController(AppDbContext context)
        {
            _Context = context;
        }
        public IActionResult Index()
		{
			return View();
		}

        public IActionResult CategoryDetails(int? id)
        {
            Category category = this._Context.Categories.Where(category => category.Id == id).FirstOrDefault();
            return View();
        }
    }
}
