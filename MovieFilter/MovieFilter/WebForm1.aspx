
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MovieFilter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Movie Id : <asp:TextBox runat="server" ID="IdInput"></asp:TextBox>
            <br /><br />
            Movie Name : <asp:TextBox runat="server" ID="NameInput"></asp:TextBox>
            <br /><br />
            Director : <asp:TextBox runat="server" ID="directorInput"></asp:TextBox>
            <br /><br />
            Rating : <asp:TextBox runat="server" ID="ratingInput"></asp:TextBox>
            <br /><br />
            <asp:Button runat="server" Text="Add" OnClick="Add"/>
            <br /><br />
            <asp:Label runat="server" ID="result" ></asp:Label>
            <asp:Button runat="server" OnClick="Display" />
        </div>
    </form>
</body>
</html>
