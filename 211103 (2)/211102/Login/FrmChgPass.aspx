<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmChgPass.aspx.cs" Inherits="_211102.Login.FrmChgPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="~/Login/FrmLogin.aspx" ContinueDestinationPageUrl="~/Login/FrmLogin.aspx"></asp:ChangePassword>
        </div>
    </form>
</body>
</html>
