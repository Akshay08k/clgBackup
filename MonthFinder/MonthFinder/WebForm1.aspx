<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MonthFinder.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Month No : <asp:TextBox runat="server" ID="inputNumber"></asp:TextBox>
            <br /><br />
            Month No : <asp:TextBox runat="server" ID="result"></asp:TextBox>
            <br /><br />
            <asp:Button runat="server" Text="Show Month" OnClick="getMonth" />
            
            <asp:Button runat="server" Text="Reset" OnClick="reset" />
        </div>
    </form>
</body>
</html>
