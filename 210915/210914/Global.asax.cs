using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace _210914
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            int cnt;
            if (Application["totcnt"] == null)
                Application["totcnt"] = "0";

            cnt = Convert.ToInt32(Application["totcnt"]);
            cnt++;
            Application["totcnt"] = cnt;
            Response.Write(Application["totcnt"]);

            Response.Write("세션 카운트 : ");
            Response.Write("<hr/>");
            

        }

        protected void Application_EndRequest(object sender, EventArgs e)
        {
            Response.Write("만든 날짜는 ");
            Response.Write(DateTime.Now.ToString() + " 입니다.");
        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}