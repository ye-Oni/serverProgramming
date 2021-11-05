using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005.FileSearch
{
    public partial class FS_Query : System.Web.UI.Page
    {
        public string KeyWord { get { return TextBox1.Text; } }
    
        public string FileType
        {
            get
            {
                string retVal = "";
                switch(DropDownList1.SelectedIndex  )
                {
                    case 0:
                        retVal = "fileType:doc"; break;
                    case 1:
                        retVal = "fileType:ppt"; break;
                    case 2:
                        retVal = "fileType:hwp"; break;
                    case 3:
                        retVal = "fileType:pdf"; break;
                }
                return retVal;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string queryString = "KeyWord=" + Server.UrlEncode(TextBox1.Text);
            queryString += "&";
            queryString += "FileType=" + FileType;
            Response.Redirect("FS_Query_Rst.aspx?" + queryString);  
        }
    }
}