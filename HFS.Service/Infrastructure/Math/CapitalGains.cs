using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HFS.Service.Infrastructure.Math
{
    public static class CapitalGains
    {
        public static decimal CalculateGainsFromPrevious(decimal value, decimal? previous, decimal div)
        {
            return (decimal) (value - previous ?? 0 + div);
        }

        public static decimal CalculateGains(decimal value, decimal cost)
        {
            return value - cost;
        }

        public static decimal CalculateGainsPercentFromPrevious(decimal value, decimal previous, decimal div)
        {
            if (previous <= 0)
                return 0;

            return (decimal) (value - previous + div )/previous;
        }

        public static decimal CalculateGainsPercentMon(decimal value, decimal lastMonth)
        {
            if (lastMonth <= 0)
                return 0;

            return (decimal)(value - lastMonth ) / lastMonth;
        }

        public static object CalculateAllGains()
        {
            return 0;
        }
    }
}
