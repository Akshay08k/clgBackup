<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerpage.aspx.cs" Inherits="MiniApplication.Registerpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name :
            <asp:TextBox runat="server" ID="name"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="name" ErrorMessage="cant be empty" ForeColor="red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Contact :
            <asp:TextBox runat="server" ID="contact"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="contact" ErrorMessage="cant be empty" ForeColor="red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Email :
            <asp:TextBox runat="server" ID="email"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="email" ErrorMessage="cant be empty" ForeColor="red"></asp:RequiredFieldValidator>
            <br />
            <br />
            DOB :
            <asp:TextBox runat="server" ID="dob"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="dob" ErrorMessage="cant be empty" ForeColor="red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button runat="server" OnClick="navigateToDash" />
        </div>
    </form>
</body>
</html>
