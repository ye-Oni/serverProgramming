<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Memo_Main.aspx.cs" Inherits="_211012.Memos.Memo_Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 453px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><h3 style="text-align: center" class="auto-style1"> 방명록</h3>

            <br />

            작성자
            <asp:TextBox ID="TextBox1" runat="server" Width="391px"></asp:TextBox>
            <br />
            <br />
            내용<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="355px" TextMode="MultiLine" Width="397px"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="방명록 등록" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="리 스 트" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="방명록삭제" />

        </div>
    </form>
</body>
</html>
