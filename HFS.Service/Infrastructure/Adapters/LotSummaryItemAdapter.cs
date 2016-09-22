using System.Runtime.InteropServices.WindowsRuntime;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure
{
    public static class LotSummaryItemAdapter
    {

        public static LotSummaryItem Adapt(LotDetail ldd)
        {
            return new LotSummaryItem
            {
                Equity = ldd.Equity,
                Account = ldd.Account,
                AccountId = ldd.AccountId,
                Portfolio = ldd.Portfolio,
                PortfolioName = ldd.PortfolioName,
                Basket = ldd.Basket,
                BasketName = ldd.BasketName,
                Shares = ldd.Shares,
                Cost = ldd.Cost,
                Purchased = ldd.Purchased,
                SellDate = ldd.SellDate,
                LastYear = ldd.LastYear,
                LastMonth = ldd.LastMonth,
                Value = ldd.Value,
                ShareValue = ldd.ShareValue,
                Active = ldd.Active,
                DollarDays = ldd.DollarDays,
                Dividends = ldd.Dividends,
                AnnualizedRate = ldd.AnnualizedRate,
                CapitalGains = ldd.CapitalGains,
                CapitalGainsYtd = ldd.CapitalGainsYtd,
                CaptialGainsPerYtd = ldd.CaptialGainsPerYtd,
                Goodwill = ldd.Goodwill,
                DividendAnnualizedRate = ldd.DividendAnnualizedRate,
                DividendAnnual = ldd.DividendAnnualizedRate,
            };
        }

        public static LotSummaryItem Adapt(EquityDetail edd)
        {
            return new LotSummaryItem
            {
                Equity = edd.Equity,
                AccountId = edd.AccountId,
                Account = edd.Account,
                Portfolio = edd.Portfolio,
                PortfolioName = edd.PortfolioName,
                Basket = edd.Basket,
                BasketName = edd.BasketName,
                Shares = edd.Shares,
                Cost = edd.Cost,
                FirstPurchase = edd.FirstPurchase,
                LastPurchase = edd.LastPurchase,
                Value = edd.Value,
                ShareValue = edd.ShareValue,
                Active = edd.Active,
                DollarDays = edd.DollarDays,
                Dividends = edd.Dividends,
                AnnualizedRate = edd.AnnualizedRate,
                TotalAnnualizedRate = edd.TotalAnnualizedRate,
                CapitalGains = edd.CapitalGains,
                CapitalGainsYtd = edd.CapitalGainsYtd,
                CaptialGainsPerYtd = edd.CaptialGainsPerYtd,
                Goodwill = edd.Goodwill,
                DividendsYtd = edd.DividendsYtd,
                DividendAnnualizedRate = edd.DividendAnnualizedRate,
                DividendAnnual = edd.DividendAnnualizedRate,
            };
        }
    }
}