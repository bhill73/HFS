using System;
using System.Collections.Generic;
using HFS.Service.Infrastructure;
using HFS.Service.Infrastructure.Core;
using HFS.Service.Infrastructure.Summaries;
using HFS.Service.Models;

namespace HFS.Service.Services
{
    public interface ISummaryService
    {
        IEnumerable<PortfolioSummaryItem> GetPortfolioSummary();
        IEnumerable<LotSummaryItem> GetEquitySummary();
        IEnumerable<LotSummaryItem> GetEquitySummaryByAccount();
        IEnumerable<LotSummaryItem> GetEquitySummaryByBasket();
        IEnumerable<LotSummaryItem> GetLotSummary();
        IEnumerable<QuoteMetric> GetMarketSummary(string tenantId);

        void AttachTenant(string tenantId);

        string TenantId { get; set; }
    }

    public class SummaryService : ISummaryService
    {
        private readonly IEquityCore _core;
        private IQuoteService _quote;

        public string TenantId { get; set; }

        public void AttachTenant(string tenantId)
        {
            TenantId = tenantId;
            _core.Initialize(tenantId);
        }

        public SummaryService(IEquityCore core, IQuoteService quote)
        {
            if (core == null)
                throw new ArgumentNullException(nameof(core));
            if (quote == null)
                throw new ArgumentNullException(nameof(quote));

            _core = core;
            _quote = quote;
        }

        public IEnumerable<PortfolioSummaryItem> GetPortfolioSummary()
        {
            return _core.Summarize(new SummarizeLotByPortfolio());
        }

        public IEnumerable<QuoteMetric> GetMarketSummary(string tenantId)
        {
            var marsum = new MarketSummary(_quote, tenantId);
            return marsum.Generate();
        }

        public IEnumerable<LotSummaryItem> GetEquitySummary()
        {
            return _core.Summarize(new SummarizeLotByEquity());
        }

        public IEnumerable<LotSummaryItem> GetEquitySummaryByAccount()
        {
            return _core.Summarize(new SummarizeLotByAccount());
        }

        public IEnumerable<LotSummaryItem> GetEquitySummaryByBasket()
        {
            return _core.Summarize(new SummarizeLotByBasket());
        }

        public IEnumerable<LotSummaryItem> GetLotSummary()
        {
            return _core.Summarize(new SummarizeLotByLot());
        }
    }
}