using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211102
{
    public partial class mail_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "select * from mailing_list where e_addr = '" + TextBox1.Text + "'";
                SqlDataReader dr = cmd.ExecuteReader();
                bool hasMember = dr.Read();
                dr.Close();
                if (hasMember)
                    Response.Write("이미 가입된 메일입니다!");

                string insertSql = "insert into mailing_list(e_addr, reg_date) values (@e_addr, GETDATE())";
                cmd = new SqlCommand(insertSql, con);
                cmd.Parameters.AddWithValue("@e_addr", TextBox1.Text);
                cmd.ExecuteNonQuery();
                Response.Write("가입되었습니다");

            }catch(Exception error)
            {
                Response.Write(error.Message);  
            }
            TextBox1.Text = ""; 
            con.Close(); 
        }
    }
}