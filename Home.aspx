<%@ Page Title="" Language="C#" MasterPageFile="~/master3.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Task_System.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        #ContentPlaceHolder1_HyperLink1,#ContentPlaceHolder1_HyperLink2,#ContentPlaceHolder1_HyperLink3{
            text-decoration:none;
            cursor:pointer;
        }
        .usertxt{
            outline:none;
        }
    </style>
    <div class=" m-4">

    <p id="time"></p>
        <h3>Welcome <asp:TextBox ID="TextBox1" CssClass="usertxt border-0" runat="server" ReadOnly="True"></asp:TextBox></h3>
        <ol class="list-unstyled my-2">
            <asp:HyperLink ID="HyperLink1" CssClass="" runat="server" NavigateUrl="~/Profile.aspx">

            <li class="text-primary my-2"> <i class="fa-solid fa-user mx-2"></i>View Profile</li>
            </asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Createtask.aspx">
            <li class="text-primary my-2"><i class="fa-solid fa-pen-to-square mx-2"></i>Create Tasks</li>
            </asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Alltasks.aspx">
            <li class="text-primary my-2"><i class="fa-solid fa-list mx-2"></i>View Tasks</li>
            </asp:HyperLink>
        </ol>
        <aspxbutton id="ASPxButton1" cssclass="button" runat="server">
            <image iconid="navigation_home_32x32">
            </image>
        </aspxbutton>
    </div>
    <script>
            var localTime = new Date();
            var year = localTime.getYear();
            var month = localTime.getMonth() + 1;
            var date = localTime.getDate();
            var hours = localTime.getHours();
            var minutes = localTime.getMinutes();
            var seconds = localTime.getSeconds();

        let timediv = document.getElementById("time").innerHTML = localTime;
    </script>
</asp:Content>
