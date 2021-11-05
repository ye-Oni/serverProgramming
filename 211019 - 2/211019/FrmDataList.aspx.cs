using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211019
{
    public partial class FrmDataList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();  
            }
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = -1;

            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["DB_AConnectionString"].ConnectionString;
            con.Open();

            string udtSql = "update Product set prod_color = @prod_color where prod_name = @prod_name";
            SqlCommand cmd = new SqlCommand(udtSql, con);

            TextBox txtname = (TextBox)e.Item.FindControl("TextBox1");
            cmd.Parameters.AddWithValue("@prod_name", txtname.Text);  // TextBox1.Text.....  
            
            TextBox txtcolor = (TextBox)e.Item.FindControl("TextBox2");
            cmd.Parameters.AddWithValue("@prod_color", txtcolor.Text);  // TextBox2.Text.....  

            cmd.ExecuteNonQuery();
            con.Close();

            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();

        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;

            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;

            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();

        }
    }
}