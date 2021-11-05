<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Memo_Deletes.aspx.cs" Inherits="_211012.Memos.Memo_Deletes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 613px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3 class="auto-style1">방명록 삭제</h3>
            <asp:GridView ID="GridView1" runat="server" Width="617px"></asp:GridView>
            <br />
            <hr />

            
            <br />
            삭제번호
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="방명록등록" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="리스트" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="방명록 삭제 " />

            
        </div>
    </form>
</body>
</html>
