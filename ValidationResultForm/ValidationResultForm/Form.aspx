<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="ValidationResultForm.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <form id="form1" runat="server">
        <div>
            Rollno :
            <asp:TextBox runat="server" ID="rollno"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="rollno" runat="server" ErrorMessage="Roll No Can't Be Blank" Display="None" ForeColor="red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Name :
            <asp:TextBox runat="server" ID="Name"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="Name" runat="server" ErrorMessage="Name No Can't Be Blank" Display="None" ForeColor="red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <h3 runat="server">Enter Marks</h3>

            Server Side Web : <asp:TextBox runat="server" ID="SSW"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="SSW" ErrorMessage="SSW Can't Be Blank" Display="None" ForeColor="red"></asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" ControlToValidate="SSW" ErrorMessage="SSW Marks Between 0 to 100" Display="None" ForeColor="Red"  MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br /><br />

            
            Computer Network : <asp:TextBox runat="server" ID="CN"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="CN" ErrorMessage="CN Can't Be Blank" Display="None" ForeColor="red"></asp:RequiredFieldValidator> 
            <asp:RangeValidator runat="server" ControlToValidate="CN" ErrorMessage="CN Marks Between 0 to 100" Display="None" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br /><br />

            
            Business Information System : <asp:TextBox runat="server" ID="BIS"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="BIS" ErrorMessage="BIS Can't Be Blank" Display="None" ForeColor="red"></asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" ControlToValidate="BIS" ErrorMessage="BIS Marks Between 0 to 100" Display="None" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br /><br />

            
            System Software : <asp:TextBox runat="server" ID="SS"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="SS" ErrorMessage="SS Can't Be Blank" Display="None" ForeColor="red"></asp:RequiredFieldValidator> 
            <asp:RangeValidator runat="server" ControlToValidate="SS" ErrorMessage="SS Marks Between 0 to 100" Display="None" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br /><br />

            
            Information Security : <asp:TextBox runat="server" ID="IS"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="IS" ErrorMessage="IS Can't Be Blank" Display="None" ForeColor="red"></asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" ControlToValidate="IS" ErrorMessage="IS Marks Between 0 to 100" Display="None" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br /><br />

            <asp:Button Text="Calculation" runat="server" />
            <asp:Button Text="Reset" runat="server" />

            <asp:Label runat="server" ID="Result"></asp:Label>
            <asp:ValidationSummary ID="validationSum" DisplayMode="BulletList" HeaderText="Please Fix Errors" runat="server" ShowSummary="true" ShowMessageBox="false" ForeColor="red"/>
        </div>
    </form>
</body>
</html>
