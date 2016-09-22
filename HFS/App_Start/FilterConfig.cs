using System.Web;
using System.Web.Mvc;
using HFS.Infrastructure;

namespace HFS
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
//            filters.Add(new SessionExpireAttribute());
        }
    }
}
