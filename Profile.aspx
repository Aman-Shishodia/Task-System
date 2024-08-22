<%@ Page Title="" Language="C#" MasterPageFile="~/master3.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Task_System.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .icon{
            width:200px;
            height:200px
        }
        #icon1{
                  width:200px;
      height:200px
        }
                .usertxt{
            outline:none;
        }
    </style>
    <div class="m-4">
    <h1>Username :  <asp:TextBox ID="TextBox1" CssClass="usertxt border-0" runat="server" ReadOnly="True"></asp:TextBox></h1>
    </div>
</asp:Content>
