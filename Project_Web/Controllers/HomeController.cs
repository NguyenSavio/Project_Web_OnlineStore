using Microsoft.AspNetCore.Mvc;
using Project_Web.Data;
using Project_Web.Models;
using System.Diagnostics;

namespace Project_Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly AppDbContext _dbContext;
        public HomeController(ILogger<HomeController> logger, AppDbContext context)
        {
            _logger = logger;
            _dbContext = context;

        }

        public IActionResult Index()
        {
            //List<Category> cateList = _dbContext.Categories.ToList();
            List<Product> proList = _dbContext.Products.ToList();
            return View(proList);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Index2()
        {
            return View();
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}