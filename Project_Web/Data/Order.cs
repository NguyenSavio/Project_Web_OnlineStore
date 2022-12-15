using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Project_Web.Data
{
    public class Order
    {
        public int Id { get; set; }
        [StringLength(450)]
        public string UserId { get; set; } = null;
        public string? Status { get; set; }
        public string? ShippingAddress { get; set; }
        public DateTime? CreatedAt { get; set; }
        public int? QuanityTotal { get; set; }
        [Column(TypeName = "decimal(18,2)")]
        public Decimal? Total { get; set; }
        public ICollection<OrderProduct>? OrderProducts { get; set; }
        
    }
}
