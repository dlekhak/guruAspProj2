<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row p-4">
        <div class="col-lg-12 ">
            <div class="table-responsive table-bordered">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="1228px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="false" />
                        <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" Visible="true" />
                        <asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" Visible="false" />
                        <asp:TemplateField HeaderText="Role" ItemStyle-Width="100px">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlRole" Height="35px" CssClass="form-control" DataSourceID="sqlDataSource2" DataTextField="Role_name"
                                    DataValueField="Role_id" runat="server" SelectedValue='<%# Bind("RoleID") %>'>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="ddlRole" Height="35px" CssClass="form-control" DataSourceID="sqlDataSource2" DataTextField="Role_name"
                                    DataValueField="Role_id" runat="server" SelectedValue='<%# Bind("RoleID") %>'>
                                </asp:DropDownList>
                            </ItemTemplate>

                            <ItemStyle Width="100px"></ItemStyle>

                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" HeaderText="Action" ShowHeader="true" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [ID] = @ID" InsertCommand="INSERT INTO [User] ([Active], [Email], [password], [RoleID]) VALUES (@Active, @Email, @password, @RoleID)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [Active] = @Active, [Email] = @Email, [password] = @password, [RoleID] = @RoleID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Active" Type="Byte" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="RoleID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Active" Type="Byte" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="RoleID" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Role_id], [Role_name] FROM [Role]"></asp:SqlDataSource>
    </p>

</asp:Content>

