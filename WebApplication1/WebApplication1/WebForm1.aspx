<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="result" runat="server"></asp:Label>
            <br /><br />
            <asp:Button runat="server" Text="Click" OnClick="btnClick" />
        </div>
    </form>
</body>
</html>
