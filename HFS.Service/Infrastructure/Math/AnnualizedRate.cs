
using System;

namespace HFS.Service.Infrastructure.Math
{
    public static class AnnualizedRate
    {
        public static decimal Calculate(decimal value, decimal dividend, decimal cost, decimal dollardays)
        {
            if (cost <= 0)
                return 0;
            double ratio = Convert.ToDouble((value + dividend) / cost);
            decimal denom = (dollardays / cost) / (decimal)365.25;
            double pow = (1 / (double)denom);
            double ar = System.Math.Pow(ratio, pow) - 1;
            return  Convert.ToDecimal(ar);
        }

        public static decimal Calculate(decimal value, decimal dividend, decimal cost, TimeSpan span)
        {
            if (cost <= 0)
                return 0;
            double ratio = Convert.ToDouble((value + dividend) / cost);
            decimal denom = span.Days / (decimal)365.25;
            double pow = (1 / (double)denom);
            double ar = System.Math.Pow(ratio, pow) - 1;
            return Convert.ToDecimal(ar);
        }
    }
}   