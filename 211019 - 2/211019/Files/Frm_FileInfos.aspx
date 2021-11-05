<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm_FileInfos.aspx.cs" Inherits="_211019.Files.Frm_FileInfos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3 style="text-align: center">웹 서버 파일 브라우저</h3>
        <div>
            경로 : <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="218px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="317px"></asp:ListBox>
        &nbsp;&nbsp;
            <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" Height="215px" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" Width="295px"></asp:ListBox>
            <br />
            <br />
            상세 파일 정보<br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
