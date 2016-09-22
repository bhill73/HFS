using System.Collections.Generic;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using Repository.Pattern.Repositories;
using Service.Pattern;

namespace HFS.Service.Services
{
    public interface IBasketService : IService<Basket>
    {
        IEnumerable<Basket> GetBaskets();
    }


    public class BasketService : Service<Basket> , IBasketService
    {

        public BasketService(IRepositoryAsync<Basket> repository) : base(repository)
        {

        }

        public IEnumerable<Basket> GetBaskets()
        {
            return _repository.GetBaskets();
        } 

    }

}