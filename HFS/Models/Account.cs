using System.ComponentModel.DataAnnotations.Schema;

namespace HFS.Models
{
    public class Account
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public int PortfolioId { get; set; }

        [ForeignKey("PortfolioId")]
        public virtual Portfolio Portfolio { get; set; }

    }
}