using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using HFS.Entities.Models;
using HFS.Service.Models;
using Repository.Pattern.Repositories;

namespace HFS.Service.Infrastructure.Math
{
    public class EquityDividends
    {

        public List<EquityDividend> GetDividendsByEquity(IRepositoryAsync<Cash> divs, string tenantId)
        {
            List<EquityDividend> lst = new List<EquityDividend>();

            lst = divs.Queryable().Where( x => x.Code.ToUpper() == "DIV"  && x.TenantId == tenantId).GroupBy(x => x.Ref).Select(s => new EquityDividend
            {
                AccountId = s.FirstOrDefault().AccountId,
                Symbol = s.FirstOrDefault().Ref,
                Dividends = s.Sum(c => c.Amount),

            }).ToList();


            return lst;
        }

        public List<EquityDividend> GetDividendsByEquityYtd(IRepositoryAsync<Cash> divs, string tenantId)
        {
            List<EquityDividend> lst = new List<EquityDividend>();
            var yearStart = new DateTime(DateTime.Now.Year, 1,1);
            lst = divs.Queryable().Where(x => x.Code.ToUpper() == "DIV" && x.Date <= DateTime.Now && x.Date >= yearStart && x.TenantId == tenantId).GroupBy(x => x.Ref).Select(s => new EquityDividend
            {
                AccountId = s.FirstOrDefault().AccountId,
                Symbol = s.FirstOrDefault().Ref,
                Dividends = s.Sum(c => c.Amount),

            }).ToList();


            return lst;
        }

        public List<EquityDividend> GetDividendsByEquityMon(IRepositoryAsync<Cash> divs, string tenantId)
        {
            List<EquityDividend> lst = new List<EquityDividend>();
            var monStart = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            lst = divs.Queryable().Where(x => x.Code.ToUpper() == "DIV" && x.Date <= DateTime.Now && x.Date >= monStart && x.TenantId == tenantId).GroupBy(x => x.Ref).Select(s => new EquityDividend
            {
                AccountId = s.FirstOrDefault().AccountId,
                Symbol = s.FirstOrDefault().Ref,
                Dividends = s.Sum(c => c.Amount),

            }).ToList();

            return lst;
        }


        public List<EquityDividend> GetDividendsByAccount(IRepositoryAsync<Cash> divs, string tenantId)
        {
            List<EquityDividend> lst = new List<EquityDividend>();

            lst = divs.Queryable().Where(x => x.Code.ToUpper() == "DIV" && x.TenantId == tenantId).GroupBy(x => x.AccountId).Select(s => new EquityDividend
            {
                AccountId = s.FirstOrDefault().AccountId,
                Symbol = s.FirstOrDefault().Ref,
                Dividends = s.Sum(c => c.Amount),

            }).ToList();


            return lst;
        }

    }
}