using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211110
{
    public partial class FrmWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();

            string insertSql = "insert into re_board values(@name, @pass, @email, @title, @contents, @writedate, @readcnt, @refer, @depth, @pos)";
            SqlCommand cmd = new SqlCommand(insertSql, con);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@title", TextBox4.Text);
            cmd.Parameters.AddWithValue("@contents", TextBox5.Text);
            cmd.Parameters.AddWithValue("@writedate", DateTime.Now.ToShortDateString()  );
            cmd.Parameters.AddWithValue("@readcnt",  "0");
            cmd.Parameters.AddWithValue("@refer",  "0");
            cmd.Parameters.AddWithValue("@depth",  "0");
            cmd.Parameters.AddWithValue("@pos",  "0");
            cmd.ExecuteNonQuery();

            //string updateSql = "update re_board set refer = num where refer = 0";
            //cmd = new SqlCommand(updateSql, con);
            //cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("FrmList.aspx");  

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmWrite.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/FrmLogin.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/FremCreate.aspx");
        }

    }
}