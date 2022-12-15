using Project_Web.Data;

namespace Project_Web.Models
{
    public class CartItem
    {
        public int Quantity { get; set; }
        public Product Product { get; set; }

    }
}
