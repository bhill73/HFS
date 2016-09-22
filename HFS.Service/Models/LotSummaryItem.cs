using System;
using System.ComponentModel.DataAnnotations;

namespace HFS.Service.Models
{
    public class LotSummaryItem
    {
        public string Equity { get; set; }

        [Display(Name = "A")]
        public string Account { get; set; }

        public int AccountId { get; set; }

        [Display(Name = "P")]
        public string Portfolio { get; set; }

        public string PortfolioName { get; set; }

        [Display(Name = "B")]
        public string Basket { get; set; }

        public string BasketName { get; set; }

        [Display(Name = "SHRS")]
        public int Shares { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}")]
        public decimal Cost { get; set; }

        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime Purchased { get; set; }

        [Display(Name = "Sold"), DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime? SellDate { get; set; }

        public decimal? LastYear { get; set; }

        public decimal? LastMonth { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}")]
        public decimal Value { get; set; }

        [Display(Name = "SHR VAL"), DisplayFormat(DataFormatString = "{0:C}")]
        public decimal ShareValue { get; set; }


        [Display(Name = "Share Cost"), DisplayFormat(DataFormatString = "{0:C}")]
        public decimal ShareCost
        {
            get
            {
                
                return (Shares <= 0) ? 0 : Cost / Shares;
            }

        }

        [Display(Name = "First"), DisplayFormat(DataFormatString = "{0:d}", NullDisplayText = "")]
        public DateTime FirstPurchase { get; set; }

        [Display(Name = "Last"), DisplayFormat(DataFormatString = "{0:d}", NullDisplayText = "")]
        public DateTime LastPurchase { get; set; }

        public bool Active { get; set; }

        [Display(Name = "DD")]
        public int DollarDays { get; set; }

        [Display(Name = "DIV") , DisplayFormat(DataFormatString = "{0:C}")]
        public decimal Dividends { get; set; }

        [Display(Name = "AR"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal AnnualizedRate { get; set; }

        public decimal TotalAnnualizedRate { get; set; }

        public decimal CapitalGains { get; set; }

        public decimal CapitalGainsYtd { get; set; }

        public decimal CaptialGainsPerYtd { get; set; }

        public decimal Goodwill { get; set; }

        public decimal DividendsYtd { get; set; }

        [Display(Name = "DIV AR")]
        public decimal DividendAnnualizedRate { get; set; }

        public decimal DividendAnnual { get; set; }

        [Display(Name = "PctGainsYtd"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal PercentGainsYtd { get; set; }

        public DateTime AverageDate { get; set; }

        [Display(Name = "PctGainsMon"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal PercentGainsMon { get; set; }

        public object AllGains { get; set; }
    }
}