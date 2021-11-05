<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm_Multi_Data_In.aspx.cs" Inherits="_211012.Basic_Frm.Frm_Multi_Data_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 름 : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            사회보장번호 : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            전 화&nbsp; 번&nbsp; 호 : <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" Text="데이터 입력 " OnClick="Button1_Click" />

 
        </div>
    </form>
</body>
</html>
