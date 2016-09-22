using System;

namespace HFS.Service.Infrastructure.Math
{
    public static class DollarDay
    {
        public static int Calculate(decimal cost, DateTime purchased, DateTime? sold, DateTime sysDate)
        {
            if (sold != null && sold < purchased)
                return 0;

            int dollardays = 0;
            TimeSpan timespan = (TimeSpan) (sold != null ? sold - purchased : sysDate - purchased);
            dollardays = Convert.ToInt32(System.Math.Floor(cost * timespan.Days));
            return dollardays;
        }

        public static DateTime CalculateAverageDate(int dollarDays, decimal cost)
        {
            return DateTime.Today.AddDays(-((double)dollarDays / (double)cost));
        }

    }
}