<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coffee_Order.aspx.cs" Inherits="_210914.Coffee_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            커피 종류 선택 : <asp:DropDownList ID="ddlList" runat="server"></asp:DropDownList>
            <asp:Button ID="btnExec" runat="server" Text="조리법 보기" OnClick="btnExec_Click"/>
        </div>
    </form>
</body>
</html>
