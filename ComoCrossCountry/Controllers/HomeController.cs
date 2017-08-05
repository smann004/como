/*
 * Created by SharpDevelop.
 * User: steve
 * Date: 7/23/2013
 * Time: 8:53 PM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;

namespace ComoCrossCountry.Controllers
{
      
	 public class HomeController : Controller
    {
         private comoEntities db = new comoEntities();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Calendar()
        {
            ViewBag.Message = "Calendar Page";
            return View();
        }
        
         public ActionResult Schedule()
        {
            ViewBag.Message = "Schedule Page";
            return View(db.Meets.ToList());
        }

         public ActionResult Coaches()
         {
             ViewBag.Message = "Coaches Page";
             return View();
         }

         public ActionResult SaturdayRun()
         {
             ViewBag.Message = "Summer Schedule";
             //HttpRuntime.AppDomainAppPath.ToString
             var directory = new DirectoryInfo(".");
             var myFile = (from f in directory.GetFiles()
                           orderby f.LastWriteTime descending
                           select f).First();

             // or...
             //var myFile = directory.GetFiles()
             //             .OrderByDescending(f => f.LastWriteTime)
             //             .First();

             return View();


         }

         public ActionResult Results()
         {
             ViewBag.Message = "Results Page";


            
             return View(db.Meets.ToList());
             //return View();
         }

         public ActionResult ResultDetail(int raceID)
         {
             ViewBag.Message = "Results Details Page";
             ComoCrossCountry.Race race = (from r in db.Races where r.Id == raceID select r).FirstOrDefault();
             return View(race);
             //return View();
         }
    }
}
