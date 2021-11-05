using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211012.Basic_CRUD
{
    public partial class Crud_Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            string insertSql = @"insert into Product values(@prod_name, @prod_color, @prod_size)";

            SqlCommand cmd = new SqlCommand(insertSql, con);

            cmd.Parameters.AddWithValue("@prod_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@prod_color", TextBox2.Text);
            cmd.Parameters.AddWithValue("@prod_size", TextBox3.Text);

            if (cmd.ExecuteNonQuery() == 1)
            {
                Response.Write("정상입력");
                text_clear();
            }

            con.Close();
        }

        private void text_clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Focus();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();
            string selectSql = "select * from Product";
            SqlCommand cmd = new SqlCommand(selectSql, con);

            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            string delSql = "delete from Product where prod_name = @prod_name";
            SqlCommand cmd = new SqlCommand(delSql, con);
            cmd.Parameters.AddWithValue("@prod_name", TextBox1.Text);

            if(cmd.ExecuteNonQuery() == 1)
                Response.Write("정상삭제");
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            string udtSql = "update Product set " +
                "prod_name = @prod_name, prod_color = @prod_color, prod_size=@prod_size " +
                "where prod_name = @prod_name ";

            SqlCommand cmd = new SqlCommand(udtSql, con);
            cmd.Parameters.AddWithValue("@prod_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@prod_color", TextBox2.Text);
            cmd.Parameters.AddWithValue("@prod_size", TextBox3.Text);

            if (cmd.ExecuteNonQuery() == 1)
                Response.Write("정상갱신");
            con.Close();
        }
    }
}