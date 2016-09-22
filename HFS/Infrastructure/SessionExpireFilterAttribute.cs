using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HFS.Infrastructure
{
    [AttributeUsage(AttributeTargets.All, Inherited = true, AllowMultiple = false)]
    public class SessionExpireAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            HttpSessionStateBase session = filterContext.HttpContext.Session;
            if (session.IsNewSession)
            {
                var url = new UrlHelper(filterContext.RequestContext);
                var loginUrl = url.Content("~/Account/Login");
                filterContext.HttpContext.Response.Redirect(loginUrl, true);
                return;
            }
        }
    }
}