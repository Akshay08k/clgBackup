<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="MiniApplication.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="name"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="name" ErrorMessage="cant be empty" ForeColor="red"></asp:RequiredFieldValidator>
            <br />
            <br />

            
            <asp:TextBox runat="server" ID="password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="password" ErrorMessage="cant be empty" ForeColor="red"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
