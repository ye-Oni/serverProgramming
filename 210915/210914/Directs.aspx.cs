using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210914
{
    public partial class Directs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("http://www.naver.com");
            //Response.Redirect("BMI-3.aspx");
            //Server.Transfer("BMI-4.aspx");  // 주소가 변경이 안됨
            Server.Execute("Coffees.aspx");

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            // ViewState 상태처리(처음상태)
        }
    }
}