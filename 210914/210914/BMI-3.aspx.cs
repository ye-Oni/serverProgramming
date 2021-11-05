using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210914
{
    public partial class BMI_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                ddlList1.Items.Add(new ListItem("센티미터(cm)", "0.01"));
                ddlList1.Items.Add(new ListItem("피트(feet)", "0.3048"));
                ddlList1.Items.Add(new ListItem("미터(M)", "1"));
            }
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