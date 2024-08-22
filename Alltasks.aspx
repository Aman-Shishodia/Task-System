﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master3.Master" AutoEventWireup="true" CodeBehind="Alltasks.aspx.cs" Inherits="Task_System.Alltasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="w-75 m-auto mt-5 border-0">
            <asp:GridView CssClass="w-100 border-0" AutoGenerateColumns="false" ID="GridViewalltasks" runat="server" AutoGenerateDeleteButton="false">
                <Columns>
                    <asp:TemplateField HeaderStyle-CssClass="py-2 px-3 border-bottom fs-4 fw-medium" ControlStyle-CssClass=" py-2 px-3 text-capitalize" HeaderText="Task">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("task") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderStyle-CssClass="py-2 px-3 border-bottom fs-4 fw-medium"  ControlStyle-CssClass=" py-2 px-3 text-capitalize" HeaderText="Title Description">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label>                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderStyle-CssClass="py-2 px-3 border-bottom fs-4 fw-medium"  ControlStyle-CssClass=" py-2 px-3 text-capitalize" HeaderText="Time">
                          <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("date") %>'></asp:Label>  
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>
