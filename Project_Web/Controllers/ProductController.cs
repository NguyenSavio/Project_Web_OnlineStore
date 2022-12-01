using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Project_Web.Data;
using Project_Web.Migrations;
using Project_Web.Models;
using System.Net;

namespace Project_Web.Controllers
{
    public class ProductController : Controller
    {
        private readonly AppDbContext _Context;

        // GET: ProductController

        public ProductController(AppDbContext context)
        {
            _Context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        // GET: ProductController/Details/5
        public IActionResult ProductDetails(int? id)
        {

            Product product = this._Context.Products.Where(product => product.Id == id).FirstOrDefault();
            //List<Category> categories = this._Context.Categories.ToList();
            return View(product);
        }

        //public IActionResult ProductsInCategory(int? id)
        //{
        //    List<Category> categories = this._Context.Categories.ToList();
        //    List<Product> products = this._Context.Products.Where(products => products.Category.Id == id).ToList();
        //    ViewBag.CategoryName = this._Context.Categories.FirstOrDefault(category => id == category.Id).Name;
        //    return View(products);
        //}

        //public ActionResult Create()
        //{
        //    return View();
        //}
        //[HttpPost]
        //public async Task<IActionResult> Create(BindAttribute("Id, Name")
        //{
        //    AppDbContext db = new AppDbContext();
        //    db.Add(p);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}
    }
}
