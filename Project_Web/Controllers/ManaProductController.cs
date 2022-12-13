using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using Project_Web.Data;

namespace Project_Web.Controllers
{
    public class ManaProductController : Controller
    {
        private readonly AppDbContext _context;
        private readonly object _productService;

        public ManaProductController(AppDbContext context)
        {
            _context = context;
        }

        // GET: ManaProduct
        public async Task<IActionResult> Index()
        {
            var appDbContext = _context.Products.Include(p => p.Category);
            return View(await appDbContext.ToListAsync());
        }


        public async Task<bool> UploadImage(Product product,IFormFile upload)
        {
            if (upload != null && upload.Length > 0)
            {
                var fileName = Path.GetFileName(upload.FileName);
                var filePath = Path.Combine(Directory.GetCurrentDirectory(), "~/assets/images", fileName);
                product.Image = filePath;
                _context.Products.Add(product);
                _context.SaveChanges();
                using (var fileSrteam = new FileStream(filePath, FileMode.Create))
                {
                    await upload.CopyToAsync(fileSrteam);
                }
                return true;
            }
            return false;
        }


        //        [HttpPost]

        //        public string SaveFile(FileUpload fileObj)
        //        {
        //            Product product = JsonConvert.DeserializeObject<Product>(fileObj.Product)

        //if (fileObj.file.Length > 0)
        //            {
        //                using (var ms = new MemoryStream())
        //                {
        //                    fileObj.file.CopyTo(ms);
        //                    var fileBytes = ms.ToArray();
        //                    product.Image = fileBytes;
        //                    product = _productService.Save(product);
        //                    if (product.Id > 0)
        //                    {
        //                        return "Saved";
        //                    }
        //                }
        //            }

        //            return "Failed";
        //        }


        // GET: ManaProduct/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Products == null)
            {
                return NotFound();
            }

            var product = await _context.Products
                .Include(p => p.Category)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

        // GET: ManaProduct/Create
        public IActionResult Create()
        {
            ViewData["CategoryId"] = new SelectList(_context.Categories, "Id", "Name");
            return View();
        }

        // POST: ManaProduct/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,ShortDesc,Description,CategoryId,Price,Discount,Image,Video,DateCreate,DateUpdate,BestSellers,HomeFlag,Active,Title,Alias,Remains,Rating")] Product product)
        {
            if (ModelState.IsValid)
            {
                _context.Add(product);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["CategoryId"] = new SelectList(_context.Categories, "Id", "Id", product.CategoryId);
            return View(product);
        }

        // GET: ManaProduct/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Products == null)
            {
                return NotFound();
            }

            var product = await _context.Products.FindAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            ViewData["CategoryId"] = new SelectList(_context.Categories, "Id", "Name", product.CategoryId);
            return View(product);
        }

        // POST: ManaProduct/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,ShortDesc,Description,CategoryId,Price,Discount,Image,Video,DateCreate,DateUpdate,BestSellers,HomeFlag,Active,Title,Alias,Remains,Rating")] Product product)
        {
            if (id != product.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(product);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductExists(product.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["CategoryId"] = new SelectList(_context.Categories, "Id", "Id", product.CategoryId);
            return View(product);
        }

        // GET: ManaProduct/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Products == null)
            {
                return NotFound();
            }

            var product = await _context.Products
                .Include(p => p.Category)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

        // POST: ManaProduct/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Products == null)
            {
                return Problem("Entity set 'AppDbContext.Products'  is null.");
            }
            var product = await _context.Products.FindAsync(id);
            if (product != null)
            {
                _context.Products.Remove(product);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductExists(int id)
        {
          return _context.Products.Any(e => e.Id == id);
        }
    }
}
