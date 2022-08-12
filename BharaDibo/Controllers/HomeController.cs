using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BharaDibo.Models;

namespace BharaDibo.Controllers
{
    public class HomeController : Controller
    {
        BharaDibo_DBEntities3 db = new BharaDibo_DBEntities3();
        public static int contactE;
        public static List<int> CartItems = new List<int>();

        public ActionResult Index()
        {
            List<Product> products = db.Products.ToList();
            return View(products);
        }

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(Customer customer)
        {
            if (!customer.CUSEmail.EndsWith(".com"))
            {
                ViewBag.Notification = "Email Format Incorrect";
                return View();
            }
            System.Diagnostics.Debug.WriteLine(customer.CUSContactNo.Length);
            if (customer.CUSContactNo.Length != 11 || !customer.CUSContactNo.StartsWith("01"))
            {
                System.Diagnostics.Debug.WriteLine("Check");
                ViewBag.Notification = "Contact Number is invalid";
                return View();
            }
            if (db.Customers.Any(x => x.CUSEmail == customer.CUSEmail || x.CUSName == customer.CUSName))
            {
                ViewBag.Notification = "This account has already existed";
                return View();
            }
            else
            {
                db.Customers.Add(customer);
                db.SaveChanges();

                Session["CUSName"] = customer.CUSName.ToString();
                Session["CUSEmail"] = customer.CUSEmail.ToString();
                return RedirectToAction("Index", "Home");

            }

        }

        public ActionResult Login()
        {
            if (Session["CUSName"] != null)
            {
                ViewBag.loggedIn = "User already logged in";
            }
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(Customer customer)
        {
            if (customer.CUSEmail.Equals("BharaDibo@gmail.com") && customer.CUSPassword.Equals("BharaDibo"))
            {
                Session["CUSName"] = "Admin";
                Session["CUSEmail"] = customer.CUSEmail.ToString();
                ViewBag.Login = "Admin Logged In";
                return RedirectToAction("AdminPanel", "Admin");
            }
            var checklogin = db.Customers.Where(x => x.CUSEmail.Equals(customer.CUSEmail) && x.CUSPassword.Equals(customer.CUSPassword)).FirstOrDefault();
            if (checklogin != null)
            {
                Session["CUSName"] = checklogin.CUSName;
                Session["CUSEmail"] = customer.CUSEmail.ToString();
                ViewBag.Login = "Logged In";
                //return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.Notification = "Wrong Email or Password";
            }
            return View();
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        
    }

}