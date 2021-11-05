<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPassRecovery.aspx.cs" Inherits="_211102.Login.FrmPassRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
                <MailDefinition From="me@my.co.kr" Subject="암호찾기결과전송">
                </MailDefinition>
            </asp:PasswordRecovery>
        </div>
    </form>
</body>
</html>
