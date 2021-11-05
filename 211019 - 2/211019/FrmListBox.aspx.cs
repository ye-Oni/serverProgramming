using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211019
{
    public partial class FrmListBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = ListBox1.SelectedValue;
            Label1.Text += "<br> " + ListBox1.SelectedIndex.ToString();
            Label1.Text += "<br> " + ListBox1.SelectedItem.Text;  
        }
    }
}