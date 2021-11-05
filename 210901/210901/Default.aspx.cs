using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210901
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "현재 시간: " + DateTime.Now.ToString();  // 현재 시간을 나타냄
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double rad = double.Parse(TextBox1.Text);   // text에 대한 부분이 rad라고 하는 double 형식으로 들어가게 됨.
            double rst = rad * rad * Math.PI;

            Label1.Text = "반지름이 " + rad.ToString() +"cm 인 원의 넓이는 " +    // toString에 대한 부분도 형변환 시켜주기
                rst.ToString() + " cm<sup>2</sup> 입니다";   // <sup>2</sup>은 제곱 표시를 의미
        }
    }
}