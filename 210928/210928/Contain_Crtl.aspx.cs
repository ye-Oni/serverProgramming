using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210928
{
    public partial class Contain_Crtl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Height = 120;

            LiteralControl ics = new LiteralControl();
            ics.Text = "컨트롤형 웹 컨트롤 예제<br /> 쇼핑백의 변신 : ";
            Panel1.Controls.Add(ics);

            RadioButton opt_01 = new RadioButton();
            opt_01.Text = "01";
            //opt_01.Checked = true;
            opt_01.GroupName = "Selection";
            opt_01.AutoPostBack = true;
            Panel1.Controls.Add(opt_01);

            opt_01.CheckedChanged += new System.EventHandler(opt_01_Checked);

            RadioButton opt_02 = new RadioButton();
            opt_02.Text = "02";
            //opt_01.Checked = true;
            opt_02.GroupName = "Selection";
            opt_02.AutoPostBack = true;
            Panel1.Controls.Add(opt_02);

            opt_02.CheckedChanged += new System.EventHandler(opt_02_Checked);

        }

        private void opt_02_Checked(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        private void opt_01_Checked(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}