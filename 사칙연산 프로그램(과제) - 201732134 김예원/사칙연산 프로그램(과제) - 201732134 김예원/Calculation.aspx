<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculation.aspx.cs" Inherits="사칙연산_프로그램_과제____201732134_김예원.Calculation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="font-size: medium; text-align: center;"> 사칙 연산 프로그램 - 김예원 </h1>
        <div style="text-align: center">
            숫자 1 입력 :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            숫자 2 입력 :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="더하기" CommandArgument="Add" CommandName="Calc" OnCommand="Button_Control" />
&nbsp;
            <asp:Button ID="Button2" runat="server" Text="빼기" CommandArgument="Sub" CommandName="Calc" OnCommand="Button_Control" />
&nbsp;
            <asp:Button ID="Button3" runat="server" Text="곱하기" CommandArgument="Mul" CommandName="Calc" OnCommand="Button_Control" />
&nbsp;
            <asp:Button ID="Button4" runat="server" Text="나누기" CommandArgument="Div" CommandName="Calc" OnCommand="Button_Control" />
&nbsp;
            <asp:Button ID="Button5" runat="server" Text="지우기" OnClick="Button5_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
