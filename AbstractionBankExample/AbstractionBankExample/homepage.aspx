<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="AbstractionBankExample.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Name : <asp:TextBox runat="server" ID="name">
            </asp:TextBox>
            <br /><br />
            Account Number :<asp:TextBox runat="server" ID="AccountNumber">
            </asp:TextBox>
            <br /><br />
            Balance : <asp:TextBox runat="server" ID="Balance">
            </asp:TextBox>
            <br /><br />
            Withdraw Amount : <asp:TextBox runat="server" ID="WithdrawAmount"></asp:TextBox>
            <br /><br />
            <asp:Button runat="server" OnClick="currentAccountWithDraw" Text="Current Acc Withdraw" />
            <br /><br />
            <asp:Button runat="server" OnClick="SavingAccountWithdraw" Text="Saving Acc Withdraw" />
            <br /><br />
            <asp:Label runat="server" ID="Result"></asp:Label>
        </div>
    </form>
</body>
</html>
