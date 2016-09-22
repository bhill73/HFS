using System.Collections.Generic;
using System.Linq;
using HFS.Entities.Models;
using Repository.Pattern.Repositories;

namespace HFS.Repository.Repositories
{
    public static class ExpenseCodeRepository
    {
        public static IEnumerable<ExpenseCode> GetExpenseCodes(this IRepository<ExpenseCode> repository)
        {
            return repository.Queryable().AsEnumerable();
        }
    }
}