using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005.FileSearch
{
    public partial class FS_Pre : System.Web.UI.Page
    {
        public string KeyWord { get { return TextBox1.Text; } }
        public string FileType
        {
            get
            {
                string rstVal = "";
                switch(DropDownList1.SelectedIndex)
                {
                    case 0:
                        rstVal = "fileType:Doc";
                        break;
                    case 1:
                        rstVal = "fileType:PPT";
                        break;
                    case 2:
                        rstVal = "fileType:HWP";
                        break;
                    case 3:
                        rstVal = "fileType:pdf";
                        break;
                }
                return rstVal;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }
    }
}