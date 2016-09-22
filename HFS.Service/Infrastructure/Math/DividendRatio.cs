using System;

namespace HFS.Service.Infrastructure.Math
{
    public static class DividendRatio
    {
        public static decimal CalculateDividend(int days, int totalDays, decimal dividend)
        {
            if (totalDays < 1)
                return 0;
            decimal ddratio = Convert.ToDecimal(days)/ Convert.ToDecimal(totalDays);
            return dividend * ddratio;
        }
    }
}