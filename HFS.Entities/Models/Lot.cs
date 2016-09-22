using System;
using System.ComponentModel.DataAnnotations.Schema;
using Repository.Pattern.Ef6;

namespace HFS.Entities.Models
{
    [Table("Lot")]
    public partial class Lot : Entity
    {
        public int Id { get; set; }

        public string TenantId { get; set; }

        public int EquityId { get; set; }

        public DateTime Purchased { get; set; }

        public int AccountId { get; set; }

        public int Shares { get; set; }

        public decimal Cost { get; set; }

        public DateTime? SellDate { get; set; }

        public decimal? LastYear { get; set; }

        public decimal? LastMonth { get; set; }

        public decimal Value { get; set; }

        public bool Active { get; set; }

        public decimal LastValue { get; set; }

        public decimal LastDividend { get; set; }

        public virtual Account Account { get; set; }

        public virtual Equity Equity { get; set; }

    }
}
