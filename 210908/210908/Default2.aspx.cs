using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210908
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Customer2 cs = new Customer2();
            //cs.SetSocialNumber("123456-1987654");   // 메소드로 만든 것
            //ShowResult(cs.GetSocialNumber());

            cs.SocialNumber = "9897462-12436457";   // 프로퍼티로 만든 것
            ShowResult(cs.SocialNumber);
        }

        void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br />";
        }
    }
}