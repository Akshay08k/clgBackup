<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FontFormatter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="inputString">
            </asp:TextBox>
            <br />
            <br />

            <asp:RadioButton GroupName="options" runat="server" ID="upper" Text="To Uppercase" AutoPostBack="true" OnCheckedChanged="doIt"/>
            <br /><br />
            
            <asp:RadioButton GroupName="options" runat="server" ID="lower" Text="To Lowercase" AutoPostBack="true" OnCheckedChanged="doIt"/>
            <br /><br />

            
            <asp:RadioButton GroupName="options" runat="server" ID="right5" Text="Right 5 Character" AutoPostBack="true" OnCheckedChanged="doIt"/>
            <br /><br />

            
            <asp:RadioButton GroupName="options" runat="server" ID="left5" Text="Left 5 Character" AutoPostBack="true" OnCheckedChanged="doIt"/>
            <br /><br />

            <asp:Label runat="server" ID="result"></asp:Label>
        </div>
    </form>
</body>
</html>
