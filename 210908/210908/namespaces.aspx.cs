using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210908
{
    public partial class namespaces : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Banking.Customer b_cs = new Banking.Customer();
            b_cs.m_Name = "뱅킹이름";
            ShowResult(b_cs.m_Name);

            Medical.MedicalCustomer m_mc = new Medical.MedicalCustomer();
            m_mc.RegisterCustomer("AAA");
            
        }

        void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br />";
        }
    }
}