using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using HFS.Service.Models;
using HFS.Service.Services;

namespace HFS.Service.Infrastructure.Summaries
{
    public class MarketSummary
    {
        private readonly IQuoteService _quotes;
        private readonly string _tenantId;

        public MarketSummary(IQuoteService quotes, string tenantId)
        {
            _quotes = quotes;
            _tenantId = tenantId;
        }

        public IEnumerable<QuoteMetric> Generate()
        {
            var dash = new List<string> {"DIA", "^IXIC", "^GSPC"};
            var dashQuotes = _quotes.GetQuotes(dash, "market").ToList();
            var metrics = new List<QuoteMetric>();

            dashQuotes.ForEach(x =>
            {
                if (x.Symbol == "DIA")
                {
                    decimal high;
                    decimal low;
                    decimal change;
                    decimal.TryParse(x.Q_52Wk_High, out high);
                    decimal.TryParse(x.Q_52Wk_Low, out low);
                    decimal.TryParse(x.Q_Change, out change);
                    x.Q_Last = (x.LastValue * 100).ToString();
                    x.Q_52Wk_High = (high*100).ToString();
                    x.Q_52Wk_Low = (low * 100).ToString();
                    x.Symbol = "Dow";
                }
                if (x.Symbol == "^IXIC") x.Symbol = "NASDAQ";
                if (x.Symbol == "^GSPC") x.Symbol = "S&P 500";

                metrics.Add(new QuoteMetric(x));
            });

            return metrics;
        }
    }
}