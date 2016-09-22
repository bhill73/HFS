using System;
using System.Data.Entity;
using System.Net;
using System.Web.Mvc;
using HFS.Entities.Models;
using HFS.Infrastructure;
using HFS.Service;
using HFS.Service.Services;
using Repository.Pattern.Infrastructure;
using Repository.Pattern.UnitOfWork;

namespace HFS.Views
{
    [Authorize]
    [RequireHttps]
    [SessionExpire]
    public class BasketsController : Controller
    {
        private IBasketService _baskets;
        private IUnitOfWorkAsync _uow;

        public BasketsController(IBasketService baskets, IUnitOfWorkAsync uow)
        {
            if (baskets == null)
                throw new ArgumentNullException(nameof(baskets));
            if (uow == null)
                throw new ArgumentNullException(nameof(uow));

            _baskets = baskets;
            _uow = uow;
        }


        // GET: Baskets
        public ActionResult Index()
        {
            return View(_baskets.GetBaskets());
        }

        // GET: Baskets/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Basket basket = _baskets.Find(id);
            if (basket == null)
            {
                return HttpNotFound();
            }
            return View(basket);
        }

        // GET: Baskets/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Baskets/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Equity,Name,BiMolx,SeSolx,Protection")] Basket basket)
        {
            if (ModelState.IsValid)
            {
                basket.ObjectState = ObjectState.Added;
                basket.TenantId = CurrentSession.TenantId;
                _baskets.Insert(basket);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(basket);
        }

        // GET: Baskets/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Basket basket = _baskets.Find(id);
            if (basket == null)
            {
                return HttpNotFound();
            }
            return View(basket);
        }

        // POST: Baskets/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Equity,Name,BiMolx,SeSolx,Protection")] Basket basket)
        {
            if (ModelState.IsValid)
            {
                basket.ObjectState = ObjectState.Modified;
                basket.TenantId = CurrentSession.TenantId;
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(basket);
        }

        // GET: Baskets/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Basket basket = _baskets.Find(id);
            if (basket == null)
            {
                return HttpNotFound();
            }
            return View(basket);
        }

        // POST: Baskets/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _baskets.Delete(id);
            _uow.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}
