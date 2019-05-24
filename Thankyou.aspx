<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thankyou.aspx.cs" Inherits="Thankyou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbotron p-3 text-center">
        <h1 class="display-3">Thank You!
            <asp:Label ID="lblThankYou" runat="server" ForeColor="Green"></asp:Label></h1>
        <h3 class="display-3"></h3>
        <p class="lead"><strong>Please check your email</strong> for further instructions.</p>
        <hr />

        <p class="lead">
            <a class="btn btn-primary btn-sm" href="Default.aspx" role="button">Continue to homepage</a>
        </p>
    </div>
</asp:Content>

