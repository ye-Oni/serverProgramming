using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace _211027
{
    public partial class FrmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox2.Text.ToLower() =="user")
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
                Response.Redirect("FrmDefault.aspx");

            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = ""; 
            }
        }
    }
}