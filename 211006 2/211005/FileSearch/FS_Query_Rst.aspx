<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FS_Query_Rst.aspx.cs" Inherits="_211005.FileSearch.FS_Query_Rst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            검색어를 포함하는 파일 검색<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">HyperLink</asp:HyperLink>
&nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/FileSearch/FS_Query.aspx" Text="이전페이지로가기" />
        </div>
    </form>
</body>
</html>
