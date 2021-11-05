<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm_FileWrite.aspx.cs" Inherits="_211026.Frm_FileWrite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 545px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3 class="auto-style1" style="text-align: center">  메모 작성하여 파일로 생성하기</h3>
        <div>
            
            <br />
            제목 : <asp:TextBox ID="TextBox1" runat="server" Width="492px"></asp:TextBox>
            <br />
            <br />
            내용 :<br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="267px" Width="487px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="메모파일작성" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="파일생성" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
