using System.Collections.Generic;
using HFS.Service.Infrastructure.Core;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Summaries
{
    public interface ILotSummary
    {
        IEnumerable<LotSummaryItem> Summarize(IEquityCore core);
    }
}