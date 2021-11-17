<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmWrite.aspx.cs" Inherits="_211110.FrmWrite" %>

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
    <nav class="navbar navbar-expand-md navbar-light bg-light">
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button5" runat="server" OnClick="Button5_Click" Text="로그인" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button4" runat="server" OnClick="Button4_Click" Text="회원가입" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button1" runat="server" Text="글쓰기" OnClick="Button1_Click1" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button2" runat="server" Text="글목록" OnClick="Button2_Click1" />
    </nav>
        <div>
            <table style ="width :750px;">
                <tr><td colspan ="2" style ="text-align :center"><h3 style="font-family: HY엽서M; background-color: #CCFFFF; font-size: large"> 게시판 글쓰기</h3></td></tr>
                <tr><td>작성자 : </td><td>
                    <asp:TextBox type="text" ID="TextBox1" placeholder="작성자 이름을 입력하세요." runat="server" Width="226px"></asp:TextBox>&nbsp; 
                    </td></tr>
                <tr><td>비밀번호 : </td><td>
                    <asp:TextBox type="text" ID="TextBox2" placeholder="비밀번호를 입력하세요." runat="server" TextMode="Password" Width="228px" SetFocusOnError="True" ValidationExpression="\w{4,10}"></asp:TextBox>&nbsp;</td></tr>
                <tr><td>E-Mail : </td><td>
                    <asp:TextBox type="text" ID="TextBox3" runat="server" Height="23px" Width="380px"></asp:TextBox>&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="이메일 형식이 올바르지 않습니다." SetFocusOnError="True" ValidationExpression="\S+@\S+\.\S+" ControlToValidate="TextBox3" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td></tr>
                <tr><td colspan="2" ><hr /></td></tr>
                <tr><td>글제목 : </td><td>
                    <asp:TextBox type="text" ID="TextBox4" placeholder="제목을 입력하세요." runat="server" Width="584px"></asp:TextBox>
                    <br />
                    </td></tr>
                <tr><td>글내용 : </td><td>
                    <asp:TextBox type="text" ID="TextBox5" placeholder="내용을 작성하세요." runat="server" Height="280px" TextMode="MultiLine" Width="588px"></asp:TextBox>
                    <br />
                    </td></tr>
                <tr><td colspan ="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" runat="server" Text="게시물등록" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" runat="server" Text="리스트" OnClick="Button2_Click" />
                    </td></tr>
            </table>
        </div>
    </form>
</body>
</html>
