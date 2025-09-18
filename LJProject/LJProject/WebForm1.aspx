<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LJProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="LoginPanel" Visible="true">
        <asp:Label runat="server" ID="Errorlbl" ForeColor="Red"></asp:Label>
        <br />
        <br />
        Username : <asp:TextBox runat="server" ID="NameInput"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="NameInput" ErrorMessage="Please Enter This"></asp:RequiredFieldValidator>


        <br /><br />
        Password : <asp:TextBox runat="server" ID="PassInput"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="PassInput" ErrorMessage="Please Enter this"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button runat="server" OnClick="LoginBtn" Text="Login" />
        
        <asp:Button runat="server" OnClick="CancelBtn" Text="Cancel" />
    </asp:Panel>
    <br />
    <asp:Panel runat="server" ID="WelcomePanel" Visible="false">
        <br />
        <asp:Label runat="server" ID="welcomeLbl"></asp:Label>
        <br /><br />
        <asp:Button runat="server" OnClick="LogoutBtn" />
    </asp:Panel>
</asp:Content>
