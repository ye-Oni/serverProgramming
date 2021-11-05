using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _211019.Files
{
    public partial class Frm_FileInfos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string dirString = @"C:\";
                Label1.Text = dirString;

                ListBox1.Items.Clear();

                DirectoryInfo dirInfo = new DirectoryInfo(dirString);
                if (dirInfo.Root.Name != dirInfo.Name) ListBox1.Items.Add("..");
                
                foreach(DirectoryInfo s_dirInfo in dirInfo.GetDirectories ())
                {
                    ListBox1.Items.Add(s_dirInfo.Name);   
                }

                Label2.Text = "";
                ListBox2.DataSource = dirInfo.GetFiles();
                ListBox2.DataMember = "Name";
                ListBox2.DataBind();
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectDir = "";

            if(ListBox1.SelectedItem.Text == "..")
            {
                selectDir = Directory.GetParent(Label1.Text).FullName;  
            }
            else
            {
                selectDir = Path.Combine(Label1.Text, ListBox1.SelectedItem.Text);

            }
            Label1.Text = selectDir;  //ShowDirectories(selectDir)
                                      //ShowFiles(selectDir)

            ListBox1.Items.Clear();
            DirectoryInfo dirInfo = new DirectoryInfo(selectDir);
            if (dirInfo.Root.Name != dirInfo.Name) ListBox1.Items.Add("..");

            foreach (DirectoryInfo s_dirInfo in dirInfo.GetDirectories())
                ListBox1.Items.Add(s_dirInfo.Name);

            Label2.Text = "";
            ListBox2.DataSource = dirInfo.GetFiles();
            ListBox2.DataMember = "Name";
            ListBox2.DataBind(); 
        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string fileName = Path.Combine(Label1.Text, ListBox2.SelectedItem.Text);

            FileInfo selectedFile = new FileInfo(fileName);

            Label2.Text = selectedFile.Name + "<br>";
            Label2.Text += "파일크기 : " + selectedFile.Length + "<br>";
            Label2.Text += "생성시간 : " + selectedFile.CreationTime + "<br>";
            Label2.Text += "최종접근시간 : " + selectedFile.LastAccessTime; 

        }
    }
}