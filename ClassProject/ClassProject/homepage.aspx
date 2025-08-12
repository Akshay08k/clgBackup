<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ClassProject.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name : <asp:TextBox runat="server" ID="Name"></asp:TextBox>
            <br />
            model: <asp:TextBox runat="server" ID="model"></asp:TextBox>
            <br />
            price : <asp:TextBox runat="server" ID="price"></asp:TextBox>
            <br />
            year : <asp:TextBox runat="server" ID="year"></asp:TextBox><br />
            <asp:Label runat="server" ID="result" />
            <br />            
            <asp:Button runat="server" OnClick="loadDetails" Text="click"/>
            <asp:Button runat="server" OnClick="loadDetailsDBclick" Text="click again"/>
        </div>
    </form>
</body>
</html>
