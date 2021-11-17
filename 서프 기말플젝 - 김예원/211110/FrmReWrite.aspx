<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmReWrite.aspx.cs" Inherits="_211110.FrmReWrite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml%22%3E
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet">
</head>
<body style="
    /* border: 20px solid lightblue; */
     padding: 5px 20px; 
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
    <form id="form1" runat="server">
    <script src="Scripts/jquery-3.6.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
        <nav class="navbar navbar-expand-sm navbar-light bg-light">
         <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button6" runat="server" OnClick="Button6_Click" Text="로그인" />
         <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button7" runat="server" OnClick="Button7_Click" Text="회원가입" />
        <asp:Button type="button" CssClass="btn btn-outline-info"  style="height: 38px;" ID="Button3" runat="server" Text="글쓰기" OnClick="Button1_Click1" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button4" runat="server" Text="글목록" OnClick="Button2_Click1" />
</nav>
        <div>
            <table style ="width : 750px">
                <tr><td style ="text-align:center" colspan="2"><h3 style="font-family: HY엽서M; font-size: large; background-color: #CCFFFF">게시판 답글쓰기</h3></td></tr>
                <tr><td>작성자</td><td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="168px"></asp:TextBox></td></tr>
                <tr><td>비밀번호</td><td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="169px"></asp:TextBox></td></tr>
                <tr><td>E-Mail</td><td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="262px"></asp:TextBox></td></tr>
                <tr><td colspan ="2"><hr/></td></tr>
                <tr><td>글제목</td><td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="580px"></asp:TextBox></td></tr>
                <tr><td>글내용</td><td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="297px" Width="586px"></asp:TextBox></td></tr>
                <tr><td colspan ="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button  CssClass="btn btn-outline-info" style="height: 38px;" ID="Button1" runat="server" Text="답변쓰기" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button CssClass="btn btn-outline-info" style="height: 38px;" ID="Button2" runat="server" Text="리스트" OnClick="Button2_Click" />
                    </td></tr>
            </table>
        </div>
    </form>
</body>
</html>