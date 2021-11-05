<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Asp_Mail.aspx.cs" Inherits="_211102.Asp_Mail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3> OutLook에서 메일 보내기 </h3>
            <asp:TextBox ID="TextBox1" runat="server" Height="158px" TextMode="MultiLine" Width="324px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="이메일보내기" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
