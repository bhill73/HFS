using System.Collections.Generic;
using System.Linq;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using HFS.Service.Infrastructure.Math;
using HFS.Service.Infrastructure.Summaries;
using HFS.Service.Models;
using HFS.Service.Services;
using Repository.Pattern.Repositories;

namespace HFS.Service.Infrastructure.Core
{
    public class EquityCore : IEquityCore
    {
        private readonly IRepositoryAsync<Account> _accounts;
        private readonly IRepositoryAsync<Equity> _equities;
        private readonly IRepositoryAsync<Lot> _lots;
        private readonly IRepositoryAsync<Cash> _cash;
        private readonly IRepositoryAsync<Portfolio> _portfolio;
        private readonly IQuoteService _quotes;

        public EquityCore(IRepositoryAsync<Equity> equities,
            IRepositoryAsync<Lot> lots, 
            IRepositoryAsync<Cash> cash,
            IRepositoryAsync<Portfolio> portfolio,
            IRepositoryAsync<Account> account,
            IQuoteService quotes)
        {
            _equities = equities;
            _lots = lots;
            _cash = cash;
            _quotes = quotes;
            _portfolio = portfolio;
            _accounts = account;
        }

        public string TenantId { get; set; }

        public List<LotDetail> Lots { get; set; }

        public List<AccountBalance> Accounts { get; set; }

        public void Initialize(string tenantId)
        {
            TenantId = tenantId;
            GetAllLots(tenantId);
            GetAccountBalances(tenantId);
        }

        private List<LotDetail> GetLotDollarDays(string tenantId)
        {
            var ldd = new LotDollarDays();
            var ldds = ldd.GetDollarDays(_lots.GetAllLots(tenantId).ToList(), GetQuotes(tenantId).ToList());
            return ldds;
        }

        private List<EquityDetail> GetEquityDollarDays(string tenantId)
        {
            var edd = new EquityDollarDays();
            var lotdds = ServiceCache.GetFromCache<List<LotDetail>>(tenantId + "_lotdds", () => GetLotDollarDays(tenantId), 15, tenantId);
            var edds = edd.GetEquityDollarDays(lotdds);
            return edds;
        }

        private List<EquityDividend> GetDividendsByEquity(string tenantId)
        {
            var dividends = new EquityDividends();
            var divs = dividends.GetDividendsByEquity(_cash, tenantId);
            return divs;
        }

        private List<EquityDividend> GetDividendsByEquityYtd(string tenantId)
        {
            var dividends = new EquityDividends();
            var divs = dividends.GetDividendsByEquityYtd(_cash, tenantId);
            return divs;
        }

        private List<EquityDividend> GetDividendsByEquityMon(string tenantId)
        {
            var dividends = new EquityDividends();
            var divs = dividends.GetDividendsByEquityMon(_cash, tenantId);
            return divs;
        }

        private void GetAccountBalances(string tenantId)
        {
            var calcBalance = new CalculateBalance();
            var lst = ServiceCache.GetFromCache<List<AccountBalance>>(tenantId + "_accountbalances", () =>
                {
                    var temp = new List<AccountBalance>();
                    _accounts.Query().Include(x => x.Portfolio).Select().ToList().ForEach(x => temp.Add(new AccountBalance()
                    {
                        Account = x.Name,
                        Portfolio = x.Portfolio.Symbol,
                        PortfolioName = x.Portfolio.Name,
                        Amount = calcBalance.ByAccount(tenantId, x.Id, _cash),
                    }));
                    return temp;
                }, 
                15,
                tenantId);

            Accounts = lst;
        }

        private IEnumerable<Quote> GetQuotes(string tenantId)
        {
            return _quotes.GetQuotes(_equities.GetEquities(tenantId).Select(x => x.Symbol).ToList(), "quotes");
        }

        public IEnumerable<LotSummaryItem> Summarize(ILotSummary strat)
        {
            return strat?.Summarize(this);
        }

        public IEnumerable<PortfolioSummaryItem> Summarize(IPortfolioSummary strat)
        {
            return strat?.Summarize(this);
        }

        private void GetAllLots(string tenantId)
        {
            var lots = ServiceCache.GetFromCache<List<LotDetail>>(tenantId + "_lots", () =>
            {
                var lotdds = GetLotDollarDays(tenantId);
                var eqdds = GetEquityDollarDays(tenantId);
                var divs = GetDividendsByEquity(tenantId);
                var divsYtd = GetDividendsByEquityYtd(tenantId);
                var divsMon = GetDividendsByEquityMon(tenantId);

                lotdds.ToList().ForEach(x =>
                {
                    var dividend = divs.FirstOrDefault(y => y.Symbol == x.Equity);
                    var dividendYtd = divsYtd.FirstOrDefault(y => y.Symbol == x.Equity);
                    var dividendMon = divsMon.FirstOrDefault(y => y.Symbol == x.Equity);
                    decimal div = dividend?.Dividends ?? 0;
                    decimal divYtd = dividendYtd?.Dividends ?? 0;
                    decimal divMon = dividendMon?.Dividends ?? 0;

                    EquityDetail edd = eqdds.FirstOrDefault(k => k.Equity == x.Equity);
                    if (edd != null)
                    {
                        decimal eqsDiv = DividendRatio.CalculateDividend(x.DollarDays, edd.DollarDays, div);
                        x.Dividends = eqsDiv;

                        if (x.Active)
                        {
                            x.DividendsYtd = DividendRatio.CalculateDividend(x.DollarDays, edd.DollarDays, divYtd);
                            x.DividendsMon = DividendRatio.CalculateDividend(x.DollarDays, edd.DollarDays, divMon);
                            x.CapitalGainsYtd = CapitalGains.CalculateGainsFromPrevious(x.Value, x.LastYear, x.DividendsYtd);
                            x.CapitalGainsMon = CapitalGains.CalculateGainsFromPrevious(x.Value, x.LastMonth, x.DividendsMon);
                            x.PercentGainsYtd = CapitalGains.CalculateGainsPercentFromPrevious(x.Value, x.LastYear ?? 0, x.DividendsYtd);
                            x.PercentGainsMon = CapitalGains.CalculateGainsPercentFromPrevious(x.Value, x.LastMonth ?? 0, x.DividendsMon);
                        }

                        x.AverageDate = DollarDay.CalculateAverageDate(x.DollarDays, x.Cost);
                        x.DividendAnnualizedRate = AnnualizedRate.Calculate(x.Cost, eqsDiv, x.Cost, x.DollarDays);
                        x.AnnualizedRate = AnnualizedRate.Calculate(x.Value, eqsDiv, x.Cost, x.DollarDays);
                        x.CapitalGains = CapitalGains.CalculateGains(x.Value, x.Cost);
                        x.Goodwill = 0;
                    }
                });

                return lotdds;
            }, 15 , tenantId);

            Lots = lots;
        }
    }
}
