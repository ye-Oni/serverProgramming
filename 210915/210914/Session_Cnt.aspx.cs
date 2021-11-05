using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210914
{
    public partial class Session_Cnt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int cnt;
            if (Application["totcnt"] == null)
                Application["totcnt"] = "0";

            cnt = Convert.ToInt32(Application["totcnt"]);
            cnt++;
            Session["totcnt"] = cnt;

            Response.Write("세션 카운트 : ");
            Response.Write(Session["totcnt"]);

        }
    }
}