<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pr_Product_Gods.aspx.cs" Inherits="_211005.Pr_Product_Gods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
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
