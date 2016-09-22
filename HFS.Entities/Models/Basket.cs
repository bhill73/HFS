using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;

namespace HFS.Entities.Models
{
    [Table("Basket")]
    public partial class Basket : Entity
    {
        public Basket()
        {
            Equity = new HashSet<Equity>();
        }

        public int Id { get; set; }

        public string TenantId { get; set; }

        public string Symbol { get; set; }

        public string Name { get; set; }

        public decimal BiMoIx { get; set; }

        public decimal SeSoIx { get; set; }

        public decimal Protection { get; set; }

        public virtual ICollection<Equity> Equity { get; set; }
    }
}
