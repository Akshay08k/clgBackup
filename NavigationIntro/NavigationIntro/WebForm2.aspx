<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="NavigationIntro.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Page 2</h1>
            <asp:Label runat="server" ID="username"></asp:Label>
            <asp:Label runat="server" ID="pass"></asp:Label>
            <asp:LinkButton runat="server" OnClick="back">Back</asp:LinkButton>
        </div>
    </form>
</body>
</html>

