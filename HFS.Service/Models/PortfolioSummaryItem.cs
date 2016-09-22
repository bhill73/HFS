using HFS.Entities.Models;

namespace HFS.Service.Models
{
    public class PortfolioSummaryItem
    {
        public string Name { get; set; }

        public string Symbol { get; set; }

        public decimal EquityTotal { get; set; }

        public decimal CashTotal { get; set; }

        public decimal Total => CashTotal + EquityTotal;

        public string Performance { get; set; }
        public decimal GainsYtd { get; set; }
        public object GainsMon { get; set; }
    }
}