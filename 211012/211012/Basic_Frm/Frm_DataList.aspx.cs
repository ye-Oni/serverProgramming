using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211012.Basic_Frm
{
    public partial class Frm_DataList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = @"select * from customer";
            cmd.CommandType = System.Data.CommandType.Text;

            string strst = "<table border= \"1\">" + "<tr><td>고객번호</td><td>이름</td>" +
                "<td>사회보장번호</td><td> 전화번호 </td></tr>";
            SqlDataReader dr = cmd.ExecuteReader();

            while(dr.Read())
            {
                strst += $"<tr><td>{dr["custom_no"]}</td>" + $"<td>{dr["name"]}</td>"
                    + $"<td>{dr["social_no"]}</td>" + $"<td>{dr["tel"]}</td></tr>";
            }
            strst += "</table>";

            Label1.Text = strst;
            dr.Close();
            con.Close();
        }
    }
}