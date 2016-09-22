using System.Collections.Generic;
using HFS.Service.Infrastructure.Summaries;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Core
{
    public interface IEquityCore
    {
        IEnumerable<LotSummaryItem> Summarize(ILotSummary strat);

        IEnumerable<PortfolioSummaryItem> Summarize(IPortfolioSummary strat);

        List<LotDetail> Lots { get; set; }
        List<AccountBalance> Accounts { get; set; }
        string TenantId { get; set; }

        void Initialize(string tenantId);
    }
}