using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005.FileSearch
{
    public partial class FS_Pre_Rst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null)
            {
                string url = "http://www.google.co.kr/search?q=";
                HyperLink1.Text = PreviousPage.KeyWord + " " +
                    PreviousPage.FileType;

                url += Server.UrlEncode(HyperLink1.Text);
                HyperLink1.NavigateUrl = url;
            }
        }
    }
}