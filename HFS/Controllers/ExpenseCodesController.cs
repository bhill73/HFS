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
    public class ExpenseCodesController : Controller
    {
        private readonly IExpenseCodeService _expense;
        private readonly IUnitOfWorkAsync _uow;

        public ExpenseCodesController(IExpenseCodeService expense, IUnitOfWorkAsync uow)
        {
            if (expense == null)
                throw new ArgumentNullException(nameof(expense));
            if (uow == null)
                throw new ArgumentNullException(nameof(uow));

            _expense = expense;
            _uow = uow;

        }

        // GET: ExpenseCodes
        public ActionResult Index()
        {
            HFS.Service.Infrastructure.ServiceCache.InvalidateCache(CurrentSession.TenantId);

            return View(_expense.GetExpenseCodes());
        }

        // GET: ExpenseCodes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ExpenseCode expenseCode = _expense.Find(id);
            if (expenseCode == null)
            {
                return HttpNotFound();
            }
            return View(expenseCode);
        }

        // GET: ExpenseCodes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ExpenseCodes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Code,Name,Category")] ExpenseCode expenseCode)
        {
            if (ModelState.IsValid)
            {
                expenseCode.TenantId = CurrentSession.TenantId;
                _expense.Insert(expenseCode);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(expenseCode);
        }

        // GET: ExpenseCodes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ExpenseCode expenseCode = _expense.Find(id);
            if (expenseCode == null)
            {
                return HttpNotFound();
            }
            return View(expenseCode);
        }

        // POST: ExpenseCodes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Code,Name,Category")] ExpenseCode expenseCode)
        {
            if (ModelState.IsValid)
            {
                expenseCode.TenantId = CurrentSession.TenantId;
                _expense.Update(expenseCode);
                _uow.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(expenseCode);
        }

        // GET: ExpenseCodes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ExpenseCode expenseCode = _expense.Find(id);
            if (expenseCode == null)
            {
                return HttpNotFound();
            }
            return View(expenseCode);
        }

        // POST: ExpenseCodes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            _expense.Delete(id);
            _uow.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
