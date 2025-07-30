<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="validationProgram.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name :
            <asp:TextBox runat="server" ID="name"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="name" ErrorMessage="Name Can't be blank" ForeColor="red" Display="None"></asp:RequiredFieldValidator>
            <br />
            <br />
            Age :
            <asp:TextBox runat="server" ID="Age"></asp:TextBox>

            <asp:RequiredFieldValidator runat="server" ControlToValidate="Age" ErrorMessage="Age Can't be blank" ForeColor="red" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" ErrorMessage="Please Enter in valid range" Type="Integer" ControlToValidate="Age" MaximumValue="50" MinimumValue="18" ForeColor="red" Display="None"></asp:RangeValidator>
            <br />
            <br />
            Email :
            <asp:TextBox runat="server" ID="Email"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="Email" ValidationExpression=".+@.+\...+" ErrorMessage="Please enter valid mail" ForeColor="Red" Display="None"></asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="Email Can't be blank" ForeColor="red" Display="None"></asp:RequiredFieldValidator>
            <br />
            <br />
            Password :
            <asp:TextBox runat="server" ID="Password"></asp:TextBox>

            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password Can't be blank" ForeColor="red" Display="None"></asp:RequiredFieldValidator>
            <br />
            <br />
            Confirm Password :
            <asp:TextBox runat="server" ID="confpassword"></asp:TextBox>

            <asp:RequiredFieldValidator runat="server" ControlToValidate="confpassword" ErrorMessage="Confirm Password Can't be blank" ForeColor="red" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="confpassword" ForeColor="red" Display="None" ErrorMessage="Password are not matching"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button runat="server" Text="Submit" OnClick="printDetails" />
            <br />
            <br />

            <asp:Label runat="server" ID="result">
               
            </asp:Label>


            <asp:ValidationSummary ID="validationSummary" runat="server" HeaderText="Please fix the Errors" ForeColor="red" ShowSummary="true" ShowMessageBox="false" DisplayMode="BulletList" />    
        </div>
    </form>
</body>
</html>
