<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFileUpload.aspx.cs" Inherits="_211026.FrmFileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="auto-style1" style="text-align: center">파일 업로드 하기</h2>
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="파일업로드하기" OnClick="Button1_Click" />
            <br />
        </div>
    </form>
</body>
</html>
