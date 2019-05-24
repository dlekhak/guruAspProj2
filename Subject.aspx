<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row p-4">
        <div class="col-lg-12 ">
            <div class="table-responsive table-bordered">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="course_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" Width="825px" OnRowUpdated="GridView1_RowUpdated">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="course_id" HeaderText="course_id" ReadOnly="True" SortExpression="course_id" Visible="false" InsertVisible="False" />
                        <asp:BoundField DataField="Course_Name" HeaderText="CourseName" SortExpression="Course_Name" />
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [course_id] = @original_course_id AND [Course_Name] = @original_Course_Name AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL))" InsertCommand="INSERT INTO [Course] ([Course_Name], [description]) VALUES (@Course_Name, @description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Course]" UpdateCommand="UPDATE [Course] SET [Course_Name] = @Course_Name, [description] = @description WHERE [course_id] = @original_course_id AND [Course_Name] = @original_Course_Name AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_course_id" Type="Int32" />
            <asp:Parameter Name="original_Course_Name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Course_Name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Course_Name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="original_course_id" Type="Int32" />
            <asp:Parameter Name="original_Course_Name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="row p-4">
        <div class="col-lg-12 ">
            <div class="table-responsive table-bordered">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="course_id" DataSourceID="SqlDataSource1" Height="50px" Width="608px" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemInserted="DetailsView1_ItemInserted">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="course_id" HeaderText="course_id" ReadOnly="True" SortExpression="course_id" InsertVisible="False" />
                        <asp:BoundField DataField="Course_Name" HeaderText="Subject" SortExpression="Course_Name" />
                        <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
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
</asp:Content>

