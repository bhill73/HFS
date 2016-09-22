using System.Collections.Generic;
using System.Linq;
using HFS.Entities.Models;
using Repository.Pattern.Repositories;

namespace HFS.Repository.Repositories
{
    public static class EquityRepository
    {
        public static IEnumerable<Equity> GetEquities(this IRepository<Equity> repository, string tenantId)
        {
            return repository.Query(x => x.TenantId == tenantId).Include(x => x.Basket).Select().AsEnumerable();
        } 
    }
}