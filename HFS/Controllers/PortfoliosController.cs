using System;
using System.Net;
using System.Web.Mvc;
using HFS.Entities.Models;
using HFS.Infrastructure;
using HFS.Service;
using HFS.Service.Services;
using Repository.Pattern.UnitOfWork;

namespace HFS.Controllers
{
    [Authorize]
    [RequireHttps]
    [SessionExpire]

    public class PortfoliosController : Controller
    {
        private readonly IPortfolioService _portfolio;
        private readonly IUnitOfWorkAsync _uow;

        public PortfoliosController(IPortfolioService portfolio, IUnitOfWorkAsync uow)
        {
            if (portfolio == null)
                throw new ArgumentNullException(nameof(portfolio));
            if (uow == null)
                throw new ArgumentNullException(nameof(portfolio));

            _portfolio = portfolio;
            _uow = uow;

        }

        // GET: Portfolios
        public ActionResult Index()
        {
            return View(_portfolio.GetPortfolios());
        }

        // GET: Portfolios/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Portfolio portfolio = _portfolio.Find(id);
            if (portfolio == null)
            {
                return HttpNotFound();
            }
            return View(portfolio);
        }

        // GET: Portfolios/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Portfolios/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Equity,Name")] Portfolio portfolio)
        {
            if (ModelState.IsValid)
            {
                _portfolio.Insert(portfolio);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(portfolio);
        }

        // GET: Portfolios/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Portfolio portfolio = _portfolio.Find(id);
            if (portfolio == null)
            {
                return HttpNotFound();
            }
            return View(portfolio);
        }

        // POST: Portfolios/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Equity,Name")] Portfolio portfolio)
        {
            if (ModelState.IsValid)
            {
                _portfolio.Update(portfolio);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(portfolio);
        }

        // GET: Portfolios/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Portfolio portfolio = _portfolio.Find(id);
            if (portfolio == null)
            {
                return HttpNotFound();
            }
            return View(portfolio);
        }

        // POST: Portfolios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _portfolio.Delete(id);
            _uow.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
