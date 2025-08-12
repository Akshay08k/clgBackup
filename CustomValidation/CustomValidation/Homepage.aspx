<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="CustomValidation.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name :
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:CustomValidator runat="server" ErrorMessage="Admin Keyword Required" ID="customValidator1" ForeColor="red" ControlToValidate="name" OnServerValidate="customValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            Number :
            <asp:TextBox ID="num1" runat="server"></asp:TextBox>
            <asp:CustomValidator runat="server" ErrorMessage="Only Number Greater 50 Accepted" ID="customValidator2" ForeColor="red" ControlToValidate="num1" OnServerValidate="customValidator2_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            <asp:Button runat="server" Text="submit" />
        </div>
    </form>
</body>
</html>
