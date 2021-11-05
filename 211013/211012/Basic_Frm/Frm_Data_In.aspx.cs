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
    public partial class Frm_Data_In : System.Web.UI.Page
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

            cmd.CommandText = @"insert into customer values(N'김철수', '001201-1354780', '01098741523')";

            cmd.CommandType = System.Data.CommandType.Text;

            if (cmd.ExecuteNonQuery() == 1)
                Label1.Text = "정상 입력"; 

            con.Close();
        }   
    }
}