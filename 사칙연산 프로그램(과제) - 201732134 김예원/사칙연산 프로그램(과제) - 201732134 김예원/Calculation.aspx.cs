using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 사칙연산_프로그램_과제____201732134_김예원
{
    public partial class Calculation : System.Web.UI.Page
    {
        public double num1 = 0;
        public double num2 = 0;
        public double hap = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // 화면에 결과값 출력 코드
        void Showresult(string result)
        {
            Label lblresult = new Label();
            Page.Controls.Add(lblresult);
            lblresult.Text = result + "<br />";
        }
        protected void Button_Control(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Calc")
                Calc_Result(e.CommandArgument.ToString());
            else
                Label1.Text = "CommandName을 확인해주세요!";
        }
        private void Calc_Result(string v)
        {
            num1 = double.Parse(TextBox1.Text);
            num2 = double.Parse(TextBox2.Text);

            if (v == "Add")     // 더하기
                hap = num1 + num2;
                Label1.Text = hap.ToString();
            if (v == "Sub")     // 빼기
                hap = num1 - num2;
                Label1.Text = hap.ToString();
            if (v == "Mul")    // 곱하기
                hap = num1 * num2;
                Label1.Text = hap.ToString();
            if (v == "Div")    // 나누기
                hap = num1 / num2;
                Label1.Text = hap.ToString();

        }
        // 지우기 버튼 코드
        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label1.Text = "";
        }
    }
}


// 각각 다른 이벤트를 사용했을 때의 코드 (개념이 이해가 가지 않아서 먼저 이렇게 실습한 후 공통 이벤트를 활용해 보았습니다!

    //    // 화면에 결과값 출력 코드
    //    void ShowResult(string result)
    //    {
    //        Label lblResult = new Label();
    //        Page.Controls.Add(lblResult);
    //        lblResult.Text = result + "<br />";
    //    }
    //    // 더하기 버튼 코드
    //    protected void Button1_Click(object sender, EventArgs e)
    //    {
    //        int num1 = Convert.ToInt32(TextBox1.Text);
    //        int num2 = Convert.ToInt32(TextBox2.Text);
    //        int sum = num1 + num2;
    //        Label1.Text = sum.ToString();

    //    }
    //    // 빼기 버튼 코드
    //    protected void Button2_Click(object sender, EventArgs e)
    //    {
    //        int num1 = Convert.ToInt32(TextBox1.Text);
    //        int num2 = Convert.ToInt32(TextBox2.Text);
    //        int sum = num1 - num2;
    //        Label1.Text = sum.ToString();

    //    }
    //    // 곱하기 버튼 코드
    //    protected void Button3_Click(object sender, EventArgs e)
    //    {
    //        int num1 = Convert.ToInt32(TextBox1.Text);
    //        int num2 = Convert.ToInt32(TextBox2.Text);
    //        int sum = num1 * num2;
    //        Label1.Text = sum.ToString();


    //    }
    //    // 나누기 버튼 코드
    //    protected void Button4_Click(object sender, EventArgs e)
    //    {
    //        int num1 = Convert.ToInt32(TextBox1.Text);
    //        int num2 = Convert.ToInt32(TextBox2.Text);
    //        int sum = num1 / num2;
    //        Label1.Text = sum.ToString();

    //    }
    //    // 지우기 버튼 코드
    //    protected void Button5_Click(object sender, EventArgs e)
    //    {
    //        TextBox1.Text = "";
    //        TextBox2.Text = "";
    //        Label1.Text = "";

    //    }
    //}
