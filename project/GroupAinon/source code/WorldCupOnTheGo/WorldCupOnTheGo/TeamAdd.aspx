﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TeamAdd.aspx.cs" Inherits="WorldCupOnTheGo.TeamAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="py-5 container">
        <div class="card-body">
            <h4>Add New Team</h4>
            <div class="form-outline mb-4">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-outline mb-4">
                <label for="exampleFormControlInput1">Team Name</label><span style="color: red">*</span>
                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqName" runat="server" ErrorMessage="required" ControlToValidate="txtName" EnableClientScript="False" Text="*Required field" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="mb-2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success my-2" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnTeamList" runat="server" CssClass="btn btn-primary my-2" Text="Go to team list" OnClick="btnTeamList_Click" />
            </div>
        </div>
    </section>
</asp:Content>
