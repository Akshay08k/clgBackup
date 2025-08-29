<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Customer.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Account Id : <asp:TextBox runat="server" ID="accID"></asp:TextBox>
            <br /><br />
            Customer Name : <asp:TextBox runat="server" ID="CName"></asp:TextBox>
            <br /><br />
             Account Type : <asp:TextBox runat="server" ID="AccType"></asp:TextBox>
             <br /><br />
              Balace : <asp:TextBox runat="server" ID="Balance"></asp:TextBox>
            <br /><br />
            <asp:Button runat="server" OnClick="AddCustomer" Text="Add Customer" />
            <asp:Button runat="server" OnClick="Above5Click" Text="Show Above Balance > 5000"/>
            <asp:Label runat="server" ID="Result"></asp:Label>
            <asp:Label runat="server" ID="NotifyText"></asp:Label>
        </div>
    </form>
</body>
</html>
