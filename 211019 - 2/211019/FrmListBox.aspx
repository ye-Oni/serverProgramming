<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmListBox.aspx.cs" Inherits="_211019.FrmListBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="social_no" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_AConnectionString %>" SelectCommand="SELECT [name], [social_no] FROM [customer]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
      </div>
    </form>
           
</body>
</html>
