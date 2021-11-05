<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coffees.aspx.cs" Inherits="_210914.Coffees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            커피 종류 선택 : <asp:DropDownList ID="ddlList" runat="server">
                <asp:ListItem Value="0">밀크커피(설탕+프림)</asp:ListItem>
                <asp:ListItem Value="1">프림커피(프림)</asp:ListItem>
                <asp:ListItem Value="2">설탕커피(설탕)</asp:ListItem>
                <asp:ListItem Value="3">블랙커피</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btn_Coffee" runat="server" Text="조리법보기" OnClick="btn_Coffee_Click" />
        </div>
    </form>
</body>
</html>
