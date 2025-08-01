<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NavigationIntro.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name : <asp:TextBox runat="server" ID="name"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="name" ForeColor="Red" ErrorMessage="* Required"></asp:RequiredFieldValidator>
            <br />
            <br />
            Password : <asp:TextBox runat="server" ID="pass"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="pass" ForeColor="red" ErrorMessage="* Required"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:LinkButton runat="server" OnClick="linkBtn1">Login</asp:LinkButton>
        </div>
    </form>
</body>
</html>
