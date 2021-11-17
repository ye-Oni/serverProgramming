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
    public partial class FrmView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionstring);
                con.Open();

                string updateSql = "update re_board set readcnt=readcnt+1 where num=" + Request["No"];
                SqlCommand cmd = new SqlCommand(updateSql, con);
                cmd.ExecuteNonQuery();

                string selectSql = "select * from re_board where num =" + Request["No"];
                SqlCommand scmd = new SqlCommand(selectSql, con);
                scmd.ExecuteNonQuery();

                SqlDataReader dr = scmd.ExecuteReader();
                if(dr.Read())
                {
                    Label1.Text = dr["name"].ToString();
                    Label2.Text = dr["writedate"].ToString();
                    Label3.Text = dr["readcnt"].ToString();
                    Label4.Text = dr["title"].ToString();
                    TextBox1.Text = dr["contents"].ToString();

                    Label5.Text = dr["refer"].ToString();
                    Label6.Text = dr["depth"].ToString();
                    Label7.Text = dr["pos"].ToString();
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
            Response.Redirect("FrmPassConf.aspx?Action=Modify&No=" + Request["No"]); 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmPassConf.aspx?Action=Delete&No=" + Request["No"]);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("FrmReWrite.aspx?Action=Reply&No=" + Request["No"] +
                "&refer=" + Label5.Text + "&depth=" + Label6.Text + "&pos=" + Label7.Text);
        }
    }
}