using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace _211005
{
    public partial class FrmCookie : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["OK"]["strName"] = "Oko";
            Response.Cookies["OK"]["strPhone"] = "01032470882";

            string strCookie = Request.Cookies["OK"].Value;
            Response.Write(strCookie + "<br>");

            HttpCookie cookie = new HttpCookie("OK");
            cookie.Expires = DateTime.Now.AddMinutes(1);

            Response.Write(cookie.Expires + "<br>");  
        }
    }
}