<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name : <asp:TextBox runat="server" ID="NameInput"></asp:TextBox>
            <br /><br />
            Age : <asp:TextBox runat="server" ID="AgeInput"></asp:TextBox>
            <br /><br />
            <asp:Button Text="Add" runat="server" OnClick="Add"/>
            <br /><br />
            <asp:Button Text="Display" runat="server" OnClick="Display"/>
            <br /><br />
            <asp:Button Text="Custom Display" runat="server" OnClick="CustomStart"/>
            <br /><br />    
            <asp:Button Text="Aggregate" runat="server" OnClick="Aggregate"/>
            <br /><br />

            <asp:Button Text="First" runat="server" OnClick="FirstStudent" />
            <asp:Label runat="server" ID="firstLbl"></asp:Label>
             <br /><br />

             <asp:Button Text="Last" runat="server" OnClick="LastStudent" />
             <asp:Label runat="server" ID="lastLbl"></asp:Label>
            <br /><br />
            <asp:Label runat="server" ID="result"></asp:Label>  
        </div>
    </form>
</body>
</html>
