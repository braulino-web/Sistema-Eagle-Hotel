using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace Eagle_Hotel_Web_Master.App_Start
{
    public class BundleConfig
    {
        public static void RegisterBundle(BundleCollection bundle)
        {
            //bundle all common js files, required in every page  
            bundle.Add(new ScriptBundle("~/bundles/startJS")
            .Include("~/Javascript/main.js",
            "~/assets/OwlCarousel/owl.carousel.min.js"));

            //wrapup all css in a bundle  
            bundle.Add(new StyleBundle("~/bundles/startCss")
            .Include("~/Css/style.css",
            "~/assets/OwlCarousel/owl.carousel.min.css",
            "~/assets/OwlCarousel/owl.theme.default.min.css"));

            BundleTable.EnableOptimizations = false;
        }
    }
}