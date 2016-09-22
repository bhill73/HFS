using System.Collections.Generic;
using System.Web;
using HFS.Service.Models;

namespace HFS.Infrastructure
{
    public static class CurrentSession
    {
        private const string TenantIdTag = "TenantId";

        public static string TenantId
        {
            get
            {
                HttpContext context = HttpContext.Current;
                if (context.Session[TenantIdTag] == null)
                {
                    return "";
                }
                else
                {
                    return (string)context.Session[TenantIdTag];                    
                }
            }

            set
            {
                HttpContext context = HttpContext.Current;
                context.Session[TenantIdTag] = value;

            }
        }

        public static List<LotSummaryItem> EquitySummary
        {
            get
            {
                HttpContext context = HttpContext.Current;
                if (context.Session["EqSum"] != null)
                {
                    return (List<LotSummaryItem>)context.Session["EqSum"];
                }

                return null;
            }

            set
            {
                HttpContext context = HttpContext.Current;
                context.Session["EqSum"] = value;
            }
        }

        public static List<LotSummaryItem> EquitySummaryByBasket
        {
            get
            {
                HttpContext context = HttpContext.Current;
                if (context.Session["EqSumBasket"] != null)
                {
                    return (List<LotSummaryItem>)context.Session["EqSumBasket"];
                }

                return null;
            }

            set
            {
                HttpContext context = HttpContext.Current;
                context.Session["EqSumBasket"] = value;
            }
        }

        public static List<LotSummaryItem> EquitySummaryByAccount
        {
            get
            {
                HttpContext context = HttpContext.Current;
                if (context.Session["EqSumAccount"] != null)
                {
                    return (List<LotSummaryItem>)context.Session["EqSumAccount"];
                }

                return null;
            }

            set
            {
                HttpContext context = HttpContext.Current;
                context.Session["EqSumAccount"] = value;
            }
        }


        public static List<QuoteMetric> MarketSummary
        {
            get
            {
                HttpContext context = HttpContext.Current;
                if (context.Session["MarketSummary"] != null)
                {
                    return (List<QuoteMetric>)context.Session["MarketSummary"];
                }

                return null;
            }

            set
            {
                HttpContext context = HttpContext.Current;
                context.Session["MarketSummary"] = value;
            }
        }

        public static IEnumerable<PortfolioSummaryItem> PortfolioSummary
        {
            get
            {
                HttpContext context = HttpContext.Current;
                if (context.Session["PortfolioSummary"] != null)
                {
                    return (List<PortfolioSummaryItem>)context.Session["PortfolioSummary"];
                }

                return null;
            }

            set
            {
                HttpContext context = HttpContext.Current;
                context.Session["PortfolioSummary"] = value;
            }
        }

        public static IEnumerable<LotSummaryItem> LotSummary
        {
            get
            {
                HttpContext context = HttpContext.Current;
                return (List<LotSummaryItem>) context.Session["LotSummary"];
            }

            set
            {
                HttpContext context = HttpContext.Current;
                context.Session["LotSummary"] = value;
            }
        }


    }
}