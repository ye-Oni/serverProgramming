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
    public partial class FrmReWrite : System.Web.UI.Page
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

            if(Request["Action"].CompareTo("Reply") == 0  )
            {
                int irefer = int.Parse(Request["refer"]);
                int idepth = int.Parse(Request["depth"]);
                int ipos = int.Parse(Request["pos"]);

                string updateSql = "update re_board set pos=pos+1 where refer =" + irefer + "and pos >" + ipos;
                SqlCommand cmd = new SqlCommand(updateSql, con);
                cmd.ExecuteNonQuery();
                idepth++;
                ipos++;

                string insertSql = "insert into re_board values(@name, @pass, @email, @title, @contents, @writedate, @readcnt, @refer, @depth, @pos)";
                cmd = new SqlCommand(insertSql, con);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                cmd.Parameters.AddWithValue("@email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@title", TextBox4.Text);
                cmd.Parameters.AddWithValue("@contents", TextBox5.Text);
                cmd.Parameters.AddWithValue("@writedate",  DateTime.Now.ToShortDateString());
                cmd.Parameters.AddWithValue("@readcnt",  0);
                cmd.Parameters.AddWithValue("@refer", irefer.ToString());
                cmd.Parameters.AddWithValue("@depth", idepth.ToString());
                cmd.Parameters.AddWithValue("@pos", ipos.ToString());
                cmd.ExecuteNonQuery(); 
            }
            con.Close();
            Response.Redirect("FrmList.aspx");  
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmWrite.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FrmList.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/FrmLogin.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/FremCreate.aspx");
        }
    }
}