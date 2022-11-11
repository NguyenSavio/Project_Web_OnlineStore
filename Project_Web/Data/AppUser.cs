using Microsoft.AspNetCore.Identity;

namespace Project_Web.Data
{
    public class AppUser : IdentityUser
    {
        public string? firstName { get; set; }
        public string? lastName { get; set; }

    }
}
