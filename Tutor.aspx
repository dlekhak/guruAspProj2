<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tutor.aspx.cs" Inherits="Tutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tutor] WHERE [Tutor_id] = @original_Tutor_id AND (([TutorName] = @original_TutorName) OR ([TutorName] IS NULL AND @original_TutorName IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND [Email] = @original_Email AND (([Tutor_availability] = @original_Tutor_availability) OR ([Tutor_availability] IS NULL AND @original_Tutor_availability IS NULL)) AND (([PersonalDescription] = @original_PersonalDescription) OR ([PersonalDescription] IS NULL AND @original_PersonalDescription IS NULL)) AND (([ExperienceDescription] = @original_ExperienceDescription) OR ([ExperienceDescription] IS NULL AND @original_ExperienceDescription IS NULL)) AND [Level_id] = @original_Level_id AND [Course_id] = @original_Course_id AND (([street] = @original_street) OR ([street] IS NULL AND @original_street IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND [state] = @original_state AND (([zip] = @original_zip) OR ([zip] IS NULL AND @original_zip IS NULL))" InsertCommand="INSERT INTO [Tutor] ([TutorName], [PhoneNumber], [Email], [Tutor_availability], [PersonalDescription], [ExperienceDescription], [Level_id], [Course_id], [street], [city], [state], [zip]) VALUES (@TutorName, @PhoneNumber, @Email, @Tutor_availability, @PersonalDescription, @ExperienceDescription, @Level_id, @Course_id, @street, @city, @state, @zip)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tutor]"
        UpdateCommand="UPDATE [Tutor] SET [TutorName] = @TutorName, [PhoneNumber] = @PhoneNumber, [Email] = @Email, [Tutor_availability] = @Tutor_availability, [PersonalDescription] = @PersonalDescription, [ExperienceDescription] = @ExperienceDescription, [Level_id] = @Level_id, [Course_id] = @Course_id, [street] = @street, [city] = @city, [state] = @state, [zip] = @zip WHERE [Tutor_id] = @original_Tutor_id AND (([TutorName] = @original_TutorName) OR ([TutorName] IS NULL AND @original_TutorName IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND [Email] = @original_Email AND (([Tutor_availability] = @original_Tutor_availability) OR ([Tutor_availability] IS NULL AND @original_Tutor_availability IS NULL)) AND (([PersonalDescription] = @original_PersonalDescription) OR ([PersonalDescription] IS NULL AND @original_PersonalDescription IS NULL)) AND (([ExperienceDescription] = @original_ExperienceDescription) OR ([ExperienceDescription] IS NULL AND @original_ExperienceDescription IS NULL)) AND [Level_id] = @original_Level_id AND [Course_id] = @original_Course_id AND (([street] = @original_street) OR ([street] IS NULL AND @original_street IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND [state] = @original_state AND (([zip] = @original_zip) OR ([zip] IS NULL AND @original_zip IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Tutor_id" Type="Int32" />
            <asp:Parameter Name="original_TutorName" Type="String" />
            <asp:Parameter Name="original_PhoneNumber" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Tutor_availability" Type="String" />
            <asp:Parameter Name="original_PersonalDescription" Type="String" />
            <asp:Parameter Name="original_ExperienceDescription" Type="String" />
            <asp:Parameter Name="original_Level_id" Type="Int32" />
            <asp:Parameter Name="original_Course_id" Type="Int32" />
            <asp:Parameter Name="original_street" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_state" Type="String" />
            <asp:Parameter Name="original_zip" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TutorName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Tutor_availability" Type="String" />
            <asp:Parameter Name="PersonalDescription" Type="String" />
            <asp:Parameter Name="ExperienceDescription" Type="String" />
            <asp:Parameter Name="Level_id" Type="Int32" />
            <asp:Parameter Name="Course_id" Type="Int32" />
            <asp:Parameter Name="street" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TutorName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Tutor_availability" Type="String" />
            <asp:Parameter Name="PersonalDescription" Type="String" />
            <asp:Parameter Name="ExperienceDescription" Type="String" />
            <asp:Parameter Name="Level_id" Type="Int32" />
            <asp:Parameter Name="Course_id" Type="Int32" />
            <asp:Parameter Name="street" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="String" />
            <asp:Parameter Name="original_Tutor_id" Type="Int32" />
            <asp:Parameter Name="original_TutorName" Type="String" />
            <asp:Parameter Name="original_PhoneNumber" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Tutor_availability" Type="String" />
            <asp:Parameter Name="original_PersonalDescription" Type="String" />
            <asp:Parameter Name="original_ExperienceDescription" Type="String" />
            <asp:Parameter Name="original_Level_id" Type="Int32" />
            <asp:Parameter Name="original_Course_id" Type="Int32" />
            <asp:Parameter Name="original_street" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_state" Type="String" />
            <asp:Parameter Name="original_zip" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div class="row p-4">
        <div class="col-lg-12 ">
            <div class="table-responsive table-bordered">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                    DataKeyNames="Tutor_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1273px" Height="100px" OnRowDeleted="GridView1_RowDeleted">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Tutor_id" HeaderText="Tutor_id" ReadOnly="True" SortExpression="Tutor_id" />
                        <asp:BoundField DataField="TutorName" HeaderText="Tutor Name" SortExpression="TutorName" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Tutor_availability" HeaderText="Availability" SortExpression="Tutor_availability" />
                        <asp:BoundField DataField="PersonalDescription" HeaderText="Personal Description" SortExpression="PersonalDescription" />
                        <asp:BoundField DataField="ExperienceDescription" HeaderText="Experience" SortExpression="ExperienceDescription" />
                        <asp:BoundField DataField="Level_id" HeaderText="Level_id" SortExpression="Level_id" />
                        <asp:BoundField DataField="Course_id" HeaderText="Course_id" SortExpression="Course_id" />


                        <asp:BoundField DataField="street" HeaderText="Street" SortExpression="street" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="Province" SortExpression="state" />
                        <asp:BoundField DataField="zip" HeaderText="Postal Code" SortExpression="zip" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
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
    <p>&nbsp;</p>

    <div class="row p-4">
        <div class="col-lg-12 ">
            <div class="table-responsive table-bordered">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Tutor_id" DataSourceID="SqlDataSource1" Height="50px" Width="583px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnItemInserted="DetailsView1_ItemInserted">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="Tutor_id" HeaderText="Tutor_id" ReadOnly="True" SortExpression="Tutor_id" InsertVisible="False" Visible="false" />
                        <asp:BoundField DataField="TutorName" HeaderText="TutorName" SortExpression="TutorName" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Tutor_availability" HeaderText="Tutor_availability" SortExpression="Tutor_availability" />
                        <asp:BoundField DataField="PersonalDescription" HeaderText="PersonalDescription" SortExpression="PersonalDescription" />
                        <asp:BoundField DataField="ExperienceDescription" HeaderText="ExperienceDescription" SortExpression="ExperienceDescription" />
                        <asp:BoundField DataField="Level_id" HeaderText="Level_id" SortExpression="Level_id" />

                        <asp:BoundField DataField="Course_id" HeaderText="Course_id" SortExpression="Course_id" />

                        <asp:BoundField DataField="street" HeaderText="street" SortExpression="street" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                        <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
            </div>
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>

