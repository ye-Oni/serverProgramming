<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Str_InOut.aspx.cs" Inherits="_210928.Str_InOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         목록형 컨트롤 사용 예제
            <br />
            <br />
            RepeatDirection :
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="0">Horizantal</asp:ListItem>
                <asp:ListItem Value="1">Vertical</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            RepeatLayout&nbsp; :
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Value="0">Table</asp:ListItem>
                <asp:ListItem Value="1">Flow</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            나의 관심 분야 선택<br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" RepeatColumns="3">
                <asp:ListItem Value="0">문학</asp:ListItem>
                <asp:ListItem Value="1">경제/경영</asp:ListItem>
                <asp:ListItem Value="2">외국어</asp:ListItem>
                <asp:ListItem Value="3">예술</asp:ListItem>
                <asp:ListItem Value="4">자연과학</asp:ListItem>
                <asp:ListItem Value="5">취미/실용</asp:ListItem>
                <asp:ListItem Value="6">인문</asp:ListItem>
                <asp:ListItem Value="7">컴퓨터</asp:ListItem>
                <asp:ListItem Value="8">스포츠</asp:ListItem>
                <asp:ListItem Value="9">정치/사회</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            BulletStyle :
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="0">NotSet</asp:ListItem>
                <asp:ListItem Value="1">Numbered</asp:ListItem>
                <asp:ListItem Value="2">Lower Alpha</asp:ListItem>
                <asp:ListItem Value="3">Upper Alpha</asp:ListItem>
                <asp:ListItem Value="4">Lower Roman</asp:ListItem>
                <asp:ListItem Value="5">Upper Roman</asp:ListItem>
                <asp:ListItem Value="6">Disc</asp:ListItem>
                <asp:ListItem Value="7">Circle</asp:ListItem>
                <asp:ListItem Value="8">Square</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            선택한 관심 분야 목록<br />
            <asp:BulletedList ID="BulletedList1" runat="server">
            </asp:BulletedList>
        </div>
    </form>
</body>
</html>
