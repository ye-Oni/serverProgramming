using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// 상속에 대한 개념
namespace _210914
{
    public partial class inherits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Customer cs = new Customer("Yewon", "111111");
            ShowResult(cs.printInfo());

            BestCustomer bs = new BestCustomer();
            ShowResult(bs.BestInfo());
        }

        void ShowResult(string result)
        {
            Label lblDisp = new Label();
            Page.Controls.Add(lblDisp);
            lblDisp.Text = result + "<br />";
        }
    }
}