<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="_211110.Login.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet">

</head>
<body style="
    /* border: 20px solid lightblue; */
    /* padding: 5px 20px; */
    position: absolute;
    top: 50%;
    left: 50%;
    width: 450px;
    height: 250px;
    margin-left: -220px;
    margin-top: -170px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
">
    <script src="Scripts/jquery-3.6.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <form id="form1" runat="server">
        <div>
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="277px" Width="396px">
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <LayoutTemplate>
                            <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                                <tr>
                                    <td>
                                        <table cellpadding="0" style="height:277px;width:396px;">
                                            <tr>
                                                <td align="center" colspan="2" style="color:White;background-color:#507CD1;font-size:0.9em;font-weight:bold;">로그인</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">사용자 이름:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="사용자 이름이 필요합니다." ToolTip="사용자 이름이 필요합니다." ValidationGroup="ctl04$Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">암호:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="암호가 필요합니다." ToolTip="암호가 필요합니다." ValidationGroup="ctl04$Login1">*</asp:RequiredFieldValidator>
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
                                                    <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="로그인" ValidationGroup="ctl04$Login1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:Login>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <asp:LoginName ID="LoginName1" runat="server" />
                    님 반갑습니다.<br /><br />&nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Login/FrmChgPass.aspx">[암호변경]</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                    <br />
                    <br />
                   <asp:Button type="button" CssClass="btn btn-outline-info" ID="Button1" runat="server" PostBackUrl="~/FrmWrite.aspx" Text="게시판에 글 작성하러 가기" Width="406px" Height="38px" />
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
            <asp:Button type="button" CssClass="btn btn-outline-info" ID="Button2" runat="server" OnClick="Button2_Click" Text="계정이 없다면 회원가입 하러가기" Width="406px" Height="38px"/>
        
    </form>
</body>
</html>
