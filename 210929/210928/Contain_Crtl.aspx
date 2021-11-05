<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contain_Crtl.aspx.cs" Inherits="_210928.Contain_Crtl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                컨트롤형 웹 컨트롤 예제<br /> 쇼핑백의 변신 : <br />
                </asp:Panel>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/bag_01.bmp" ImageAlign="Middle" />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/imgs/bag_02.bmp" Width="439px" ImageAlign="Middle" />
                    </asp:View>
                </asp:MultiView>
            
        </div>
    </form>
</body>
</html>
