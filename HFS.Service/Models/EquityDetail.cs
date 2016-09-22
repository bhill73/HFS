using System;
using System.ComponentModel.DataAnnotations;


namespace HFS.Service.Models
{
    public class EquityDetail
    {
        public  string Equity { get; set; }
        public int AccountId { get; set; }
        public string Account { get; set; }

        public string Portfolio { get; set; }

        public string PortfolioName { get; set; }

        public string Basket { get; set; }

        public string BasketName { get; set; }

        public int DollarDays { get; set; }

        public int Shares { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}")]
        public decimal Cost { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}")]
        public decimal Value { get; set; }

        [Display(Name = "First"), DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime FirstPurchase { get; set; }

        [Display(Name = "Last"), DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime LastPurchase { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}")]
        public decimal Dividends { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}")]
        public decimal DividendsYtd { get; set; }

        public decimal DividendAnnual { get; set; }

        [Display(Name = "Div Rate"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal DividendAnnualizedRate { get; set; }

        [Display(Name = "Rate"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal AnnualizedRate { get; set; }

        [Display(Name = "Share"), DisplayFormat(DataFormatString = "{0:C}")]
        public decimal ShareValue { get; set; }

        public bool Active { get; set; }

        public decimal TotalAnnualizedRate { get; set; }

        public decimal CapitalGains { get; set; }

        public decimal CapitalGainsYtd { get; set; }

        public decimal CaptialGainsPerYtd { get; set; }

        public decimal Goodwill { get; set; }

        public decimal? LastYear { get; set; }

        public decimal? LastMonth { get; set; }
    }
}