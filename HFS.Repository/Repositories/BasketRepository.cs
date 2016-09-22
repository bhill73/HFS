using System.Collections.Generic;
using System.Linq;
using HFS.Entities.Models;
using Repository.Pattern.Repositories;

namespace HFS.Repository.Repositories
{
    public static class BasketRepository
    {
        public static IEnumerable<Basket> GetBaskets(this IRepository<Basket> repository)
        {
            return repository.Queryable().AsEnumerable();
        } 
    }
}