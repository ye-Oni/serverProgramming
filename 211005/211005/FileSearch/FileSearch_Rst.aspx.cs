using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005.FileSearch
{
    public partial class FileSearch_Rst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null)
            {
                TextBox KeyWord;
                KeyWord = (TextBox)PreviousPage.FindControl("TextBox1");
                DropDownList ddlFileType;
                ddlFileType = (DropDownList)PreviousPage.FindControl("DropDownList1");

                string url = "http://www.google.co.kr/search?q=";
                url += Server.UrlEncode(KeyWord.Text + "");

                string filetype = "";
                switch (ddlFileType.SelectedIndex)
                {
                    case 0:
                        filetype = "fileType:Doc";
                        break;
                    case 1:
                        filetype = "fileType:PPT";
                        break;
                    case 2:
                        filetype = "fileType:HWP";
                        break;
                    case 3:
                        filetype = "fileType:pdf";
                        break;
                }
                url += filetype;
                 
                HyperLink1.NavigateUrl = url;
                HyperLink1.Text = KeyWord.Text + " " + filetype;
            }
           
        }
    }
}