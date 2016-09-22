using System.Collections.Generic;
using Repository.Pattern.Repositories;
using HFS.Entities.Models;

namespace HFS.Repository.Repositories
{
    public static class LotRepository
    {
        public static IEnumerable<Lot> GetActiveLots(this IRepository<Lot> repository, string tenantId)
        {
            return repository.Query(x => x.Active == true && x.TenantId == tenantId).Include(x => x.Account).Include(x => x.Account.Portfolio).Include(x => x.Equity).Select();
        }

        public static IEnumerable<Lot> GetAllLots(this IRepository<Lot> repository, string tenantId)
        {
            return repository.Query(x => x.TenantId == tenantId).Include(x => x.Account).Include(x => x.Account.Portfolio).Include(x => x.Equity).Select();
        }


    }
}
