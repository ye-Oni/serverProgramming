using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211110
{
    public partial class FrmMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmWrite.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmReWrite.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/FrmLogin.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/FremCreate.aspx");
        }

    }
}