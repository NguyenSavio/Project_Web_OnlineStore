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
            List<Category> categories = this._Context.Categories.ToList();
            return View(product);
        }
    }
}
