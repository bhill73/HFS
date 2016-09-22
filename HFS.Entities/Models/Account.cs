using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using Repository.Pattern.Ef6;


namespace HFS.Entities.Models
{
    [Table("Account")]
    public partial class Account : Entity
    {

        public Account()
        {
            Cash = new HashSet<Cash>();
            Lot = new HashSet<Lot>();
        }

        public int Id { get; set; }

        public string TenantId { get; set; }

        public string Name { get; set; }

        public int PortfolioId { get; set; }

        public virtual Portfolio Portfolio { get; set; }

        public virtual ICollection<Cash> Cash { get; set; }

        public virtual ICollection<Lot> Lot { get; set; }
    }
}
