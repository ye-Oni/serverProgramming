<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmList.aspx.cs" Inherits="_211102.PicBoard.FrmList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr><td><h3>리 스 트</h3></td></tr>
                <tr><td style="text-align:center">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="num" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                            <hr />
                            <a href ="<%# "FrmView.aspx?No=" + Eval("num") %>">
                                <img src="/PFiles/<%# Eval("fileurl") %>" height ="200 " width ="190" />
                                </a>
                            <br />
                            <asp:Label ID="writedateLabel" runat="server" Text='<%# Eval("writedate") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT [num], [title], [writedate], [fileurl] FROM [album]"></asp:SqlDataSource>
                </td></tr>
                <tr><td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="Button1" runat="server" Text="사진등록" OnClick="Button1_Click" /></td></tr>
            </table>
        </div>
    </form>
</body>
</html>
