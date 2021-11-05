using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005.FileSearch
{
    public partial class FS_Query_Rst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink1.Text = Request.QueryString["KeyWord"] + "";
            HyperLink1.Text += Request.QueryString["FileType"];

            string url = "http://www.google.co.kr/search?q=";
            url += Server.UrlEncode(HyperLink1.Text);

            HyperLink1.NavigateUrl = url; 
            
        }
    }
}