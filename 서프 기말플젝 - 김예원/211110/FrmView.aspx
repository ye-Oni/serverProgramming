<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmView.aspx.cs" Inherits="_211110.FrmView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet">
    </style>
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
            <table style ="width :750px;">
                <tr><td style ="text-align :center"><h3 style="font-family: HY엽서M; font-size: large; background-color: #CCFFFF"> 게시글 보기 </h3></td></tr>
                <tr><td>작성자 : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  작성일: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>                &nbsp;&nbsp;&nbsp;                조회수 : <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                       <br /><br />     
                    </td></tr>
                <tr><td style ="text-align :center"><h4 style="border-style: dashed; border-color: #66CCFF">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </h4></td></tr>
                <tr><td style ="text-align :center"> 
                    <asp:TextBox ID="TextBox1" runat="server" Height="286px" TextMode="MultiLine" Width="528px"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style1"> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button2" runat="server" OnClick="Button2_Click" Text="수정" />
                    &nbsp;&nbsp;&nbsp;<asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button3" runat="server" OnClick="Button3_Click" Text="삭제" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button4" runat="server" OnClick="Button4_Click" Text="답변쓰기" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button1" runat="server" Text="리스트" OnClick="Button1_Click" />
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td></tr>
                 
            </table>
        </div>
    </form>
</body>
</html>
