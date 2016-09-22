using System;
using System.Collections.Generic;
using System.Linq;
using HFS.Entities.Models;
using HFS.Service.Infrastructure.Stocks;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Math
{
    public class LotDollarDays
    {
        public List<LotDetail> GetDollarDays(List<Lot> lots,  List<Quote> qoutes )
        {
            if (lots == null)
                return null;

            List<LotDetail> lst = new List<LotDetail>();

            lots.ForEach(x => 
            {
                Quote sq = qoutes.FirstOrDefault(y => y.Symbol == x.Equity.Symbol);
                lst.Add(new LotDetail
                {
                    Equity = x.Equity.Symbol,
                    AccountId = x.Account.Id,
                    Account = x.Account.Name,
                    Portfolio = x.Account.Portfolio.Symbol,
                    PortfolioName = x.Account.Portfolio.Name,
                    Basket = x.Equity.Basket.Symbol,
                    BasketName = x.Equity.Basket.Name,
                    Shares = x.Shares,
                    ShareValue = sq.LastValue,
                    Cost = x.Cost,
                    Purchased = x.Purchased,
                    SellDate = x.SellDate,
                    LastYear = x.LastYear,
                    LastMonth = x.LastMonth,
                    Value =  (x.SellDate == null) ? StockValue.ComputeValue(sq, x.Shares) : x.Value,
                    Active = x.Active,
                    DollarDays = DollarDay.Calculate(x.Cost, x.Purchased, x.SellDate, DateTime.Now),
                });
            });

            return lst;
        }
    }
}