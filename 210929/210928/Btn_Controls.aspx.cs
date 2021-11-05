using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210928
{
    public partial class Btn_Controls : System.Web.UI.Page
    {
        void ShowResult(string result)
        {
            Label lblResult = new Label();
            Page.Controls.Add(lblResult);
            lblResult.Text = result + "<br />";
        }

        protected void comm_cmd(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Sort")
                Sort_List(e.CommandArgument.ToString());
            else
                Label1.Text = "CommnadName 확인해주세요!";
        }

        private void Sort_List(string v)
        {
            if (v == "Ascending")
            {
                Label1.Text = "오름차순입니다!";
                // Ascending Mehtod 작성
            }
            if (v == "Descending")
            {
                Label1.Text = "내림차순입니다!";
                // Descending Mehtod 작성
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.naver.com");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Label1.Text = "그림 클릭 좌표 값은 (" + e.X.ToString() + " ,";
            Label1.Text += e.Y.ToString() + ") 입니다!";
        }
    }
}