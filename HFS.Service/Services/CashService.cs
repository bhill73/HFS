using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using HFS.Service.Infrastructure.Math;
using Repository.Pattern.Repositories;
using Service.Pattern;

namespace HFS.Service.Services
{
    public interface ICashService : IService<Cash>
    {
        IEnumerable<Cash> GetTransactions(string tenantId, string reference = "");

        decimal GetAccountBalance(string tenantId, int accountNumbers);
    }

    public class CashService : Service<Cash>, ICashService
    {

        public CashService(IRepositoryAsync<Cash> repository) : base(repository)
        {

        }

        public IEnumerable<Cash> GetTransactions(string tenantId, string reference)
        {
            return _repository.Query(x => x.Ref == reference).Include(x => x.Account).Select();
        }

        public decimal GetAccountBalance(string tenantId, int accountId)
        {
            var balanceCalc = new CalculateBalance();
            return balanceCalc.ByAccount(tenantId, accountId, _repository);
        }
    }

}