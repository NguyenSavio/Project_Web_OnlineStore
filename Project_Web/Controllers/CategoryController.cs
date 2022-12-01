using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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

        public IActionResult ProductsInCategory(int? id)
        {
            //List<Category> categories = this._Context.Categories.ToList();
            List<Product> products = this._Context.Products.Where(products => products.Category.Id == id).ToList();
            ViewBag.CategoryName = this._Context.Categories.FirstOrDefault(category => id == category.Id).Name;
            return View(products);
        }


    }
}
