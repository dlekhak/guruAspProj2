<%@ Page Title="" Language="C#" MasterPageFile="~/Loginmaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="contact">

        <div class="container text-center align-self-lg-center">

            <h2 class="text-center text-uppercase text-secondary mb-0">Sign in</h2>
            <hr class="star-dark mb-5" />
            <div>
                <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div>
                        <hr />

                        <hr />
                    </div>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign In</div>
                            <%--<div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>--%>
                        </div>

                        <div style="padding-top: 30px" class="panel-body">

                            <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                            <form id="loginform" class="form-horizontal" role="form">
                                <div class="">

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                        SelectCommand="SELECT [Role].[Role_Name],[User].[id],[User].[Email],[User].[Active] FROM [User],[Role] WHERE (
                                    ([user].[RoleID] = [Role].[Role_ID]) AND 
                                    ([Email] = @Email) AND ([password] = @password) AND ([User].[Active] = 0))">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="txtUserName" Name="Email" PropertyName="Text" Type="String" />
                                            <asp:ControlParameter ControlID="txtPassword" Name="password" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                                <div style="margin-bottom: 25px" class="input-group">

                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <asp:TextBox ID="txtUserName" runat="server" type="text" class="form-control" name="username" value="" placeholder="your email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Your email is required!!!" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                                </div>
                                <div class="">
                                </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" name="password" value="" placeholder="password" CausesValidation="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Your password is required!!!" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                </div>



                                <div class="input-group">
                                    <asp:Label ID="errorLabel" runat="server" Font-Size="Larger" ForeColor="#FF3300"></asp:Label>
                                </div>


                                <div style="margin-top: 10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                        <asp:Button ID="btnLogin" class="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click1" />

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                            Don't have an account! 
                                         <a href="SignUp.aspx">Sign Up Here</a>


                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </section>
</asp:Content>

