using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ComoCrossCountry.Controllers
{
    public class DynamicContentController : Controller
    {
        //
        // GET: /DynamicContent/
        private comoEntities db = new comoEntities();
        public ActionResult Index()
        {
            var objModel = db.DynamicContents.ToList();
            return PartialView("_DynamicContent", objModel);
        }

    }
}
