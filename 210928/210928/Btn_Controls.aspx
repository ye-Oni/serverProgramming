<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Btn_Controls.aspx.cs" Inherits="_210928.Btn_Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function Confs() { return confirm("OK?");}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">  
                        
            <br />
            <asp:Button ID="Button1" runat="server" Text="오름차순" CommandArgument="Ascending" CommandName="Sort" OnCommand="comm_cmd"   />
            <asp:Button ID="Button2" runat="server" Text="내림차순" CommandArgument="Descending" CommandName="Sort" OnCommand="comm_cmd"   />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return Confs()">네이버</asp:LinkButton>
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/imgs/hanbit.png" OnClick="ImageButton1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
        </div>
  </form>
</body>
</html>
