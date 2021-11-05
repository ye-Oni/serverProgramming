<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mail_list.aspx.cs" Inherits="_211102.mail_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style ="width :200px">
        <tr><td style ="text-align :center"><img src="img/mailinglist.gif" /></td></tr>
        <tr><td style ="text-align :center"><h3>이메일주소</h3></td></tr>
        <tr><td style ="text-align :left"> 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="이메일주소를입력하세요" Display="None" 
                ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="이메일형식이틀립니다" Display="None" ControlToValidate="TextBox1" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" /> 
            </td></tr>
        <tr><td style ="vertical-align :bottom; text-align : center; height :35px ">
            <asp:Button ID="Button1" runat="server" Text="가입" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="탈퇴" />
            </td></tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
