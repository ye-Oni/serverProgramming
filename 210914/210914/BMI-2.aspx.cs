using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210914
{
    public partial class BMI_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnExec_Click(object sender, EventArgs e)
        {
            float keys = float.Parse(txtkey.Text);
            float weight = float.Parse(txtweight.Text);

            float rst;
            keys = keys / 100;  // m 형식으로 변환
            rst = weight / (keys * keys);

            lblDisp.Text = "체질량지수(BMI) : " + rst.ToString();
        }
    }
}