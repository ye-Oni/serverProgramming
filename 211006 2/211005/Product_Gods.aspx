<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_Gods.aspx.cs" Inherits="_211005.Product_Gods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 134px;
        }
        .auto-style2 {
            width: 496px;
        }
        .auto-style3 {
            width: 463px;
        }
        .auto-style4 {
            width: 287px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <div>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <table class="auto-style3" style="text-align: center">
                <tr>
                    <td class="auto-style1" colspan="2" style="text-align: center">
                         장바구니 보기</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox> </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="선택상품 보기 " OnClick="Button1_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
               
            </table>
            <br />
        </div>
    </form>
</body>
</html>
