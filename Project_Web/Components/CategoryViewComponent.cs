using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Project_Web.Data;
using Project_Web.Models;


namespace Project_Web.ViewComponents
{
    public class CategoryViewComponent : ViewComponent
    {
        private readonly AppDbContext _Context;
        public CategoryViewComponent(AppDbContext context)
        {
            _Context = context;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            List<Category> cateList = await _Context.Categories.ToListAsync();

            return View(cateList);
        }

    }
}
