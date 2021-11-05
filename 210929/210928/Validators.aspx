<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validators.aspx.cs" Inherits="_210928.Validators" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%--클라이언트에서 동작하는 유효성 검사 스크립트--%>
    <script type="text/javascript">
        function Valjumin(source, args) {
            var sn = args.Value;    /*유효성 검사할 컨트롤에 입력된 값*/
            var chkDigit = 0;
            var weight = 2;
            for (var i = 0; i < 13; i++) {
                if (i == 6) {
                    continue;
                }
                cjkDigit += parseInt(sn.charAt(i)) * weight;
                weight++;
                if (weight > 9) weight = 2;
            }
            chkDigit = (11 - (chkDigit % 11)) % 10;
            if (parseInt(sn.charAt(13)) == chkDigit)
                args.IsValid = true;
            else
                args.IsValid = faluse;      // 유효성 검사 결과
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 름 :
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="이름을 입력해주세요" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            비밀&nbsp;&nbsp;&nbsp; 번호 : <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="비밀번호를 입력해주세요" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="비밀번호는 4~10자 입니다." SetFocusOnError="True" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            <br />
            비밀번호확인 :
            <asp:TextBox ID="txtRpwd" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRpwd" Display="Dynamic" ErrorMessage="비밀번호를 확인하세요." SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtRpwd" Display="Dynamic" ErrorMessage="비밀번호와 일치하지 않습니다." SetFocusOnError="True"></asp:CompareValidator>
            <br />
            이&nbsp;&nbsp; 메&nbsp;&nbsp; 일 :
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="이메일입력해주세요." SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="이메일형식이틀립니다." SetFocusOnError="True" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
            <br />
            주민등록번호 : <asp:TextBox ID="txtjumin" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtjumin" Display="Dynamic" ErrorMessage="주민번호 입력해주세요." SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtjumin" Display="Dynamic" ErrorMessage="주민번호숫자 확인해주세요." SetFocusOnError="True" ValidationExpression="\d{6}-[1-4]\d{6}"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustomValidator1" 
                runat="server" ClientValidationFunction="Valjumin" 
                ControlToValidate="txtjumin" Display="Dynamic" 
                ErrorMessage="주민번호형식이 맞지 않습니다." 
                OnServerValidate="valNum" SetFocusOnError="True"></asp:CustomValidator>
            <br />
            나&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 이 :
            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" Display="Dynamic" ErrorMessage="0~120살입니다" MaximumValue="120" MinimumValue="0" SetFocusOnError="True"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="전송" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="취소" OnClick="Button2_Click" />
        </div>
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
