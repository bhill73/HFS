using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HFS.Models
{
    public class Lot
    {
        [Key]
        public int Id { get; set; }

        [Display(Name = "Equity")]
        public int EquityId { get; set; }

        [ForeignKey("EquityId")]
        public virtual Equity Equity { get; set; }

        [DataType(DataType.Date), DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Purchased { get; set; }

        [Display(Name = "Account")]
        public int AccountId { get; set; }

        [ForeignKey("AccountId")]
        public virtual Account Account { get; set; }

        public int Shares { get; set; }

        public decimal Cost { get; set; }

        [DataType(DataType.Date), DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        [Display(Name = "Sold")]
        public DateTime? SellDate { get; set; }

        public decimal? LastYear { get; set; }

        public decimal? LastMonth { get; set; }

        public decimal Value { get; set; }

        public bool Active { get; set; }



    }
}