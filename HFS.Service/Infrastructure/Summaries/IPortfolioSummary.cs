using System.Collections.Generic;
using HFS.Service.Infrastructure.Core;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Summaries
{
    public interface IPortfolioSummary
    {
        IEnumerable<PortfolioSummaryItem> Summarize(IEquityCore core);
    }
}