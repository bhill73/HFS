using System.Collections.Generic;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using Repository.Pattern.Repositories;
using Service.Pattern;

namespace HFS.Service.Services
{
    public interface IPortfolioService : IService<Portfolio>
    {
        IEnumerable<Portfolio> GetPortfolios();
    }

    public class PortfolioService : Service<Portfolio>, IPortfolioService
    {
        public PortfolioService(IRepositoryAsync<Portfolio> repository) : base(repository)
        {
        }

        public IEnumerable<Portfolio> GetPortfolios()
        {
            return _repository.GetPortfolios();
        }
    }
}