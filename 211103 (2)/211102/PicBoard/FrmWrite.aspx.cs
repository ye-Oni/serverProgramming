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
    public partial class FrmWrite : System.Web.UI.Page
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
            if(FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                string fileSave = Server.MapPath("~/PFiles/" + fileName);
                FileUpload1.SaveAs(fileSave);

                string connectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                string insertSql = "insert into album values(@name, @title, @contents, @writedate, @readcnt, @fileurl)";

                SqlCommand cmd = new SqlCommand(insertSql, con);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@title", TextBox2.Text);
                cmd.Parameters.AddWithValue("@contents", TextBox3.Text);
                cmd.Parameters.AddWithValue("@writedate", DateTime.Now.ToShortDateString());
                cmd.Parameters.AddWithValue("@readcnt", 0);
                cmd.Parameters.AddWithValue("@fileurl", fileName);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("~/PicBoard/FrmList.aspx");
            }
        }
    }
}