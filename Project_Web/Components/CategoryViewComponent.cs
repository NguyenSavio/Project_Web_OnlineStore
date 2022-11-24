using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Project_Web.Data;
using Project_Web.Models;

namespace Project_Web.Components
{
    public class CategoryViewComponent : ViewComponent
    {
        private readonly AppDbContext _dbContext;
        public CategoryViewComponent(AppDbContext context)
        {
            this._dbContext = context;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            List<Category> cateList = await _dbContext.Categories.ToListAsync();

            return View(cateList);
        }

    }
}
