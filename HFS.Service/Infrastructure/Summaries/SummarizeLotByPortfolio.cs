using System.Collections.Generic;
using System.Linq;
using HFS.Service.Infrastructure.Core;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Summaries
{
    public class SummarizeLotByPortfolio : IPortfolioSummary
    {
        public IEnumerable<PortfolioSummaryItem> Summarize(IEquityCore core)
        {
            var lst = ServiceCache.GetFromCache<List<PortfolioSummaryItem>>(core.TenantId + "_PortfolioSummary", () =>
            {
                var ports = new List<PortfolioSummaryItem>();
                core.Lots.Where(x => x.Active).GroupBy(x => x.Portfolio).ToList().ForEach(x =>
                {
                    var firstOrDefault = x.FirstOrDefault();
                    if (firstOrDefault != null)
                    {
                        var cash = core.Accounts.FirstOrDefault(y => y.Portfolio == firstOrDefault.Portfolio);
                        var cashTotal = cash?.Amount ?? 0;

                        ports.Add(new PortfolioSummaryItem()
                        {
                            Name = firstOrDefault.PortfolioName,
                            Symbol = firstOrDefault.Portfolio,
                            EquityTotal = x.Sum(y => y.Value),
                            CashTotal = cashTotal,
                            GainsYtd = core.Lots.Where(j => j.Active).Sum(k => k.CapitalGainsYtd),
                            GainsMon = core.Lots.Where(j => j.Active).Sum(k => k.CapitalGainsMon),
                        });
                    }
                });

                return ports;
            },
            15,
            core.TenantId);

            return lst;
        }
    }
}