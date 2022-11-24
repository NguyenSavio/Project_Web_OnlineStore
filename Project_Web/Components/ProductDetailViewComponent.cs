using Microsoft.AspNetCore.Mvc;
using Project_Web.Data;
using Microsoft.EntityFrameworkCore;

namespace Project_Web.Components
{
    public class ProductDetailViewComponent:ViewComponent
    {
        private readonly AppDbContext _dbContext;
        public ProductDetailViewComponent(AppDbContext context)
        {
            this._dbContext = context;
            //this.id = id;
        }
     

        public async Task<IViewComponentResult> InvokeAsync(int id)
        {
            Product pro = await _dbContext.Products.Where(p => p.Id == id).FirstOrDefaultAsync();


            //Product? product = await _dbContext.Products.Where(p => p.Id == id).FirstOrDefaultAsync();
            //var pro = product;
            return View(pro);
        }
    }
}
