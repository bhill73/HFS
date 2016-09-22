namespace HFS.Service.Models
{
    public class EquityDividend
    {
        public int AccountId { get; set; }
        public string Symbol { get; set; }
        public decimal Dividends { get; set; }
    }
}