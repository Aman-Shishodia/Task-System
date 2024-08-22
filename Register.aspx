<%@ Page Title="" Language="C#" MasterPageFile="~/master2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Task_System.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" d-flex m-auto align-items-center justify-content-center w-75 my-5" style="height:auto">
    <div class=" w-50 p-3 px-5 shadow">
        <p class="fs-4 text-center fw-medium">Register</p>
        <asp:TextBox CssClass="form-control border-0" ID="nametxt" placeholder="Username" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the name" ControlToValidate="nametxt" Display="Dynamic" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator>
        <asp:TextBox CssClass="form-control border-0" ID="emailtxt" placeholder="Email address" runat="server" TextMode="Email"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the email"  ControlToValidate="emailtxt" Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox CssClass="form-control border-0" ID="passtxt" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the password" ControlToValidate="passtxt" Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox CssClass="form-control border-0" ID="repasstxt" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please confirm the password" ControlToValidate="repasstxt" Display="Dynamic" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></br>
        <asp:Button CssClass="btn btn-primary px-3" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
        <p class="my-4">Already a Member? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink> </p>
        <asp:ValidationSummary ID="ValidationSummary1" CssClass="text-danger" runat="server" />
    </div>
</div>
</asp:Content>
