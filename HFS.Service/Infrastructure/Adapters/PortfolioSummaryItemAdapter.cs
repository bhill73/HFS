using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Adapters
{
    public static class PortfolioSummaryItemAdapter
    {

        public static PortfolioSummaryItem Adapt(EquityDetail equity, AccountBalance balance)
        {
            return new PortfolioSummaryItem()
            {
                Name = equity.PortfolioName,
                Symbol = equity.Portfolio,
                EquityTotal = equity.Value,
                CashTotal = balance.Amount,
            };
        }
    }
}