using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211026
{
    public partial class FrmFileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                string fileName = Server.MapPath("~/Uploads") 
                    + @"\" + FileUpload1.FileName;
            
                FileUpload1.SaveAs(fileName);

                Label1.Text = "파일 명 : " + FileUpload1.FileName + "<br />";
                Label1.Text += "콘텐츠 타입 : " + FileUpload1.PostedFile.ContentType + "<br />";
                Label1.Text += "파일 크기 : " + FileUpload1.PostedFile.ContentLength + "<br />";
            }
            else
            {
                Label1.Text = "업로드할 파일이 없습니다!";
            }
        }
    }
}