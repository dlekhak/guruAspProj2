<%@ Page Title="" Language="C#" MasterPageFile="~/Loginmaster.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="container text-center align-self-lg-center">

        <h2 class="text-center text-uppercase text-secondary mb-0">Sign up</h2>
        <hr class="star-dark mb-5" />
        <div>
            <h6 class="text-center text-uppercase text-secondary mb-0">Have an account already!<br />
                <br />
                Click here to <a href="Login.aspx">Sign In.</a></h6>
        </div>
        <br />
        <br />
        <div style="margin-left: 30%;">
            <asp:DetailsView ID="DetailsView1" CssClass="alert-primary panel-body" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="50px" Width="418px" OnItemInserting="DetailsView1_ItemInserting" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted">
                <Fields>
                    <asp:BoundField ControlStyle-CssClass="form-control glyphicon glyphicon-user" DataField="Email" HeaderText="Email" Visible="false" SortExpression="Email">
                        <ControlStyle CssClass="form-control glyphicon glyphicon-user"></ControlStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="password" InsertVisible="False" Visible="False" ControlStyle-CssClass="form-control" HeaderText="password" SortExpression="password">


                        <ControlStyle CssClass="form-control"></ControlStyle>
                    </asp:BoundField>


                    <asp:TemplateField HeaderText="Email">
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email" Text='<%# Bind("Email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="This field is required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

                        </InsertItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Password">
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password" Text='<%# Bind("Password") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="This field is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Role">
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlRole" Height="35px" CssClass="form-control" DataSourceID="sqlDataSource2" DataTextField="Role_name"
                                DataValueField="Role_id" runat="server" SelectedValue='<%# Bind("RoleID") %>'>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="This field is required" ControlToValidate="ddlRole"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" InsertVisible="False" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                    <asp:CommandField ButtonType="Button" ShowInsertButton="True" ControlStyle-CssClass="btn btn-primary" InsertText="Submit">
                        <ControlStyle CssClass="btn btn-primary"></ControlStyle>
                    </asp:CommandField>
                </Fields>
            </asp:DetailsView>
        </div>

    </div>

    <asp:Label ID="lblError" runat="server" BackColor="#CCFFFF" Font-Names="Comic Sans MS"></asp:Label>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [ID] = @ID" InsertCommand="INSERT INTO [User] ([Email], [password], [RoleID]) VALUES (@Email, @password, @RoleID)" SelectCommand="SELECT [Email], [password], [RoleID], [ID] FROM [User]" UpdateCommand="UPDATE [User] SET [Email] = @Email, [password] = @password, [RoleID] = @RoleID WHERE [ID] = @ID">

            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" DefaultValue="" />
                <asp:Parameter Name="password" Type="String" DefaultValue="" />
                <asp:Parameter Name="RoleID" Type="Int32" DefaultValue="1" />
            </InsertParameters>

        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Role_id], [Role_name] FROM [Role]"></asp:SqlDataSource>
    </p>

</asp:Content>

