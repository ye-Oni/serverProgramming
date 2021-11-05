using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211012
{
    public partial class DB_Connects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager
                .ConnectionStrings["connectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            
            //try { } catch(Exception error) { }
            con.Open();
            Label1.Text = con.State.ToString();  // 연결 성공
            Label1.Text += "<br>" + con.ServerVersion; 

            con.Close();
        }
    }
}