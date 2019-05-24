<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Level.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Level] WHERE [Level_id] = @original_Level_id AND [Level_name] = @original_Level_name" InsertCommand="INSERT INTO [Level] ([Level_name]) VALUES (@Level_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Level]" UpdateCommand="UPDATE [Level] SET [Level_name] = @Level_name WHERE [Level_id] = @original_Level_id AND [Level_name] = @original_Level_name">
        <DeleteParameters>
            <asp:Parameter Name="original_Level_id" Type="Int32" />
            <asp:Parameter Name="original_Level_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Level_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Level_name" Type="String" />
            <asp:Parameter Name="original_Level_id" Type="Int32" />
            <asp:Parameter Name="original_Level_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="row p-4">
        <div class="col-lg-12 ">
            <div class="table-responsive table-bordered">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Level_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="657px" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Level_id" HeaderText="Level_id" ReadOnly="True" SortExpression="Level_id" Visible="false" InsertVisible="False" />
                        <asp:BoundField DataField="Level_name" HeaderText="Level_name" SortExpression="Level_name" />
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
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Level_id" DataSourceID="SqlDataSource1" Height="50px" Width="650px" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemInserted="DetailsView1_ItemInserted">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Level_id" HeaderText="Level_id" InsertVisible="False" ReadOnly="True" SortExpression="Level_id" />
                        <asp:BoundField DataField="Level_name" HeaderText="Level" SortExpression="Level_name" />
                        <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

