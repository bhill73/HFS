using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using Repository.Pattern.Ef6;


namespace HFS.Entities.Models
{
    [Table("Equity")]
    public partial class Equity : Entity
    {
        public Equity()
        {
            Dividend = new HashSet<Dividend>();
            Lot = new HashSet<Lot>();
        }

        public int Id { get; set; }

        public string TenantId { get; set; }

        public string Symbol { get; set; }

        public string Name { get; set; }

        public int BasketId { get; set; }

        public bool Show { get; set; }

        public decimal Protection { get; set; }

        public decimal BiMoIx { get; set; }

        public decimal SeSoIx { get; set; }

        public virtual Basket Basket { get; set; }

        public virtual ICollection<Dividend> Dividend { get; set; }

        public virtual ICollection<Lot> Lot { get; set; }
    }
}
