<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMain.aspx.cs" Inherits="_211110.FrmMain" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 703px;
        }
    </style>
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
    <p class="auto-style1" style="font-family: HY엽서M; font-size: x-large; text-align: center; background-color: #CCFFFF">자신이 다녀온 여행지를 공유해봐요~!!!</p>
    <br /><br /><br />
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-md navbar-light bg-light">
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button5" runat="server" OnClick="Button5_Click" Text="로그인" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button4" runat="server" OnClick="Button4_Click" Text="회원가입" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button1" runat="server" Text="글쓰기" OnClick="Button1_Click1" />
        <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button2" runat="server" Text="글목록" OnClick="Button2_Click1" />
    </nav>
  
        <asp:Image ID="Image1" runat="server" Height="455px" Width="705px"  ImageUrl="~/img/img.jpg"/>
        </form>
</body>
</html>
