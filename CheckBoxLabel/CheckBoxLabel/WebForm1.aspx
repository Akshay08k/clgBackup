<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CheckBoxLabel.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBox runat="server" ID="YES" Text="YES" />
            <br />
            <br />
            <asp:CheckBox runat="server" ID="NO" Text="NO" />
            <br />
            <br />
            <asp:Button runat="server" Text="Click" OnClick="buttonClick" />
            <br />
            <br />
            <asp:Label runat="server" ID="resultLbl"></asp:Label>
        </div>
    </form>
</body>
</html>
