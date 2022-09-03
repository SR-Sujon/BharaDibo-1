using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Entity;
using System.Threading.Tasks;
using System.Net;

using BharaDibo.Models;

namespace BharaDibo.Controllers
{
    public class AdminController : Controller
    {
        BharaDibo_DBEntities db = new BharaDibo_DBEntities();

        // GET: Students
        public async Task<ActionResult> AdminIndex()
        {
            return View(await db.Customers.ToListAsync());
        }

        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customer cus = await db.Customers.FindAsync(id);
            if (cus == null)
            {
                return HttpNotFound();
            }
            return View(cus);
        }

        // GET: Customers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Customers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "CUSEmail,CUSName,CUSPassword")] Customer cus)
        {
            if (ModelState.IsValid)
            {
                db.Customers.Add(cus);
                await db.SaveChangesAsync();
                return RedirectToAction("AdminIndex");
            }

            return View(cus);
        }

        // GET: Students/Edit/5
        /*public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Student student = await db.Students.FindAsync(id);
            if (student == null)
            {
                return HttpNotFound();
            }
            return View(student);
        }

        // POST: Students/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "StudentId,StudentName,Marks")] Student student)
        {
            if (ModelState.IsValid)
            {
                db.Entry(student).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(student);
        }*/

        // GET: Students/Delete/5
        public async Task<ActionResult> Delete(int? CUCEmail)
        {
            if (CUCEmail == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customer cus = await db.Customers.FindAsync(CUCEmail);
            if (cus == null)
            {
                return HttpNotFound();
            }
            return View(cus);
        }

        // POST: Students/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Customer cus = await db.Customers.FindAsync(id);
            db.Customers.Remove(cus);
            await db.SaveChangesAsync();
            return RedirectToAction("AdminIndex");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}