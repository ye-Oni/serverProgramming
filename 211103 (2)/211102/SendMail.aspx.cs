using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211102
{
    public partial class SendMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = ""; 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from mailing_list";

            SqlDataReader dr = cmd.ExecuteReader();
            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("admin@co.kr", "관리자", System.Text.Encoding.Default);
            mail.Subject = TextBox1.Text;
            mail.Body = TextBox2.Text;
            mail.SubjectEncoding = System.Text.Encoding.Default;
            mail.BodyEncoding = System.Text.Encoding.Default;
            mail.IsBodyHtml = false; // true  HTML 문서인 경우

            SmtpClient smtp = new SmtpClient("127.0.0.1");
            while(dr.Read() )
            {
                mail.To.Add(dr["e_addr"].ToString());
                smtp.Send(mail);  
            }
            Response.Write("메일을 보냈습니다");
            TextBox1.Text = "";
            TextBox2.Text = "";
            con.Close();

        }
    }
}