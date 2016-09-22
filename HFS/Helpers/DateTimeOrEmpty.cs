using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HFS.Helpers
{
    public  static class DateTimeHelper
    {
        public static string DateTimeOrEmpty(this HtmlHelper htmlHelper, DateTime? date, string format)
        {
            return (date == DateTime.MinValue || date == null) ? string.Empty : date?.ToString(format);
        }
    }
}