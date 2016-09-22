using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Repository.Pattern.Repositories;
using HFS.Entities.Models;

namespace HFS.Repository.Repositories
{
    public static class AccountRepository
    {
        public static IEnumerable<Account> GetAccounts(this IRepository<Account> repository)
        {
            return repository.Query().Include(x => x.Portfolio).Select().AsEnumerable();
        }
    }
}