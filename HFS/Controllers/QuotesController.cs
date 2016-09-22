using System;
using System.Collections.Generic;
using System.Net;
using System.Web.Mvc;
using HFS.Entities.Models;
using HFS.Infrastructure;
using HFS.Service.Services;
using Microsoft.Practices.ObjectBuilder2;
using Repository.Pattern.UnitOfWork;

namespace HFS.Controllers
{
    [Authorize]
    [RequireHttps]
    [SessionExpire]
    public class QuotesController : Controller
    {
        private readonly IQuoteService _quotes;
        private readonly IUnitOfWorkAsync _uow;
        private readonly IEquityService _equities;

        public QuotesController(IQuoteService quotes, IEquityService equities, IUnitOfWorkAsync uow)
        {
            if (quotes == null)
                throw new ArgumentNullException(nameof(quotes));

            if (uow == null)
                throw new ArgumentNullException(nameof(quotes));

            if (equities == null)
                throw new ArgumentNullException(nameof(equities));

            _quotes = quotes;
            _uow = uow;
            _equities = equities;
        }


        // GET: Quotes
        public ActionResult Index()
        {
            List<Quote> quotes = new List<Quote>();
            _equities.GetEquities(CurrentSession.TenantId).ForEach(x =>
            {
                var quote = _quotes.GetQuote(x.Symbol);
                if (quote != null)
                    quotes.Add(quote);

            });

            return View(quotes);
        }

        // GET: Quotes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quote quote = _quotes.Find(id);
            if (quote == null)
            {
                return HttpNotFound();
            }
            return View(quote);
        }

        // GET: Quotes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Quotes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Equity,Q_Last,Q_Change,Q_52Wk_High,Q_52Wk_Low,PEG,PE")] Quote quote)
        {
            if (ModelState.IsValid)
            {
                _quotes.Insert(quote);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(quote);
        }

        // GET: Quotes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quote quote = _quotes.Find(id);
            if (quote == null)
            {
                return HttpNotFound();
            }
            return View(quote);
        }

        // POST: Quotes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Equity,Q_Last,Q_Change,Q_52Wk_High,Q_52Wk_Low,PEG,PE")] Quote quote)
        {
            if (ModelState.IsValid)
            {
                _quotes.Update(quote);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(quote);
        }

        // GET: Quotes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Quote quote = _quotes.Find(id);
            if (quote == null)
            {
                return HttpNotFound();
            }
            return View(quote);
        }

        // POST: Quotes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _quotes.Delete(id);
            _uow.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}
