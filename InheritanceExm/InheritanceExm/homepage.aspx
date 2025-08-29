<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="InheritanceExm.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            VehicleType : <asp:TextBox runat="server" ID="vtype"></asp:TextBox>
            <br /><br />
            VehicleId : <asp:TextBox runat="server" ID="vID"></asp:TextBox>
            <br /><br />
            Car : <asp:TextBox runat="server" ID="Carname"></asp:TextBox>
            <br /><br />
            Model : <asp:TextBox runat="server" ID="Model"></asp:TextBox>
            <br /><br />
            Year Of Production : <asp:TextBox runat="server" ID="YOP"></asp:TextBox>
            <br /><br />
            Price : <asp:TextBox runat="server" ID="price"></asp:TextBox>
            <br /><br />
            <asp:Button runat="server" OnClick="BtnClick" Text="click" />
            <br /><br />
            <asp:Label runat="server" ID="result"></asp:Label>
        </div>
    </form>
</body>
</html>
