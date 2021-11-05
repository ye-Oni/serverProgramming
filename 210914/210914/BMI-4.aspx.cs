using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210914
{
    public partial class BMI_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            ListItem item = ddlList1.Items[ddlList1.SelectedIndex];

            float keys = float.Parse(txtkey.Text);
            float weight = float.Parse(txtweight.Text);
            float rst;

            keys = keys * float.Parse(item.Value);

            rst = weight / (keys * keys);
            lblDisp1.Text = "체질량지수(BMI) = " + rst.ToString();

        }
    }
}