using Project_Web.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;

using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Project_Web.Data;

namespace Project_Web.Controllers
{
    public class CartController : Controller
    {
        private readonly ILogger<ProductController> _logger;

        private readonly AppDbContext _context;
        private UserManager<AppUser> _userManager;
        public CartController(ILogger<ProductController> logger, AppDbContext context, UserManager<AppUser> userManager)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }


        /// Thêm sản phẩm vào cart
        [Route("addcart/{productid:int}", Name = "addcart")]
        public IActionResult AddToCart([FromRoute] int productid)
        {

            var product = _context.Products
                            .Where(p => p.Id == productid)
                            .FirstOrDefault();
            if (product == null)
                return NotFound("Không có sản phẩm");

            // Xử lý đưa vào Cart ...
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.Product.Id == productid);
            if (cartitem != null)
            {
                // Đã tồn tại, tăng thêm 1
                cartitem.Quantity++;
            }
            else
            {
                //  Thêm mới
                cart.Add(new CartItem() { Quantity = 1, Product = product });
            }

            // Lưu cart vào Session
            SaveCartSession(cart);
            // Chuyển đến trang hiện thị Cart
            return RedirectToAction(nameof(Cart));
        }

        /// xóa item trong cart
        [Route("/removecart/{productid:int}", Name = "removecart")]
        public IActionResult RemoveCart([FromRoute] int productid)
        {

            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.Product.Id == productid);
            if (cartitem != null)
            {
                cart.Remove(cartitem);
            }

            SaveCartSession(cart);
            return RedirectToAction(nameof(Cart));
        }

        /// Cập nhật
        [Route("/updatecart", Name = "updatecart")]
        [HttpPost]
        public IActionResult UpdateCart([FromForm] int productid, [FromForm] int quantity)
        {
            // Cập nhật Cart thay đổi số lượng quantity ...
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.Product.Id == productid);
            if (cartitem != null)
            {
                // Đã tồn tại, tăng thêm 1
                cartitem.Quantity = quantity;
            }
            SaveCartSession(cart);
            // Trả về mã thành công (không có nội dung gì - chỉ để Ajax gọi)
            return Ok();
        }


        // Hiện thị giỏ hàng
        [Route("/cart", Name = "cart")]
        public IActionResult Cart()
        {
            return View(GetCartItems());
        }
        public ActionResult OrderSuccess()
        {
            return View();
        }

        [Authorize]
        [Route("/checkout", Name = "checkout")]
        public async Task<IActionResult> CheckOut(string id, double total)
        {
            var cart = GetCartItems();
            Order _order = new Order();
            _order.CreatedAt = DateTime.Now;
            var user = await _userManager.FindByIdAsync(id);
            
            _order.ShippingAddress = user.Address;
            _order.UserId = user.Id;
            _order.UserName = user.UserName;
            _order.Total = total;
            _context.Orders.Add(_order);
            _context.SaveChanges();
            //var quanityTotal = 0;
            foreach (var item in cart)
            {
                OrderProduct _OrderDetail = new OrderProduct();
                _OrderDetail.ProductId = item.Product.Id;
                _OrderDetail.OrderId = _order.Id;
                _OrderDetail.Quantity = item.Quantity;
                var priceDiscount = item.Product.Price - (item.Product.Price * (item.Product.Discount / 100));
                //Tinh tong so luong cho Order
                //quanityTotal += item.Quantity;
                _OrderDetail.Price = item.Product.Price * item.Quantity;
                _context.OrderProducts.Add(_OrderDetail);
            }
            //_order.QuanityTotal = quanityTotal;
            _context.SaveChanges();
            cart.Clear();
            ClearCart();
            return RedirectToAction("OrderSuccess", "Cart");
            // Xử lý khi đặt hàng

        }

        // Key lưu chuỗi json của Cart
        public const string CARTKEY = "cart";

        // Lấy cart từ Session (danh sách CartItem)
        List<CartItem> GetCartItems()
        {

            var session = HttpContext.Session;
            string jsoncart = session.GetString(CARTKEY);
            if (jsoncart != null)
            {
                return JsonConvert.DeserializeObject<List<CartItem>>(jsoncart);
            }
            return new List<CartItem>();
        }

        // Xóa cart khỏi session
        void ClearCart()
        {
            var session = HttpContext.Session;
            session.Remove(CARTKEY);
        }

        // Lưu Cart (Danh sách CartItem) vào session
        void SaveCartSession(List<CartItem> ls)
        {
            var session = HttpContext.Session;
            string jsoncart = JsonConvert.SerializeObject(ls);
            session.SetString(CARTKEY, jsoncart);
        }



    }
}
