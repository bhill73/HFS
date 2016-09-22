using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;

namespace HFS.Entities.Models
{
    [Table("Portfolio")]
    public partial class Portfolio : Entity
    {
        public Portfolio()
        {
            Account = new HashSet<Account>();
        }

        public int Id { get; set; }

        private  string TenantId { get; set; }

        public string Symbol { get; set; }

        public string Name { get; set; }

        public virtual ICollection<Account> Account { get; set; }
    }
}
