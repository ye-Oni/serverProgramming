<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPassConf.aspx.cs" Inherits="_211110.FrmPassConf" %>

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
            <table style ="text-align :center;width:550px">
                <tr><td><h3 style="font-family: HY엽서M; background-color: #CCFFFF"> 비밀번호 확인</h3></td></tr><br />
                 <tr><td> 비밀번호 : <asp:TextBox ID="TextBox1" runat="server" Width="165px"></asp:TextBox> 
                     &nbsp;&nbsp;&nbsp; 
                     <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button1" runat="server" Text="확인" OnClick="Button1_Click" />
                     </td></tr>
                <tr><td></td></tr>
                 <tr><td>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button type="button" CssClass="btn btn-outline-info" style="height: 38px;" ID="Button2" runat="server" Text="리스트" OnClick="Button2_Click" /> </td></tr>
            </table>
        </div>
    </form>
</body>
</html>
