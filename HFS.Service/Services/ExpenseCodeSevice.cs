using System.Collections.Generic;
using HFS.Entities.Models;
using HFS.Repository.Repositories;
using Repository.Pattern.Repositories;
using Service.Pattern;

namespace HFS.Service.Services
{
    public interface IExpenseCodeService : IService<ExpenseCode>
    {
        IEnumerable<ExpenseCode> GetExpenseCodes();
    }

    public class ExpenseCodeSevice : Service<ExpenseCode>, IExpenseCodeService
    {
        public ExpenseCodeSevice(IRepositoryAsync<ExpenseCode> repository) : base(repository)
        {
            
        }

        public IEnumerable<ExpenseCode> GetExpenseCodes()
        {
            return _repository.GetExpenseCodes();
        }  

    }

}