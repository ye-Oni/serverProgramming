<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmList.aspx.cs" Inherits="_211110.FrmList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet">

</head>
<body style="
    /* border: 20px solid lightblue; */
    /* padding: 5px 20px; */
    position: absolute;
    top: 50%;
    left: 50%;
    width: 450px;
    height: 250px;
    margin-left: -220px;
    margin-top: -170px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
">
    <script src="Scripts/jquery-3.6.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-sm navbar-light bg-light">
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button6" runat="server" OnClick="Button6_Click" Text="로그인" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button7" runat="server" OnClick="Button7_Click" Text="회원가입" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button3" runat="server" OnClick="Button3_Click1" Text="글쓰기" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button4" runat="server" OnClick="Button4_Click" Text="글목록" />
   </nav>
            <table class="table table-striped table-bordered table-hover table-condensed" style ="width :750px;">
                <tr><td> 
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="num" DataSourceID="SqlDataSource1" Width="692px">
                        <Columns>
                            <asp:BoundField DataField="num" HeaderText="No." InsertVisible="False" ReadOnly="True" SortExpression="num" />
                            <asp:TemplateField HeaderText="제목">
                                <ItemTemplate>
                                    <%# SetSpace((int)Eval("depth")) %>
                                    <a href="<%# "FrmView.aspx?No=" + Eval("num") %>">
                                    <%# Eval("title") %>
                                </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="name" HeaderText="작성자" SortExpression="name" />
                            <asp:BoundField DataField="writedate" HeaderText="작성일" SortExpression="writedate" />
                            <asp:BoundField DataField="readcnt" HeaderText="조회수" SortExpression="readcnt" />
                        </Columns>
                    </asp:GridView>
                    </td></tr>
                <tr><td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_BConnectionString %>" SelectCommand="SELECT [num], [title], [name], [writedate], [readcnt] FROM [re_board]"></asp:SqlDataSource>
                    </td></tr>
                
                <tr><td class="auto-style1">

                    &nbsp;&nbsp;<asp:DropDownList class="btn btn-secondary" ID="DropDownList1" runat="server">
                        <asp:ListItem Value="title">제목</asp:ListItem>
                        <asp:ListItem Value="name">작성자</asp:ListItem>
                        <asp:ListItem Value="contents">내용</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button2"  runat="server" OnClick="Button2_Click" Text="찾기" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button1" runat="server" Text="게시판글쓰기" OnClick="Button1_Click" />
                    <br />
                    </td></tr>
            </table>
    </form>
</body>
</html>
