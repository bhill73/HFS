using System.Collections.Generic;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using Repository.Pattern.Repositories;
using Service.Pattern;

namespace HFS.Service.Services
{
    public interface ILotService : IService<Lot>
    {
        IEnumerable<Lot> GetLots(bool active, string tenantId);
    }


    public class LotService : Service<Lot>, ILotService
    {
        public LotService(IRepositoryAsync<Lot> repository) : base(repository)
        {

        }

        public IEnumerable<Lot> GetLots(bool active, string tenantId)
        {
            if (active)
                return _repository.GetActiveLots(tenantId);
            else
            {
                return _repository.GetAllLots(tenantId);
            }
        }
    }

}