<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="_3sept.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name : <asp:TextBox runat="server" ID="name"></asp:TextBox>
            <br /><br />
            Email : <asp:TextBox runat="server" ID="email"></asp:TextBox>
            <br /><br />
            Rating : <asp:RadioButtonList runat="server" ID="rating" AutoPostBack="true">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                     </asp:RadioButtonList>
            <br /><br />
            Course : <asp:ListBox runat="server" ID="course" AutoPostBack="true">
                        <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
                        <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>
                        <asp:ListItem Text="Bcom" Value="Bcom"></asp:ListItem>
                        <asp:ListItem Text="Mcom" Value="Mcom"></asp:ListItem>
                        <asp:ListItem Text="MBA" Value="MBA"></asp:ListItem>
                     </asp:ListBox>
            <br /><br />
            Subject : <asp:DropDownList runat="server" ID="subject" AutoPostBack="true">
                        <asp:ListItem Value="CN" Text="CN"></asp:ListItem>
                        <asp:ListItem Value="OS" Text="OS"></asp:ListItem>
                        <asp:ListItem Value="BDE" Text="BDE"></asp:ListItem>
                        <asp:ListItem Value="IOT" Text="IOT"></asp:ListItem>
                        <asp:ListItem Value="DS" Text="DS"></asp:ListItem>
                      </asp:DropDownList>
            <br /><br />
            Feedback : <asp:TextBox runat="server" ID="feedback"></asp:TextBox>

            <br /><br />
            <asp:Button runat="server" Text="Done" />
            <br /><br />

            <asp:Label runat="server" ID="Result"></asp:Label>
        </div>
    </form>
</body>
</html>
