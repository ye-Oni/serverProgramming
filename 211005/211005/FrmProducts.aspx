<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmProducts.aspx.cs" Inherits="_211005.FrmProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 245px;
        }
        .auto-style2 {
            width: 249px;
        }
        .auto-style3 {
            width: 87%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style3" style="text-align: center">
                <tr>
                    <td class="auto-style1" colspan="2" style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 장바구니 보기</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox> </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="선택상품 보기 " OnClick="Button1_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text=" 1" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
               
            </table>
            <br />
        </div>
    </form>
</body>
</html>
