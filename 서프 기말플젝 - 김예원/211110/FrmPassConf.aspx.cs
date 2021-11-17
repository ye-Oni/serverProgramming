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
    public partial class FrmPassConf : System.Web.UI.Page
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

            string selectSql = "select * from re_board where num=" + Request["No"];
            SqlCommand cmd = new SqlCommand(selectSql, con);

            SqlDataReader dr = cmd.ExecuteReader();
            string strPass;
            dr.Read(); 
            strPass = dr["pass"].ToString();
            dr.Close();
            
            if(strPass.CompareTo(TextBox1.Text ) == 0 && Request["Action"].CompareTo("Modify") ==0)
            {
                Response.Redirect("FrmModify.aspx?No=" + Request["No"]); 
            }

            if(strPass.CompareTo(TextBox1.Text) == 0 && Request["Action"].CompareTo("Delete") ==0)
            {
                string deleteSql = "delete from re_board where num=" + Request["No"];
                SqlCommand delcmd = new SqlCommand(deleteSql, con);
                delcmd.ExecuteNonQuery();

                Response.Redirect("FrmList.aspx"); 
            }

        }
    }
}