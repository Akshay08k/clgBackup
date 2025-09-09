<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ljinstitute.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Enroll Number : <asp:TextBox runat="server" ID="enroll"></asp:TextBox>
    <br /><br />
    Name : <asp:TextBox runat="server" ID="name"></asp:TextBox>
    <br /><br />
    Email : <asp:TextBox runat="server" ID="email"></asp:TextBox>
    <br /><br />
    Phone : <asp:TextBox runat="server" ID="phone"></asp:TextBox>
    <br /><br />
    <asp:Button runat="server" Text="Submit" OnClick="redirect" />
</asp:Content>
