using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005
{
    public partial class Doremi_Preless : System.Web.UI.Page
    {
        int cnt;
        string[] PArr = { "도", "레", "미", "파", "솔", "라", "시" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if(ViewState["cnt"] != null)   //if(IsPostBack)
                cnt = (int)ViewState["cnt"];
            Label1.Text = PArr[cnt];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cnt = (cnt + 1) % 7;

            ViewState["cnt"] = cnt;
            Label1.Text = PArr[cnt];
            //ShowResult();
        }

        private void ShowResult()
        {
            Label1.Text = PArr[cnt];
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cnt = cnt - 1;
            if (cnt < 0) cnt = 6;

            ViewState["cnt"] = cnt;
            Label1.Text = PArr[cnt];
        }
    }
}