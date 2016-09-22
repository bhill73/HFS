using System.Collections.Generic;
using System.Linq;
using HFS.Entities.Models;
using Repository.Pattern.Repositories;

namespace HFS.Repository.Repositories
{
    public static class PortfolioRepository
    {
        public static IEnumerable<Portfolio> GetPortfolios(this IRepository<Portfolio> repository)
        {
            return repository.Queryable().AsEnumerable();
        } 
    }
}