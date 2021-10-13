using Eagle_Hotel_Web_Master.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Security;
using System.Web.SessionState;

namespace Eagle_Hotel_Web_Master
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(Object sender, EventArgs e)
        {
            BundleConfig.RegisterBundle(BundleTable.Bundles);
        }
    }
}