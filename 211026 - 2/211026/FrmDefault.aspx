<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDefault.aspx.cs" 
    Inherits="_211026.FrmDefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body >
    <form id="form1" runat="server">
        <div >
            <asp:Label ID="Label1" runat="server" Text="세상에서 제일하고 싶은 말 : "  ></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
