<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDataList.aspx.cs" Inherits="_211019.FrmDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand" OnUpdateCommand="DataList1_UpdateCommand" Width="202px">
                <EditItemTemplate>
                    상 품 명 :
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("prod_name") %>'></asp:TextBox>
                    <br />
                    상품컬러 :
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("prod_color") %>'></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">[확인]</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">[취소]</asp:LinkButton>
                </EditItemTemplate>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <FooterTemplate>
                    만든이 : 코더
                </FooterTemplate>
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <HeaderTemplate>
                    상품목록 리스트
                </HeaderTemplate>
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" Text='<%# Eval("prod_name") %>'></asp:LinkButton>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SelectedItemTemplate>
                    상 품 명 :&nbsp;&nbsp;<%# Eval("prod_name") %>&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit">[편집]</asp:LinkButton>
                    <br />
                    상품컬러 : <%# Eval("prod_color") %>
                </SelectedItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_AConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
