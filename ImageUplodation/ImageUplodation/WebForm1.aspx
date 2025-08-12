<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ImageUplodation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button runat="server" OnClick="visibleToggle" Text="Toggle" />
            <br />
            <br />
            <asp:Image ID="Image" runat="server" ImageUrl="~/uploads/download.jpg" BorderColor="blue" BorderStyle="Groove" BorderWidth="10" ToolTip="Nothing" AlternateText="Nothing" />
        </div>
    </form>
</body>
</html>
