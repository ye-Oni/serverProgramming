using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211019.Files
{
    public partial class FrmFile_Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileName = @"D:\21_2_A_Asp\211019\211019\App_Data\Ok.txt";
            FileInfo newFile = new FileInfo(fileName);

            StreamWriter sw = newFile.CreateText();

            sw.WriteLine("파일 생성되죠?");

            sw.Close();
        }
    }
}