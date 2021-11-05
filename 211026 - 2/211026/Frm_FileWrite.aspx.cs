using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211026
{
    public partial class Frm_FileWrite : System.Web.UI.Page
    {

        protected void Button2_Click(object sender, EventArgs e)
        {
            string fileName = @"D:\21_2_A_Asp\211026\211026\App_Data\ok.txt";
            FileInfo newFile = new FileInfo(fileName);
            StreamWriter sw = newFile.CreateText();

            sw.WriteLine("파일 생성합니다");
            if (newFile.Exists)
                Response.Write("성공"); 
            sw.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileNames = Server.MapPath("~/App_Data");
            string fileNamez = fileNames + @"\" + TextBox1.Text + ".txt";

            FileInfo newFile = new FileInfo(fileNamez);
            StreamWriter sw = newFile.CreateText();

            sw.WriteLine(TextBox2.Text);
            sw.WriteLine(DateTime.Now.ToString());

            sw.Close();
        }
    }
}