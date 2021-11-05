using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211012.Basic_Frm
{
    public partial class Frm_Multi_Data_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.
                ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = @"insert into customer values(@name, @social_no, @tel)";
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@social_no", TextBox2.Text);
            cmd.Parameters.AddWithValue("@tel", TextBox3.Text);

            cmd.CommandType = System.Data.CommandType.Text;

            if (cmd.ExecuteNonQuery() == 1)
            {
                //Response.Write("정상입력");
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
    }
}