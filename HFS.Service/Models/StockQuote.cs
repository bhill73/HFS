namespace HFS.Service.Models
{ 
    public class StockQuote
    {
        public string Symbol { get; set; }

        public string Last { get; set; }

        public string Change { get; set; }

        public string Wk52_High { get; set; }

        public string Wk52_Low { get; set; }

        public string PEG { get; set; }

        public string PE { get; set; }

        public decimal LastValue
        {
            get
            {
                decimal curValue = 0;
                return (decimal.TryParse(Last, out curValue)) ? curValue : 0;
            }
        }

    }
}