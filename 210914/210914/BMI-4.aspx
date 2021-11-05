<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMI-4.aspx.cs" Inherits="_210914.BMI_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            신장 : <asp:TextBox ID="txtkey" runat="server"></asp:TextBox>
            <asp:DropDownList ID="ddlList1" runat="server">
                <asp:ListItem Value="0.01">센티미터(cm)</asp:ListItem>
                <asp:ListItem Value="0.3048">피트(feet)</asp:ListItem>
                <asp:ListItem Value="1">미터(M)</asp:ListItem>
            </asp:DropDownList>
            몸무게 : <asp:TextBox ID="txtweight" runat="server"></asp:TextBox> kg
            <br />
            <br />
            <asp:Button ID="btnExec" runat="server" Text="산출하기" OnClick ="btnExec_Click" />
            <br />
            <br />
            <asp:Label ID="lblDisp1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
