<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmWrite.aspx.cs" Inherits="_211102.PicBoard.FrmWrite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style ="width :750px" >
                <tr><td colspan="2" style ="text-align:center" > <h3>게시판 글쓰기</h3></td></tr>
                <tr><td>작성자</td><td> <asp:TextBox ID="TextBox1" runat="server" Width="183px"></asp:TextBox></td></tr>
                <tr><td>사진등록</td><td> <asp:FileUpload ID="FileUpload1" runat="server" Width="469px" /></td></tr>
                <tr><td>사진제목</td><td> <asp:TextBox ID="TextBox2" runat="server" Width="468px"></asp:TextBox></td></tr>
                <tr><td>내용</td><td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="207px" TextMode="MultiLine" Width="473px"></asp:TextBox> </td></tr>
                <tr><td colspan="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="사진등록" OnClick="Button1_Click" />   
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                    <asp:Button ID="Button2" runat="server" Text="목록" OnClick="Button2_Click" />
                    </td></tr>
            </table>
        </div>
    </form>
</body>
</html>
