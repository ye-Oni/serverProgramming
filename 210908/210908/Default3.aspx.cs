using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210908
{
    public partial class Default3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            Customer3 cs3 = new Customer3();
            cs3.Name = "최길동";
            cs3.SocialNumber = "93295-29385";
            ShowResult(cs3.Name + " : " + cs3.SocialNumber);
            */

            Customer4 cs4 = new Customer4();
            cs4.Name = "오길동";
            ShowResult(cs4.Name);
        }

        void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br />";
        }
    }
}