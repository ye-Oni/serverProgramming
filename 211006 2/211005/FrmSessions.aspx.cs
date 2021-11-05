using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005
{
    public partial class FrmSessions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Session["strs"] = TextBox1.Text;

            Label1.Text = (string)Session["strs"] + "<br>";
            Label1.Text += Session.Contents.ToString() +"<br>";
            Label1.Text += Session.SessionID + "<br>";
            Label1.Text += Session.Count.ToString() + "<br>";

        }
    }
}