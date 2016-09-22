using HFS.Entities.Models;

namespace HFS.Service.Infrastructure.Stocks
{
    public static class StockValue
    {
        public static decimal ComputeValue(Quote quote, int shares)
        {
            decimal flt =0;

            if (decimal.TryParse(quote.Q_Last, out flt))
            {
                return flt * shares;
            }
            else
            {
                return 0;
            }
        }
    }
}