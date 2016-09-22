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
    public class EquitiesController : Controller
    {
        private readonly IEquityService _equities;
        private readonly IBasketService _baskets;
        private readonly IUnitOfWorkAsync _uow;

        public EquitiesController(IEquityService equities, IBasketService baskets, IUnitOfWorkAsync uow)
        {
            if (equities == null)
                throw new ArgumentNullException(nameof(equities));
            if (baskets == null)
                throw new ArgumentNullException(nameof(baskets));
            if (uow == null)
                throw new ArgumentNullException(nameof(uow));

            _equities = equities;
            _baskets = baskets;
            _uow = uow;
        }


        // GET: Equities
        public ActionResult Index()
        {
            CreateSelectLists();
            return View(_equities.GetEquities(CurrentSession.TenantId));
        }

        // GET: Equities/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Equity equity = _equities.Find(id);
            if (equity == null)
            {
                return HttpNotFound();
            }
            return View(equity);
        }

        // GET: Equities/Create
        public ActionResult Create()
        {
            CreateSelectLists();
            return View();
        }

        protected void CreateSelectLists()
        {
            ViewBag.Baskets = new SelectList(_baskets.GetBaskets(), "Id", "Symbol");
        }

        // POST: Equities/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Symbol,Name,BasketId,Show,Protection,BiMoIx,SeSoIx")] Equity equity)
        {
            if (ModelState.IsValid)
            {
                equity.TenantId = CurrentSession.TenantId;
                _equities.Insert(equity);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }

            CreateSelectLists();
            return View(equity);
        }

        // GET: Equities/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Equity equity = _equities.Find(id);
            if (equity == null)
            {
                return HttpNotFound();
            }
            CreateSelectLists();
            return View(equity);
        }

        // POST: Equities/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Equity,Symbol,Name,BasketId,Show,Protection,BiMoIx,SeSoIx")] Equity equity)
        {
            if (ModelState.IsValid)
            {
                equity.TenantId = CurrentSession.TenantId;
                _equities.Update(equity);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }
            CreateSelectLists();
            return View(equity);
        }

        // GET: Equities/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Equity equity = _equities.Find(id);
            if (equity == null)
            {
                return HttpNotFound();
            }
            return View(equity);
        }

        // POST: Equities/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _equities.Delete(id);
            _uow.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
