using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005
{
    public partial class App_Cnt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application.Lock();  
            int cnt = 0;
            if (Application["cnt"] != null)
                cnt = (int)Application["cnt"];
            cnt++;

            Application["cnt"] = cnt;
            Label1.Text = Application["cnt"].ToString();
            Application.UnLock(); 
        }

    }
}