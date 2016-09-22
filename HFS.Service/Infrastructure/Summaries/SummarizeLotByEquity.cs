using System;
using System.Collections.Generic;
using System.Linq;
using HFS.Service.Infrastructure.Core;
using HFS.Service.Infrastructure.Math;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Summaries
{
    public class SummarizeLotByEquity : ILotSummary
    {

        public IEnumerable<LotSummaryItem> Summarize(IEquityCore core)
        {
            var lst = ServiceCache.GetFromCache<List<LotSummaryItem>>(core.TenantId + "_LotEquitySummary", () =>
            {
                decimal costSum = 0;
                decimal valueSum = 0;
                decimal divSum = 0;
                int ddSum = 0;

                // summarize by basket
                var lsi = new List<LotSummaryItem>();
                core.Lots.Where(x => x.Active).GroupBy(x => x.Equity).ToList().ForEach(x =>
                {
                    var firstOrDefault = x.FirstOrDefault();
                    if (firstOrDefault != null)
                    {
                        var dd = x.Sum(y => y.DollarDays);
                        var c = x.Sum(y => y.Cost);
                        var v = x.Sum(y => y.Value);
                        var div = x.Sum(y => y.Dividends);
                        var divYtd = x.Sum(y => y.DividendsYtd);
                        var lastYear = x.Sum(y => y.LastYear);
                        var lastMon = x.Sum(y => y.LastMonth);
                        var oldGains = core.Lots.Where(j => j.Equity == firstOrDefault.Equity && j.Active == false).Sum(k => k.CapitalGains);
                        var olddivs = core.Lots.Where(j => j.Equity == firstOrDefault.Equity && j.Active == false).Sum(k => k.Dividends);
                        var capGains = CapitalGains.CalculateGains(v, c);

                        costSum += c;
                        valueSum += v;
                        divSum += div;
                        ddSum += dd;

                        lsi.Add(new LotSummaryItem()
                        {
                            Equity = firstOrDefault.Equity,
                            Portfolio = firstOrDefault.Portfolio,
                            Basket = firstOrDefault.Basket,
                            Shares = x.Sum(y => y.Shares),
                            ShareValue = firstOrDefault.ShareValue,
                            DollarDays = dd,
                            Cost = c,
                            Value = v,
                            CapitalGains = capGains,
                            AllGains = div + capGains + olddivs + oldGains,
                            CapitalGainsYtd = CapitalGains.CalculateGainsFromPrevious(v, lastYear, divYtd),
                            PercentGainsYtd = CapitalGains.CalculateGainsPercentFromPrevious(v, lastYear ?? 0, divYtd),
                            PercentGainsMon = CapitalGains.CalculateGainsPercentMon(v, lastMon ?? 0),
                            AverageDate = DollarDay.CalculateAverageDate(dd, c),
                            Goodwill = x.Sum(y => y.Goodwill),
                            Dividends = div,
                            DividendsYtd = divYtd,
                            DividendAnnualizedRate = AnnualizedRate.Calculate(c, div, c,
                                DollarDay.Calculate(c, DollarDay.CalculateAverageDate(dd, c), null, DateTime.Now)),
                            DividendAnnual = v * firstOrDefault.DividendAnnualizedRate,
                            FirstPurchase = x.Min(y => y.Purchased),
                            LastPurchase = x.Max(y => y.Purchased),
                            Active = true,
                            AnnualizedRate = AnnualizedRate.Calculate(v, div, c,
                                DollarDay.Calculate(c, DollarDay.CalculateAverageDate(dd, c), null, DateTime.Now))
                        });
                    }
                });

                var totAnnualizedRate = AnnualizedRate.Calculate(valueSum, divSum, costSum,
                    DollarDay.Calculate(costSum, DollarDay.CalculateAverageDate(ddSum, costSum), null, DateTime.Now));

                lsi.ToList().ForEach(x =>
                {
                    x.TotalAnnualizedRate = totAnnualizedRate;
                });

                return lsi;
            }, 15,
                core.TenantId);

            return lst;
        }
    }
}