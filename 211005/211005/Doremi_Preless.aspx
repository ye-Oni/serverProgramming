<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doremi_Preless.aspx.cs" Inherits="_211005.Doremi_Preless" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                <div style="font-size: x-large; text-align: center;">
            피치를 올려라<br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="증분" OnClick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="감소" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
