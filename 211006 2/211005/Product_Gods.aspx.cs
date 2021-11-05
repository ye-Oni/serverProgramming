using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005
{
    public partial class Product_Gods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Gods book1 = new Gods("Java", "Hanbit", 20000);
                Gods book2 = new Gods("Python", "Hanbit", 15000);
                Session["book1"] = book1;
                Session["book2"] = book2;
                ListBox1.Items.Add(book1.Name);
                ListBox1.Items.Add(book2.Name);
            }
            Label2.Text = "세션 ID = " + Session.SessionID + "<br>";
            Label2.Text += "세션 카운트 = " +Session.Count.ToString() + "<br>";
            Label2.Text += "세션 시간 = " +Session.Timeout.ToString() + "<br>";
            Label2.Text += "세션 모드 = " + Session.Mode.ToString();   
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string key = "Book" + (ListBox1.SelectedIndex + 1).ToString();  // 1, 2, 3...=>( key index)
            Response.Write(key); 
            Gods book = (Gods)Session[key];

            Label1.Text = "책이름 " + book.Name + "<br>";
            Label1.Text += "출판사" + book.Manufac + "<br>";
            Label1.Text += "가격" + book.Cost + "<br>";
        }
    }
}