<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="BankConstructor.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Id :<asp:TextBox ID="id" runat="server"></asp:TextBox>
            <br />
            <br />
            Name : <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
            <br />
            Account type : <asp:DropDownList runat="server" ID="Actype">
                <asp:ListItem Text="Saving" Value="Saving"></asp:ListItem>
                <asp:ListItem Text="Current" Value="Current"></asp:ListItem>
                <asp:ListItem Text="Recurring" Value="Recurring"></asp:ListItem>
            </asp:DropDownList><br />
            <br />
            Balance : <asp:TextBox runat="server" ID="balance"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" OnClick="newObj" Text="Submit"/>
        <br />
            <br />
            <asp:Label ID="Result" runat="server"></asp:Label>
            </div>
    </form>
</body>
</html>
