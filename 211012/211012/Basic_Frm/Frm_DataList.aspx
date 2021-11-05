<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm_DataList.aspx.cs" Inherits="_211012.Basic_Frm.Frm_DataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="custom_no" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="409px">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    custom_no:
                    <asp:Label ID="custom_noLabel" runat="server" Text='<%# Eval("custom_no") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    social_no:
                    <asp:Label ID="social_noLabel" runat="server" Text='<%# Eval("social_no") %>' />
                    <br />
                    tel:
                    <asp:Label ID="telLabel" runat="server" Text='<%# Eval("tel") %>' />
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
            <hr />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="데이터보기 " OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
