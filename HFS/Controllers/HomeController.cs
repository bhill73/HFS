using System;
using System.Linq;
using System.Web.Mvc;
using HFS.Infrastructure;
using HFS.Models;
using HFS.Service.Services;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;


namespace HFS.Controllers
{
    [Authorize]
    [RequireHttps]
    [SessionExpire]
    public class HomeController : Controller
    {
        private ISummaryService _summary;

        public HomeController(ISummaryService summary)
        {
            if (summary == null)
                throw new ArgumentNullException(nameof(summary));

            _summary = summary;
            _summary.AttachTenant(CurrentSession.TenantId);
        }

        public ActionResult Index()
        {
            try
            {
                if (CurrentSession.MarketSummary == null)
                    CurrentSession.MarketSummary = _summary.GetMarketSummary(_summary.TenantId).ToList();
            }
            catch (Exception ex)
            {
                var message = ex.Message;

            }

            return View(new InvestmentSummaryModel(
                null,
                CurrentSession.EquitySummary,
                CurrentSession.MarketSummary,
                CurrentSession.PortfolioSummary,
                CurrentSession.EquitySummaryByAccount,
                CurrentSession.EquitySummaryByBasket));
        }

        public ActionResult GetEquitySummaryJson([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                //if (CurrentSession.EquitySummary == null)
                    CurrentSession.EquitySummary = _summary.GetEquitySummary().ToList();
            }
            catch (Exception ex)
            {
                var message = ex.Message;
            }

            return Json(CurrentSession.EquitySummary.ToDataSourceResult(request, ModelState),
                JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetEquitySummaryByBasketJson([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
               // if (CurrentSession.EquitySummaryByBasket == null)
                    CurrentSession.EquitySummaryByBasket = _summary.GetEquitySummaryByBasket().ToList();

            }
            catch (Exception ex)
            {
                var message = ex.Message;

            }

            return Json(CurrentSession.EquitySummaryByBasket.ToDataSourceResult(request, ModelState),
                JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetEquitySummaryByAccountJson([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                //if (CurrentSession.EquitySummaryByAccount == null)
                    CurrentSession.EquitySummaryByAccount = _summary.GetEquitySummaryByAccount().ToList();
            }
            catch (Exception ex)
            {
                var message = ex.Message;
                // insert logging later
            }

            return Json(CurrentSession.EquitySummaryByAccount.ToDataSourceResult(request, ModelState),
                JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetPortfolioSummaryJson([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                //if (CurrentSession.PortfolioSummary == null)
                    CurrentSession.PortfolioSummary = _summary.GetPortfolioSummary().ToList();
            }
            catch (Exception ex)
            {
                var message = ex.Message;
                // insert logging later
            }

            return Json(CurrentSession.PortfolioSummary.ToDataSourceResult(request, ModelState),
                JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetLotSummaryJson([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                //if (CurrentSession.LotSummary == null)
                    CurrentSession.LotSummary = _summary.GetLotSummary().ToList();
            }
            catch (Exception ex)
            {
                var message = ex.Message;
                // insert logging later
            }

            return Json(CurrentSession.LotSummary.ToDataSourceResult(request, ModelState),
                JsonRequestBehavior.AllowGet);

        }

        public ActionResult About()
        {
            ViewBag.Message = "Lot$ - ";
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }
    }
}