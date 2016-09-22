using System.Collections.Generic;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using Repository.Pattern.Repositories;
using Service.Pattern;

namespace HFS.Service.Services
{
    public interface IAccountService : IService<Account>
    {
        IEnumerable<Account> GetAccounts(string tenantId);
    }

    public class AccountService : Service<Account>, IAccountService
    {

        public AccountService(IRepositoryAsync<Account> repository) : base(repository)
        {
        }

        public IEnumerable<Account> GetAccounts(string tenantId)
        {
            return _repository.GetAccounts();
        }
    }
}
