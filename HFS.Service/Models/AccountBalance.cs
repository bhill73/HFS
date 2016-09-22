using System.Runtime;

namespace HFS.Service.Models
{
    public class AccountBalance
    {
        public string Account { get; set; }
        public string Portfolio { get; set; }
        public string PortfolioName { get; set; }

        public decimal Amount { get; set; }
    }
}