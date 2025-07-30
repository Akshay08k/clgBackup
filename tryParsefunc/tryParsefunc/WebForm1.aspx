<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="tryParsefunc.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="inputNumber"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" Text="Click" OnClick="doIt" />
            <br />
            <br />
            <asp:Label runat="server" ID="Result"></asp:Label>
        </div>
    </form>
</body>
</html>
