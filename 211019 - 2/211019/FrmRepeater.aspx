<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRepeater.aspx.cs" Inherits="_211019.FrmRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <HeaderTemplate>고 객 정 보 </HeaderTemplate>
                 
                <ItemTemplate>
                    <br /> 고객번호 : <%# Eval("custom_no") %>  <br />
                    고객이름 : <%# Eval("name") %> <br />
                </ItemTemplate>

                <AlternatingItemTemplate>
                    <font color ="red">
                        <br /> 고객번호 : <%# Eval("custom_no") %>  <br />
                        고객이름 : <%# Eval("name") %> <br />
                    </font>
                </AlternatingItemTemplate>
                <SeparatorTemplate><hr /></SeparatorTemplate>

               
                <FooterTemplate>CopyLeft company....</FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_AConnectionString %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
