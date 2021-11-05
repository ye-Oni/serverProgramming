<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSessions.aspx.cs" Inherits="_211005.FrmSessions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Input " OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
