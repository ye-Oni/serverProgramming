using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211012.Basic_Frm
{
    public partial class Frm_GridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager
                .ConnectionStrings["connectionString"].ConnectionString;
            con.Open();
            
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = @"select * from customer";
            cmd.CommandType = System.Data.CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);  // da.Fill(ds,00, 00);

            GridView2.DataSource = ds;
            GridView2.DataBind();

            con.Close();
        }
    }
}