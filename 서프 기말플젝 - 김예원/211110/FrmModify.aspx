<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmModify.aspx.cs" Inherits="_211110.FrmModify" %>

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
        <div>
            <table style ="width :750px">
                <tr><td colspan ="2" style ="text-align:center"><h3 style="font-family: HY엽서M; text-align: center; background-color: #CCFFFF; font-size: x-large"> 게시글 수정하기</h3></td></tr><br /><br />
                <tr><td>작성자 : </td><td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </td></tr><br />
                <tr><td>글제목 : </td><td>
                    <asp:TextBox ID="TextBox1" placeholder="수정할 제목을 입력하세요." runat="server" Width="615px"></asp:TextBox></td></tr><br />
                <tr><td>글내용 : </td><td><br />
                    <asp:TextBox ID="TextBox2" placeholder="수정할 내용을 입력하세요." runat="server" Height="313px" TextMode="MultiLine" Width="615px"></asp:TextBox></td></tr>
                <tr><td colspan ="2"><hr /></td></tr>
                <tr><td colspan ="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button1" runat="server" Text="취소" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button2" runat="server" Text="수정" OnClick="Button2_Click" />
                    </td></tr>
            </table>
        </div>
    </form>
</body>
</html>
