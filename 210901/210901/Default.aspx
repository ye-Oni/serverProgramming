<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_210901.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 335px;
            height: 51px;
        }
        .auto-style2 {
            height: 70px;
        }
        .auto-style4 {
            height: 51px;
        }
        .auto-style5 {
            width: 300px;
        }
        .auto-style6 {
            width: 317px;
            height: 51px;
        }
    </style>
</head>
<body>
    <center><h3> 반갑습니다! ASP.NET </h3>  
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;" border="1">
                <tr>
                    <td class="auto-style2" colspan="3" style="border: 1px solid #808080; border-collapse: collapse;">원의 넓이 구하기</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="border: 1px solid #808080; border-collapse: collapse; height: 50px;">반지름</td>
                    <td class="auto-style1" style="border-style: solid; border-collapse: collapse;">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;cm</td>
                    <td class="auto-style4" style="border-style: solid; border-collapse: collapse;">
                        <asp:Button ID="Button1" runat="server" Text="넓이 구하기" OnClick ="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3" style="border: 1px solid #808080; border-collapse: collapse;">
                        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                        </td>
                </tr>
            </table>
        </div>
        <!-- 글이 가운데로 오게끔 만들기-->
        <div>
            <hr class="auto-style5" />
            <asp:Label ID="lblMessage" runat="server" BorderColor="Yellow" BorderStyle="Solid" Width="300px"></asp:Label>
            <hr style="width: 300px" />
        </div>
    </form>
    </center>
</body>
</html>
