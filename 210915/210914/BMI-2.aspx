<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMI-2.aspx.cs" Inherits="_210914.BMI_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            신장 : <asp:TextBox ID="txtkey" runat="server"></asp:TextBox> cm
            몸무게 : <asp:TextBox ID="txtweight" runat="server"></asp:TextBox> kg
            <br />
            <br />
            <asp:Button ID="btnExec" runat="server" Text="산출하기" Onclick ="btnExec_Click"/>
            <br />
            <br />
            <asp:Label ID="lblDisp" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
