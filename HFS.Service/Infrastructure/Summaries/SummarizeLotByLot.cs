using System.Collections.Generic;
using HFS.Service.Infrastructure.Core;
using HFS.Service.Models;

namespace HFS.Service.Infrastructure.Summaries
{
    public class SummarizeLotByLot : ILotSummary
    {
        public IEnumerable<LotSummaryItem> Summarize(IEquityCore core)
        {
            var lst = ServiceCache.GetFromCache<List<LotSummaryItem>>(core.TenantId + "_LotSummary", () =>
            {
                var lsi = new List<LotSummaryItem>();
                core.Lots.ForEach(x => lsi.Add(LotSummaryItemAdapter.Adapt(x)));
                return lsi;

            }, 15,
                core.TenantId);
            return lst;
        }
    }
}