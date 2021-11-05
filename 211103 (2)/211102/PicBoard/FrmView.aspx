<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmView.aspx.cs" Inherits="_211102.PicBoard.FrmView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style ="width :750px">
                <tr><td style="text-align:center"> <h3>그 림 보 기</h3></td></tr>
                <tr><td>작성자 :  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    작성일 :  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    조회수 :   <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>       
                </td></tr>
                <tr><td>파일이름 : <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td></tr>
                <tr><td style="text-align:center"> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </td></tr>
                <tr><td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="270px" Width="374px" /></td></tr>
                <tr><td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="93px" Width="369px"></asp:TextBox></td></tr>
                <tr><td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="목록보기" OnClick="Button1_Click" /></td></tr>
            </table>
        </div>
        <div>
            <table style ="width :750px">
               <tr><td>작성자 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
               <tr><td>댓글 <asp:TextBox ID="TextBox3" runat="server" Width="586px"></asp:TextBox>
                   <asp:Button ID="Button2" runat="server" Text="댓글쓰기" />
                   </td></tr>
               <tr><td>
                   <asp:Repeater ID="Repeater1" runat="server">
                   </asp:Repeater>
                   </td></tr>
            </table>

        </div>
    </form>
</body>
</html>
