<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ImageRadio.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList runat="server" ID="imgRadio" OnSelectedIndexChanged="changeImg" AutoPostBack="true">
                <asp:ListItem Text="Image1" Value="Image1"></asp:ListItem>
                <asp:ListItem Text="Image2" Value="Image2"></asp:ListItem>
                <asp:ListItem Text="Image3" Value="Image3"></asp:ListItem>
                <asp:ListItem Text="Image4" Value="Image4"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Image runat="server" ID="imagePath" ImageUrl="uploads/1.jpg" />


        </div>
    </form>
</body>
</html>
