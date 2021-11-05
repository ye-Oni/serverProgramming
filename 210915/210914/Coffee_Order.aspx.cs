using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _210914
{
    public partial class Coffee_Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)    // if(!IsPostBack)
            { 
            ddlList.Items.Add(new ListItem("밀크커피(설탕+프림)", "0"));
            ddlList.Items.Add(new ListItem("프림커피(프림)", "1"));
            ddlList.Items.Add(new ListItem("설탕커피(설탕)", "2"));
            ddlList.Items.Add(new ListItem("블랙커피", "3"));
            }
        }

        protected void btnExec_Click(object sender, EventArgs e)
        {
            ListItem item = ddlList.Items[ddlList.SelectedIndex];
            int cofType = int.Parse(item.Value);

            string filePath = Request.PhysicalApplicationPath + @"App_Data\";
            string fileName = "";

            for(int i = 0; i < 4; i++)
            {
                fileName = filePath + i + ".txt";
                Response.WriteFile(fileName);

                if(i != 3)
                {
                    if ((i & cofType) == 1 || (i & cofType) == 2)
                        Response.Clear();
                }
                Response.Flush();
                Response.Write("<br />");
            }



        }
    }
}