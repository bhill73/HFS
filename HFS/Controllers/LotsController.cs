using System;
using System.Net;
using System.Web.Mvc;
using HFS.Entities.Models;
using HFS.Infrastructure;
using HFS.Service.Services;
using Repository.Pattern.Infrastructure;
using Repository.Pattern.UnitOfWork;

namespace HFS.Controllers
{
    [Authorize]
    [RequireHttps]
    [SessionExpire]
    public class LotsController : Controller
    {
        private readonly ILotService _lots;
        private readonly IUnitOfWorkAsync _uow;
        private readonly IAccountService _accounts;
        private readonly IEquityService _equities;

        public LotsController(ILotService lots,
            IAccountService accounts, 
            IEquityService equities,
            IUnitOfWorkAsync uow)
        {
            if (lots == null)
                throw new ArgumentNullException(nameof(lots));
            if (accounts == null)
                throw new ArgumentNullException(nameof(accounts));
            if (equities == null)
                throw new ArgumentNullException(nameof(equities));
            if (uow == null)
                throw new ArgumentNullException(nameof(uow));

            _lots = lots;
            _accounts = accounts;
            _equities = equities;
            _uow = uow;
        }
        
        // GET: Lots    
        public ActionResult Index()
        {
            var lots = _lots.GetLots(true, CurrentSession.TenantId);
            return View(lots);
        }

        // GET: Lots/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            Lot lot = _lots.Find(id);
            if (lot == null)
            {
                return HttpNotFound();
            }
            return View(lot);
        }

        protected void CreateSelectLists()
        {
            ViewBag.AccountId = new SelectList(_accounts.GetAccounts(CurrentSession.TenantId), "Id", "Name");
            ViewBag.EquityId = new SelectList(_equities.GetEquities(CurrentSession.TenantId), "Id", "Symbol");
        }

        // GET: Lots/Create
        public ActionResult Create()
        {
            CreateSelectLists();
            return View();
        }

        // POST: Lots/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,EquityId,Purchased,AccountId,Shares,Cost,SellDate,LastYear,LastMonth,Value,Active")] Lot lot)
        {
            if (ModelState.IsValid)
            {
                lot.ObjectState = ObjectState.Added;
                lot.TenantId = CurrentSession.TenantId;
                _lots.Insert(lot);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }

            CreateSelectLists();
            return View(lot);

        }

        // GET: Lots/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var lot = _lots.Find(id);
            if (lot == null)
            {
                return HttpNotFound();
            }
            CreateSelectLists();
            return View(lot);
        }

        // POST: Lots/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,EquityId,Purchased,AccountId,Shares,Cost,SellDate,LastYear,LastMonth,Value,Active")] Lot lot)
        {
            if (ModelState.IsValid)
            {
                lot.TenantId = CurrentSession.TenantId;
                lot.ObjectState = ObjectState.Modified;
                _lots.Update(lot);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }
            CreateSelectLists();
            return View(lot);

        }

        // GET: Lots/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var lot = _lots.Find(id);
            if (lot == null)
            {
                return HttpNotFound();
            }
            return View(lot);
        }

        // POST: Lots/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            var lot = _lots.Find(id);
            lot.ObjectState = ObjectState.Deleted;
            _lots.Delete(lot);
            _uow.SaveChanges();
            return RedirectToAction("Index");

        }

    }
}
