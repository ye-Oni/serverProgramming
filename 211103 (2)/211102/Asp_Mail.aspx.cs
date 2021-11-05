using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace _211102
{
    public partial class Asp_Mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient sendmail = new SmtpClient("smtp.live.com");
            var mail = new MailMessage();
            mail.From = new MailAddress("ok_test@outlook.kr");
           // mail.To.Add("ok_test@outlook.kr");
            mail.To.Add("king5@gachon.ac.kr");

            // foreach(string item in mail_list)  //mail_list ; 메일 리스트 정리해놓은것
            // {
            //     mail.To.Add(item);
            // }
            mail.Subject = "메일보내기 테스트";
            mail.IsBodyHtml = false;

            string mBody;
           // mBody = "안녕하세요 <em>아웃룩</em>으로 메일 보냅니다!";
            mBody = TextBox1.Text;
            mail.Body = mBody;

            sendmail.Port = 587;
            sendmail.UseDefaultCredentials = false;
            sendmail.Credentials = new NetworkCredential("ok_test@outlook.kr", "testing_ok");
            sendmail.EnableSsl = true;
            sendmail.Send(mail); 
        }
    }
}