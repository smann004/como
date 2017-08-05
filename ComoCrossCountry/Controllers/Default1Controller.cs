using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ComoCrossCountry.Controllers
{
    public class Default1Controller : Controller
    {
        private comoEntities db = new comoEntities();

        //
        // GET: /Default1/

        public ActionResult Index()
        {
            return View(db.Meets.ToList());
        }

        //
        // GET: /Default1/Details/5

        public ActionResult Details(int id = 0)
        {
            Meet meet = db.Meets.Single(m => m.ID == id);
            if (meet == null)
            {
                return HttpNotFound();
            }
            return View(meet);
        }

        //
        // GET: /Default1/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Default1/Create

        [HttpPost]
        public ActionResult Create(Meet meet)
        {
            if (ModelState.IsValid)
            {
                db.Meets.AddObject(meet);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(meet);
        }

        //
        // GET: /Default1/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Meet meet = db.Meets.Single(m => m.ID == id);
            if (meet == null)
            {
                return HttpNotFound();
            }
            return View(meet);
        }

        //
        // POST: /Default1/Edit/5

        [HttpPost]
        public ActionResult Edit(Meet meet)
        {
            if (ModelState.IsValid)
            {
                db.Meets.Attach(meet);
                db.ObjectStateManager.ChangeObjectState(meet, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(meet);
        }

        //
        // GET: /Default1/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Meet meet = db.Meets.Single(m => m.ID == id);
            if (meet == null)
            {
                return HttpNotFound();
            }
            return View(meet);
        }

        //
        // POST: /Default1/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Meet meet = db.Meets.Single(m => m.ID == id);
            db.Meets.DeleteObject(meet);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}