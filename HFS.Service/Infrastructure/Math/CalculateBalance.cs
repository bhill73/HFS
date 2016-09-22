using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HFS.Entities.Models;
using HFS.Service.Services;
using Repository.Pattern.Repositories;

namespace HFS.Service.Infrastructure.Math
{
    public class CalculateBalance
    {
        public decimal ByAccount(string tenantId, int accountId, IRepositoryAsync<Cash> cash )
        {
            decimal total = 0;
            cash.Query(x => x.AccountId == accountId).Select().ToList().ForEach(x =>
            {
                total += x.Amount;
            });

            return total;
        }

    }
}
