using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210914
{
    public partial class Coffees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Coffee_Click(object sender, EventArgs e)
        {
            string filePath = Request.PhysicalApplicationPath + @"App_Data\";
            string fileName = "";

            ListItem items = ddlList.Items[ddlList.SelectedIndex];
            int coffType = int.Parse(items.Value);

            for(int i = 0; i < 4; i++)
            {
                fileName = filePath + i + ".txt";
                Response.WriteFile(fileName);

                if(i != 3)
                {
                    if ((i & coffType) == 1 || (i & coffType) == 2)
                        Response.Clear();
                }
                Response.Flush();
                Response.Write("<br>");
            }
        }
    }
}