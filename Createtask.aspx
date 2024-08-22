<%@ Page Title="" Language="C#" MasterPageFile="~/master3.Master" AutoEventWireup="true" CodeBehind="Createtask.aspx.cs" Inherits="Task_System.Createtask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" d-flex m-auto align-items-center justify-content-center w-75 my-5" style="height:auto">
    <div class=" w-50 p-3 px-5 shadow">
        <p class="fs-2 my-1 mb-3 text-center fw-medium">Create Task</p>
        <asp:TextBox CssClass="form-control border-0" ID="titletxt" placeholder="Title" runat="server"></asp:TextBox><br />
        <asp:TextBox CssClass="form-control border-0 h-200 " ID="desctxt" placeholder="Description" runat="server"></asp:TextBox><br />
        <asp:TextBox CssClass="form-control border-0 mb-4" ID="dttxt" runat="server" type="date"></asp:TextBox>
        <div class="text-center my-5 mb-4">

            <asp:Button CssClass="btn btn-primary mx-2 px-3" ID="Button1" runat="server" Text="Add Task" OnClick="Button1_Click" />
            <asp:Button CssClass="btn btn-secondary mx-2 px-3" ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
</div>

</asp:Content>
