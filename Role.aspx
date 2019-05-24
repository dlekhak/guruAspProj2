<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Role.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row p-4">
        <div class="col-lg-12 ">
            <div class="table-responsive table-bordered">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Role_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1035px" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Role_id" HeaderText="Role_id" InsertVisible="False" ReadOnly="True" SortExpression="Role_id" Visible="false" />
                        <asp:BoundField DataField="Role_name" HeaderText="Role" SortExpression="Role_name" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" ButtonType="Button" HeaderText="Action" ShowHeader="true" />
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
        </div>
    </div>
    <div class="row p-4">
        <div class="col-lg-12 ">
            <div class="table-responsive table-bordered">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="242px" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="DetailsView1_PageIndexChanging" OnItemInserted="DetailsView1_ItemInserted">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </div>
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Role] WHERE [Role_id] = @original_Role_id AND [Role_name] = @original_Role_name AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Active] = @original_Active) OR ([Active] IS NULL AND @original_Active IS NULL))" InsertCommand="INSERT INTO [Role] ([Role_name], [Description], [Active]) VALUES (@Role_name, @Description, @Active)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Role]" UpdateCommand="UPDATE [Role] SET [Role_name] = @Role_name, [Description] = @Description, [Active] = @Active WHERE [Role_id] = @original_Role_id AND [Role_name] = @original_Role_name AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Active] = @original_Active) OR ([Active] IS NULL AND @original_Active IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Role_id" Type="Int32" />
            <asp:Parameter Name="original_Role_name" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Active" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Role_name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Active" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Role_name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Active" Type="Byte" />
            <asp:Parameter Name="original_Role_id" Type="Int32" />
            <asp:Parameter Name="original_Role_name" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Active" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

