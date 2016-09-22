using System.Collections.Generic;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using Repository.Pattern.Repositories;
using Service.Pattern;

namespace HFS.Service.Services
{
    public interface IEquityService : IService<Equity>
    {
        IEnumerable<Equity> GetEquities(string tenantId);
    }

    public class EquityService : Service<Equity> , IEquityService
    {
        public EquityService(IRepositoryAsync<Equity> repository) : base(repository)
        {

        }

        public IEnumerable<Equity> GetEquities(string tenantId)
        {
            return _repository.GetEquities(tenantId);
        }
    }
}
