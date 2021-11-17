using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211110
{
    public partial class FrmList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string selectSql = "select num, name, title, writedate, readcnt, depth, refer, pos from re_board order by refer DESC, pos";
          SqlDataSource1.SelectCommand = selectSql; 
        }
        public string SetSpace(int depth)
        {
            if (depth == 0) return "";
            string strSpace = "";
            for (int i = 0; i < depth; i++)
                strSpace += "&nbsp;&nbsp;&nbsp;&nbsp;";
            return strSpace;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmWrite.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           string selSql = "select num, name, title, writedate, readcnt, depth, refer, pos from re_board where " + DropDownList1.SelectedValue + " LIKE '%" + TextBox1.Text + "%' ORDER BY refer DESC, pos";
           SqlDataSource1.SelectCommand = selSql;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmWrite.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmReWrite.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmWrite.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/FrmLogin.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/FremCreate.aspx");
        }
    }
}