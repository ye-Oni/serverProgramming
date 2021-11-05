<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="_211102.Login.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    <asp:Login ID="Login1" runat="server">
                        <LayoutTemplate>
                            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                <tr>
                                    <td>
                                        <table cellpadding="0">
                                            <tr>
                                                <td align="center" colspan="2">로그인</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">사용자 이름:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="사용자 이름이 필요합니다." ToolTip="사용자 이름이 필요합니다." ValidationGroup="ctl00$Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">암호:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="암호가 필요합니다." ToolTip="암호가 필요합니다." ValidationGroup="ctl00$Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:CheckBox ID="RememberMe" runat="server" Text="사용자 이름 및 암호 저장" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="2">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login/FremCreate.aspx">[회원가입]</asp:LinkButton>
                                                    &nbsp;
                                                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Login/FrmPassRecovery.aspx">[암호찾기]</asp:LinkButton>
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="로그인" ValidationGroup="ctl00$Login1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                    </asp:Login>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <asp:LoginName ID="LoginName1" runat="server" />
                    님 반갑습니다.<br />&nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Login/FrmChgPass.aspx">[암호변경]</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
    </form>
</body>
</html>
