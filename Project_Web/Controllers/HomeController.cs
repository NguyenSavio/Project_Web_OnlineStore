using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Project_Web.Data;
using Project_Web.Models;
using System.Diagnostics;
using System.Xml.Linq;



namespace Project_Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly AppDbContext _dbContext;
        private readonly object Session;

        public HomeController(ILogger<HomeController> logger, AppDbContext context)
        {
            _logger = logger;
            _dbContext = context;

        }

        public IActionResult Index()
        {

            //{
            //    if (Session["Id"] != null)
            //    {
            //        return View();
            //    }
            //    else
            //    {
            //        return RedirectToAction("Login");
            //    }
            //}
            List<Category> cateList = _dbContext.Categories.ToList();
            List<Product> proList = _dbContext.Products.ToList();
            return View(proList);
        }

        //public IActionResult CategoryDetail()
        //{
        //    Product product = this._Context.Products.Where(product => product.Id == id).FirstOrDefault();
        //    return View();
        //}
        //public IActionResult Privacy()
        //{
        //    return View();
        //}

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}