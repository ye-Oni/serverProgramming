using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211012.Memos
{
    public partial class Memo_Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();


            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = @"insert into notes Values(@Name, GetDate(), @Contents)";

            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Contents", TextBox2.Text);
               

            cmd.CommandType = System.Data.CommandType.Text;

            cmd.ExecuteNonQuery();
            //if( == 1)
            //    Response.Write("정상입력");

            con.Close(); 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memo_Lists.aspx"); 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Memo_Deletes.aspx");
        }

   
    }
}