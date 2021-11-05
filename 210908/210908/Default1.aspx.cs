using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210908
{
    public partial class Default : System.Web.UI.Page
    {
        // 이 부분에 클래스 만들기
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            // Customer Class
            //Customer cs = new Customer("김예원", "201732134");
            //ShowResult(cs.printInfo());

            BestCustomer bc = new BestCustomer();
            bc.m_Name = "김예원";
            bc.m_SocialNumber = "201732134";

            ShowResult(bc.m_Name + " : " + bc.m_SocialNumber);
            */

            Customers cts = new Customers();

            cts.m_Name = "OKO";
            cts.MakeAccount(3);
            ShowResult(cts.printInfos());
        }

        void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br />";
        }
    }
}