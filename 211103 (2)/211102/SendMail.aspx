<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SendMail.aspx.cs" Inherits="_211102.SendMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 536px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width : 550px">
        <tr><td>
            <table>
                <tr><td>
                    <img src="img/mailinglist_send.jpg" style="width :160px; height :160px" />
                </td>
                    <td>
                        <img src ="img/txt_mailing.gif" style="width :335px; height :117px" />
                    </td>
                </tr>
            </table>
        </td></tr>
         <tr><td>
             <table style ="border :1px">
                 <tr><td style ="text-align :center; " class="auto-style1">제목&nbsp;<br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="339px"></asp:TextBox>
                     <br />
                     내용<br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="227px" Width="354px" TextMode="MultiLine"></asp:TextBox>
                     </td></tr>
             </table>
             </td></tr>

         <tr><td>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" Text="메일보내기" OnClick="Button1_Click" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" Text="다시작성하기" OnClick="Button2_Click" />
             </td></tr>
    </table>

</asp:Content>
