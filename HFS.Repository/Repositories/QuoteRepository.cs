using System.Collections.Generic;
using System.Linq;
using HFS.Entities.Models;
using Repository.Pattern.Repositories;

namespace HFS.Repository.Repositories
{
    public static class QuoteRepository
    {
        public static IEnumerable<Quote> GetQuotes(this IRepository<Quote> repository)
        {
            return repository.Queryable().AsEnumerable();
        } 
    }
}