﻿<%@ Page Title="Create Player" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPlayer_Create.aspx.cs" Inherits="PLASS.frmAddPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="d-flex justify-content-start">
        <div class="row  p-3 rounded g-3">
            <h1 class="mb-5">Create Player</h1>
            <div class="col-md-6">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNama" runat="server" ErrorMessage="Please enter name" 
                    Font-Italic="True" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblDob" runat="server" Text="Date of Birth"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtDob" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDob" runat="server" ErrorMessage="Please enter date" 
                    Font-Italic="True" ControlToValidate="txtDob" Display="Dynamic" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblHeight" runat="server" Text="Height (cm)"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtHeight" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvHeight" runat="server" ErrorMessage="Please enter value" 
                    Font-Italic="True" ControlToValidate="txtHeight" Display="Dynamic" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblWeight" runat="server" Text="Weight (kg)"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtWeight" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvWeight" runat="server" ErrorMessage="Please enter value" 
                    Font-Italic="True" ControlToValidate="txtWeight" Display="Dynamic" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                <asp:DropDownList CssClass="form-control" ID="ddCountry" runat="server" AutoPostBack="True" DataSourceID="CountryList" DataTextField="name" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="CountryList" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [name], [id] FROM [country]"></asp:SqlDataSource>
            </div>
            <div class="col-md-6">
                <asp:Label ID="lblDominantFoot" runat="server" Text="Dominant Foot"></asp:Label>
                <asp:DropDownList CssClass="form-control" ID="ddDominantFoot" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="right">Right</asp:ListItem>
                    <asp:ListItem Value="left">Left</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-12">
                <asp:Label ID="lblEstimatedValue" runat="server" Text="Estimated Value"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtEstimatedValue" runat="server" TextMode="Number" Placeholder="hello"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEstimatedValue" runat="server" ErrorMessage="Please enter value" 
                    Font-Italic="True" ControlToValidate="txtEstimatedValue" Display="Dynamic" ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>
            <asp:Label ID="lblMessage" runat="server"  Visible="False" Text="Success!"></asp:Label>
            <asp:Button CssClass="btn btn-primary mt-5 " ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>
