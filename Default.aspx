<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Task_System.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" mx-100 d-flex flex-column align-items-center justify-content-center " style="height:100vh;">
            <div>
                <h1 class=" fw-normal fw-semibold my-4 " style="font-size:48px">Welcome to TaskSync!</h1>
            </div>
            <div class=" shadow-sm p-4 fw-bold text-center ">
                <p class="lead fw-normal">Streamline your tasks and stay organized with TaskSync.</p>
                <p class="lead fw-normal">Efficiently manage your tasks and keep track of your progress.</p>
            </div>
            <div class=" w-25 my-4  d-flex justify-content-around ">
                <asp:Button CssClass="btn btn-primary px-4 fs-4" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                <asp:Button CssClass="btn btn-primary px-4 fs-4" ID="Button2" runat="server" Text="Sign In" OnClick="Button2_Click" />
            </div>
    </div>

</asp:Content>
