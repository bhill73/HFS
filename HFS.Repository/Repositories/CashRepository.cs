using System.Collections.Generic;
using System.Linq;
using HFS.Entities.Models;
using Repository.Pattern.Repositories;

namespace HFS.Repository.Repositories
{
    public static class CashRepository
    {
        public static IEnumerable<Cash> GetTransactionsByReference(this IRepository<Cash> repository, string reference)
        {
            return repository.Query(x => x.Ref == reference).Include(x => x.Account).Select().AsEnumerable();
        } 
    }
}