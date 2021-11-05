using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211102.PicBoard
{
    public partial class FrmView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string connectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                string udtSql = "update album set readcnt=readcnt+1 where num =" + Request["No"];
                SqlCommand cmd = new SqlCommand(udtSql, con);
                cmd.ExecuteNonQuery();
                
                string selectSql = "select * from album where num =" + Request["No"];
                cmd = new SqlCommand(selectSql, con);

                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read() )
                {
                    Label1.Text = dr["name"].ToString();
                    Label2.Text = dr["writedate"].ToString();
                    Label3.Text = dr["readcnt"].ToString();
                    Label4.Text = dr["fileurl"].ToString();
                    Label5.Text = dr["title"].ToString();
                    Image1.ImageUrl = "/PFiles/" + Label4.Text;
                    TextBox1.Text = dr["contents"].ToString();  
                }
                dr.Close();
                con.Close(); 
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");  
        }
    }
}