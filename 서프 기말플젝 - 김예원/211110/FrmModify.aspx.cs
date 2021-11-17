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
    public partial class FrmModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack )
            {
                string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionstring);
                con.Open();

                string selectSql = "select * from re_board where num=" + Request["No"];
                SqlCommand cmd = new SqlCommand(selectSql, con);
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    Label1.Text = dr["name"].ToString();
                    TextBox1.Text = dr["title"].ToString();
                    TextBox2.Text = dr["contents"].ToString();  
                }
                dr.Close();
                con.Close(); 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();

            string updateSql = "update re_board set title=@title, contents = @contents where num=" + Request["No"];
            SqlCommand cmd = new SqlCommand(updateSql, con);
            cmd.Parameters.AddWithValue("@title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@contents", TextBox2.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("FrmList.aspx");  
        }
    }
}