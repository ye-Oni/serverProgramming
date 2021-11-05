using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211005
{
    public partial class Pr_Product_Gods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack )
            {
                Pr_Gods pr_book1 = new Pr_Gods();
                pr_book1.Name = "오성과한음";
                pr_book1.Manafac = "한국출판사";
                pr_book1.Cost = 20000;

                Pr_Gods pr_book2 = new Pr_Gods();
                pr_book2.Name = "우주전쟁";
                pr_book2.Manafac = "미국출판사";
                pr_book2.Cost = 25000;

                Pr_Gods pr_book3 = new Pr_Gods();
                pr_book3.Name = "전쟁과평화";
                pr_book3.Manafac = "한미출판사";
                pr_book3.Cost = 15000;

                Session["Pr_Book1"] = pr_book1;
                Session["Pr_Book2"] = pr_book2;
                Session["Pr_Book3"] = pr_book3;

                DropDownList1.Items.Add(pr_book1.Name);
                DropDownList1.Items.Add(pr_book2.Name);
                DropDownList1.Items.Add(pr_book3.Name);
            }
            Label2.Text = "세션 ID = " + Session.SessionID + "<br>";
            Label2.Text += "세션 카운트 = " + Session.Count.ToString() + "<br>";
            Label2.Text += "세션 시간 = " + Session.Timeout.ToString() + "<br>";
            Label2.Text += "세션 모드 = " + Session.Mode.ToString() + "<br>";
            Label2.Text += "새 세션 = " + Session.IsNewSession.ToString() + "<br>";
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string key = "pr_book" + (DropDownList1.SelectedIndex + 1).ToString();  // 1, 2, 3...=>( key index)
            Label2.Text += "세션 키 = " + Session[key].ToString();
            Pr_Gods book = (Pr_Gods)Session[key];

            Label1.Text = "책이름 " + book.Name + "<br>";
            Label1.Text += "출판사" + book.Manafac + "<br>";
            Label1.Text += "가격" + book.Cost + "<br>";
        }
    }
}