using System;
using System.Data.Entity;
using System.Linq;
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
    public class CashController : Controller
    {
        private ICashService _cash;
        private IUnitOfWorkAsync _uow;
        private IAccountService _accounts;

        public CashController(ICashService cash, IAccountService accounts, IUnitOfWorkAsync uow)
        {
            if (cash == null)
                throw new ArgumentNullException(nameof(cash));
            if (accounts == null)
                throw new ArgumentNullException(nameof(accounts));
            if (uow == null)
                throw new ArgumentNullException(nameof(uow));

            _cash = cash;
            _uow = uow;
            _accounts = accounts;
        }

        // GET: Cash
        public ActionResult Index()
        {
            return View(_cash.GetTransactions(CurrentSession.TenantId));
        }

        // GET: Cash/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cash cash = _cash.Find(id);
            if (cash == null)
            {
                return HttpNotFound();
            }
            return View(cash);
        }

        // GET: Cash/Create
        public ActionResult Create()
        {
            CreateSelectLists();
            return View();
        }

        // POST: Cash/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,AccountId,Code,Ref,Transaction,Date,X,Amount")] Cash cash)
        {
            if (ModelState.IsValid)
            {
                cash.TenantId = CurrentSession.TenantId;
                _cash.Insert(cash);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }

            CreateSelectLists();
            return View(cash);
        }

        // GET: Cash/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cash cash = _cash.Find(id);
            if (cash == null)
            {
                return HttpNotFound();
            }
            CreateSelectLists();
            return View(cash);
        }

        // POST: Cash/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,AccountId,Code,Ref,Transaction,Date,X,Amount")] Cash cash)
        {
            if (ModelState.IsValid)
            {
                cash.TenantId = CurrentSession.TenantId;
                _cash.Update(cash);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }
            CreateSelectLists();
            return View(cash);
        }

        protected void CreateSelectLists()
        {
            ViewBag.Accounts = new SelectList(_accounts.GetAccounts(CurrentSession.TenantId), "Id", "Name");
        }

        // GET: Cash/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Cash cash = _cash.Find(id);
            if (cash == null)
            {
                return HttpNotFound();
            }
            return View(cash);
        }

        // POST: Cash/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _cash.Delete(id);
            _uow.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}
