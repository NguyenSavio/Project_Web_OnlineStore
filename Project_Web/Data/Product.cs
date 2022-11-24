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
        public string? Image { get; set; }
        public string? Video { get; set; }
        public DateTime? DateCreate { get; set; }
        public DateTime? DateUpdate { get; set; }
        public bool? BestSellers { get; set; }
        public bool? HomeFlag { get; set; }
        public bool? Active { get; set; }
        public string? Title { get; set; }
        public string? Alias { get; set; }
        public int? Remains { get; set; }
        public ICollection<OrderProduct>? OrderProducts { get; set; }
    }
}
