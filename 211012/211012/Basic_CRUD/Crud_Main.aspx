<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crud_Main.aspx.cs" Inherits="_211012.Basic_CRUD.Crud_Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
&nbsp;&nbsp;&nbsp;&nbsp; 제&nbsp; 품&nbsp;&nbsp; 명 :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp; 제 품&nbsp; 컬 러 :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp; 제 품&nbsp; 크 기 :<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="데이터입력 " />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="데이터수정 " />
&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="데이터삭제 " />
&nbsp;
            <asp:Button ID="Button4" runat="server" Text="데이터보기 " />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="180px" Width="471px">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />

        </div>
    </form>
</body>
</html>
