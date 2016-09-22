using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;


namespace HFS.Service.Models
{
    public class LotDetail
    {
        public string Equity { get; set; }

        public int AccountId { get; set; }
        public string Account { get; set; }

        public string Portfolio { get; set; }

        public string PortfolioName { get; set; }

        public string Basket { get; set; }
        public string BasketName { get; set; }

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


        [Display(Name = "Share Cost"), DisplayFormat(DataFormatString = "{0:C}")]
        public decimal ShareCost
        {
            get { return Cost/Shares; }

        }

        [Display(Name = "Share Value"), DisplayFormat(DataFormatString = "{0:C}")]
        public decimal ShareValue { get; set; }

        public bool Active { get; set; }

        public int DollarDays { get; set; }

        public int TotalDollarDays { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}")]
        public decimal Dividends { get; set; }

        public decimal DividendsYtd { get; set; }

        public decimal DividendAnnual { get; set; }

        [Display(Name = "Div Rate"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal DividendAnnualizedRate { get; set; }


        [Display(Name = "Annual Rate"), DisplayFormat(DataFormatString = "{0:p}")]
        public decimal AnnualizedRate { get; set; }

        public decimal CapitalGains { get; set; }

        public decimal CapitalGainsYtd { get; set; }

        public decimal CaptialGainsPerYtd { get; set; }

        public decimal Goodwill { get; set; }
        public decimal PercentGainsYtd { get; set; }
        public DateTime AverageDate { get; set; }
        public decimal DividendsMon { get; set; }
        public decimal CapitalGainsMon { get; set; }
        public decimal PercentGainsMon { get; set; }
    }
}