using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Caching;
using System.Web.Mvc;
using HFS.Entities.Models;
using HFS.Infrastructure;
using HFS.Service;
using HFS.Service.Services;
using Repository.Pattern.Infrastructure;
using Repository.Pattern.UnitOfWork;
using HFS.Infrastructure;

namespace HFS.Controllers
{
    [Authorize]
    [RequireHttps]
    [SessionExpire]
    public class AccountsController : Controller
    {
        private readonly IAccountService _accounts;
        private IPortfolioService _portfolios;
        private IUnitOfWork _uow;

        public AccountsController(IAccountService accounts, IPortfolioService portfolios, IUnitOfWorkAsync uow)
        {
            if (accounts == null)
                throw new ArgumentNullException(nameof(accounts));
            if (uow == null)
                throw new ArgumentNullException(nameof(uow));
            if (portfolios == null)
                throw new ArgumentNullException(nameof(portfolios));

            _accounts = accounts;
            _portfolios = portfolios;
            _uow = uow;
        }

        // GET: Accounts
        public ActionResult Index()
        {
            var accounts = _accounts.GetAccounts(CurrentSession.TenantId);
            return View(accounts);
        }

        // GET: Accounts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var account = _accounts.Find(id);
            if (account == null)
            {
                return HttpNotFound();
            }
            return View(account);
        }

        // GET: Accounts/Create
        public ActionResult Create()
        {
            ViewBag.Portfolios = new SelectList(_portfolios.GetPortfolios(), "Id", "Symbol");
            return View();
        }

        // POST: Accounts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,TenantId, Name,PortfolioId")] Account account)
        {
            if (ModelState.IsValid)
            {
                account.TenantId = CurrentSession.TenantId;
                _accounts.Insert(account);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Portfolios = new SelectList(_portfolios.GetPortfolios(), "Id", "Symbol");
            return View(account);
        }

        // GET: Accounts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var account = _accounts.Find(id);
            if (account == null)
            {
                return HttpNotFound();
            }
            ViewBag.Portfolios = new SelectList(_portfolios.GetPortfolios(), "Id", "Symbol");
            return View(account);
        }

        // POST: Accounts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,PortfolioId")] Account account)
        {
            if (ModelState.IsValid)
            {
                account.TenantId = CurrentSession.TenantId;
                _accounts.Update(account);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Portfolios = new SelectList(_portfolios.GetPortfolios(), "Id", "Symbol");
            return View(account);
        }

        // GET: Accounts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var account = _accounts.Find(id);
            if (account == null)
            {
                return HttpNotFound();
            }
            return View(account);
        }

        // POST: Accounts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _accounts.Delete(id);
            _uow.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}
