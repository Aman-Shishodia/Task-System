<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Task_System.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class=" d-flex m-auto align-items-center justify-content-center w-75 my-5" style="height:auto">
    <div class=" w-50 p-3 px-5 shadow">
        <p class="fs-4 text-center fw-medium">Login</p>
        <asp:TextBox CssClass="form-control border-0" ID="nametxt" placeholder="Username" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ControlToValidate="nametxt" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the name" Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox CssClass="form-control border-0" ID="passtxt" TextMode="Password"  placeholder="Password" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="passtxt" runat="server" ErrorMessage="Please enter the password" Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:Button CssClass="btn btn-primary px-3" ID="Button1" runat="server" Text="Log In"  OnClick="Button1_Click"/><br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <p class="my-4">Not a Member? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink> </p>
        <asp:ValidationSummary ID="ValidationSummary1" CssClass="text-danger" runat="server" />
    </div>
</div>
</asp:Content>
