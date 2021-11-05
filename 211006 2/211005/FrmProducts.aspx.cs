using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005
{
    public partial class FrmProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ListBox1.Items.Add(new ListItem("자전거", "30000"));
                ListBox1.Items.Add(new ListItem("자동차", "3330000"));
                ListBox1.Items.Add(new ListItem("컴퓨터", "130000"));
            }
           // Label1.Text += Session.Count.ToString() + "<br>";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "상품명 = " + ListBox1.SelectedItem 
                + "<br> 가격 = " + ListBox1.SelectedValue;

            //세션값들을 출력해 보자~~
            
        }
    }
}