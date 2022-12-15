using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Project_Web.Data
{
    public class Product
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? ShortDesc { get; set; }
        public string? Description { get; set; }
        public int? CategoryId { get; set; }
        public Category? Category { get; set; }
        public double? Price { get; set; }
        public double? Discount { get; set; }
        //[MaxLength]
        public string? Image { get; set; }

        [NotMapped]
        [FileExtensions]
        public IFormFile? ImageUpload { get; set; }
        public string? Video { get; set; }
        public DateTime? DateCreate { get; set; }
        public DateTime? DateUpdate { get; set; }
        public bool? BestSellers { get; set; }
        
        public int? Remains { get; set; }
        public double? Rating { get; set; }
        public ICollection<OrderProduct>? OrderProducts { get; set; }
    }
}
