using System.Collections.Generic;
using System.Linq;
using System.Web.DynamicData;
using HFS.Service.Models;

namespace HFS.Models
{
    public class InvestmentSummaryModel
    {
        private IEnumerable<LotSummaryItem> _lotSummary;

        public IEnumerable<LotSummaryItem> LotSummary
        {
            get { return _lotSummary.Where(x => x.Active).OrderBy(x => x.Equity); }
            private set { _lotSummary = value; }
        }


        private IEnumerable<LotSummaryItem> _equitySummary;

        public IEnumerable<LotSummaryItem> EquitySummary
        {
            get { return _equitySummary.Where(x => x.Active).OrderBy(x => x.Equity); }
            private set { _equitySummary = value; }
        }

        private IEnumerable<LotSummaryItem> _equitySummaryByAccount;

        public IEnumerable<LotSummaryItem> EquitySummaryByAccount
        {
            get { return _equitySummaryByAccount.Where(x => x.Active).OrderBy(x => x.Equity); }
            private set { _equitySummaryByAccount = value; }
        }

        private IEnumerable<LotSummaryItem> _equitySummaryByBasket;

        public IEnumerable<LotSummaryItem> EquitySummaryByBasket
        {
            get { return _equitySummaryByBasket.Where(x => x.Active).OrderBy(x => x.Equity); }
            private set { _equitySummaryByBasket = value; }
        }


        public InvestmentSummaryModel(IEnumerable<LotSummaryItem> lotSummary,
            IEnumerable<LotSummaryItem> equitySummary, 
            IEnumerable<QuoteMetric> market,
            IEnumerable<PortfolioSummaryItem> portfolioSummary,
            IEnumerable<LotSummaryItem> equityAccount,
            IEnumerable<LotSummaryItem> equityBasket
            )
        {
            LotSummary = lotSummary;
            EquitySummary = equitySummary;
            MarketDashboard = market;
            PortfolioSummary = portfolioSummary;
            EquitySummaryByAccount = equityAccount;
            EquitySummaryByBasket = equityBasket;

        }

        public IEnumerable<QuoteMetric> MarketDashboard { get; private set; }


        private IEnumerable<PortfolioSummaryItem> _portfolioSummary;

        public IEnumerable<PortfolioSummaryItem> PortfolioSummary
        {
            get { return _portfolioSummary.OrderBy(x => x.Name); }
            private set { _portfolioSummary = value; }
        } 
    }
}