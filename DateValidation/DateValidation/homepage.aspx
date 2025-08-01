<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="DateValidation.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Date (MM/DD/YYYY) :
            <asp:TextBox runat="server" ID="dateText"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="dateText" ForeColor="red" Display="Dynamic" ErrorMessage="Date Can't Be Blank"></asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" ControlToValidate="dateText" ForeColor="red" ErrorMessage="Only Date is Acceptable" Display="Dynamic" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button runat="server" OnClick="btnClick" Text="Submit" />
            <asp:Label runat="server" ID="result"></asp:Label>
        </div>
    </form>
</body>
</html>
