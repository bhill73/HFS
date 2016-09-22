using System;
using System.Collections.Generic;
using System.Linq;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Math
{
    public class EquityDollarDays
    {
        public List<EquityDetail> GetEquityDollarDays(List<LotDetail> lots )
        {
            List<EquityDetail> lst = new List<EquityDetail>();

            lots.GroupBy(x => x.Equity).ToList().ForEach(x =>
            {
                var divs = x.Sum(y => y.Dividends);
                var cost = x.Sum(y => y.Cost);
                var dollarDays = x.Sum(y => y.DollarDays);

                lst.Add( new EquityDetail
                {
                    Equity = x.FirstOrDefault().Equity,
                    Basket = x.FirstOrDefault().Basket,
                    BasketName = x.FirstOrDefault().BasketName,
                    DollarDays = dollarDays,
                    Shares = x.Sum(y => y.Shares),
                    ShareValue = x.FirstOrDefault().ShareValue,
                    Cost = cost,
                    Value = x.Sum(y => y.Value),
                    Dividends = divs,
                    DividendAnnualizedRate = AnnualizedRate.Calculate(divs, 0, cost,
                                    DollarDay.Calculate(cost, DollarDay.CalculateAverageDate(dollarDays, cost), null, DateTime.Now)),
                    FirstPurchase = x.Min(y => y.Purchased),
                    LastPurchase = x.Max(y => y.Purchased),
                    LastYear = x.Sum(c => c.LastYear),
                    LastMonth = x.Sum(c => c.LastYear),
                    Active = x.FirstOrDefault().Active,
                });
            });

            return lst;
        }
    }
}