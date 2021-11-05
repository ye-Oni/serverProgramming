<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileSearch.aspx.cs" Inherits="_211005.FileSearch.FileSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            검색어를 포함하는 파일 검색<br />
            <br />
            검색어 :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            파일형 :
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="0">워드(*.doc)</asp:ListItem>
                <asp:ListItem Value="1">파워포인트(*.ppt)</asp:ListItem>
                <asp:ListItem Value="2">한글(*.hwp)</asp:ListItem>
                <asp:ListItem Value="3">어도비(*.pdf)</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/FileSearch/FileSearch_Rst.aspx" Text="검색어 보기" />
        </div>
    </form>
</body>
</html>
