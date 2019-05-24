<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="your_tutor" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <header class="jumbotron mx-5 pt-2">
        &nbsp;<p class="h3 align-content-center">
            Welcome to Guru Tutor. Find your local  
            Tutors by entering in your subject, level and postal code in the boxes below!
        </p>

    </header>

    <div class="container ">
        <div class="bg-secondary p-2">
            <div class="form-row">
                <div class="form-group col">
                    <label for="Course" class="text-light pl-2">Course:</label>
                    <asp:DropDownList ID="ddlSubject" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="Course_Name" DataValueField="course_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [course_id], [Course_Name] FROM [Course]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlSubject" Display="Dynamic" ErrorMessage="Please select your subject"></asp:RequiredFieldValidator>

                </div>

                <div class="form-group col">
                    <label for="Level" class="text-light pl-2">Level:</label>
                    <asp:DropDownList ID="ddlLevel" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="Level_name" DataValueField="Level_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Level_id], [Level_name] FROM [Level]"></asp:SqlDataSource>
                </div>

                <div class="form-group col">
                    <label for="postalCode" class="text-light pl-2">Postal Code:</label>
                    <asp:TextBox ID="txtPostalCode" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="form-group p-2">
                    <br />
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Search" />
                </div>
            </div>

        </div>

        <%--<div class="bg-info px-4">   --%>
        <div class="row">

            <div class="col-sm-12">
                <div class="card">
                    <h4 class="card-header bg-dark text-white">
                        <asp:Label ID="TutorNameLabel" runat="server" Text='<%# Eval("TutorName") %>' /></h4>
                    <div class="card-body">

                        <%--<h4 class="card-title">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TutorName") %>' /></h4>--%>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Tutor_id" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                            <AlternatingItemTemplate>
                                <span style="background-color: #FAFAD2; color: #284775;"><span class="text-hide">Tutor_id:</span>

                                    <asp:Label ID="Tutor_idLabel" runat="server" Text='<%# Eval("Tutor_id") %>' />
                                    <br />
                                    <strong>TutorName:</strong>
                                    <asp:Label ID="TutorNameLabel" runat="server" Text='<%# Eval("TutorName") %>' />
                                    <br />
                                    <strong>PhoneNumber:</strong>
                                    <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                                    <br />
                                    <strong>Email:</strong>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                    <br />
                                    <strong>Availability:</strong>
                                    <asp:Label ID="Tutor_availabilityLabel" runat="server" Text='<%# Eval("Tutor_availability") %>' />
                                    <br />
                                    <strong>PersonalDescription:</strong>
                                    <asp:Label ID="PersonalDescriptionLabel" runat="server" Text='<%# Eval("PersonalDescription") %>' />
                                    <br />
                                    <strong>ExperienceDescription:</strong>
                                    <asp:Label ID="ExperienceDescriptionLabel" runat="server" Text='<%# Eval("ExperienceDescription") %>' />

                                    <br />
                                    <strong>Street:</strong>
                                    <asp:Label ID="streetLabel" runat="server" Text='<%# Eval("street") %>' />
                                    <br />
                                    <strong>City:</strong>
                                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                                    <br />
                                    <strong>State:</strong>
                                    <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                                    <br />
                                    <strong>Postal Code:</strong>
                                    <asp:Label ID="zipLabel" runat="server" Text='<%# Eval("zip") %>' />
                                    <br />
                                    <span class="text-hide">Level_id:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Level_id") %>' />
                                        <br />
                                        Course_id:
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Course_id") %>' />
                                        <br />
                                        <br />
                                    </span></span>
                            </AlternatingItemTemplate>

                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <span style="">TutorName:
                        <asp:TextBox ID="TutorNameTextBox" runat="server" Text='<%# Bind("TutorName") %>' />
                                    <br />
                                    Phone Number:
                        <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                                    <br />
                                    Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                    <br />
                                    Availability:
                        <asp:TextBox ID="Tutor_availabilityTextBox" runat="server" Text='<%# Bind("Tutor_availability") %>' />
                                    <br />
                                    Personal Description:
                        <asp:TextBox ID="PersonalDescriptionTextBox" runat="server" Text='<%# Bind("PersonalDescription") %>' />
                                    <br />
                                    Experience:
                        <asp:TextBox ID="ExperienceDescriptionTextBox" runat="server" Text='<%# Bind("ExperienceDescription") %>' />
                                    <br />
                                    <span class="text-hide">Level_id:
                        <asp:TextBox ID="Level_idTextBox" runat="server" Text='<%# Bind("Level_id") %>' />

                                        <br />
                                        Course_id:
                        <asp:TextBox ID="Course_idTextBox" runat="server" Text='<%# Bind("Course_id") %>' />
                                    </span>
                                    <br />
                                    Street:
                        <asp:TextBox ID="streetTextBox" runat="server" Text='<%# Bind("street") %>' />
                                    <br />
                                    City:
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                    <br />
                                    Province:
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                                    <br />
                                    Postal Code:
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                    <br />
                                    <br />
                                </span>
                            </InsertItemTemplate>
                            <ItemTemplate>

                                <span class="text-secondary"><span class="text-hide">Tutor_id:
                                    
                                    <asp:Label ID="Tutor_idLabel" runat="server" Text='<%# Eval("Tutor_id") %>' hidden="hidden" />
                                </span>
                                    <br />
                                    <strong>Tutor Name:</strong>
                                    <asp:Label ID="TutorNameLabel" runat="server" Text='<%# Eval("TutorName") %>' />
                                    <br />
                                    <strong>Phone Number:</strong>
                                    <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                                    <br />
                                    <strong>Email:</strong>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                    <br />
                                    <strong>Tutor Availability:</strong>
                                    <asp:Label ID="Tutor_availabilityLabel" runat="server" Text='<%# Eval("Tutor_availability") %>' />
                                    <br />
                                    <strong>Personal Description:</strong>
                                    <asp:Label ID="PersonalDescriptionLabel" runat="server" Text='<%# Eval("PersonalDescription") %>' />
                                    <br />
                                    <strong>Experience:</strong>
                                    <asp:Label ID="ExperienceDescriptionLabel" runat="server" Text='<%# Eval("ExperienceDescription") %>' />
                                    <br />
                                    <strong>Street:</strong>
                                    <asp:Label ID="streetLabel" runat="server" Text='<%# Eval("street") %>' />
                                    <br />
                                    <strong>City:</strong>
                                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                                    <br />
                                    <strong>Province:</strong>
                                    <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                                    <br />
                                    <strong>Postal Code:</strong>
                                    <asp:Label ID="zipLabel" runat="server" Text='<%# Eval("zip") %>' />
                                    <br />
                                    <span class="text-hide">Level_id:
                        <asp:Label ID="Level_idLabel" runat="server" Text='<%# Eval("Level_id") %>' hidden="hidden" />
                                        <br />
                                        Course_id:
                        <asp:Label ID="Course_idLabel" runat="server" Text='<%# Eval("Course_id") %>' hidden="hidden" />
                                    </span>
                                    <br />

                                    <br />
                                </span>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <span class="text-hide">
                                    <span style="background-color: #FFCC66; font-weight: bold; color: #000080;">Tutor_id:
                        <asp:Label ID="Tutor_idLabel" runat="server" Text='<%# Eval("Tutor_id") %>' /></span>
                                    <br />
                                    Tutor Name:
                        <asp:Label ID="TutorNameLabel" runat="server" Text='<%# Eval("TutorName") %>' />
                                    <br />
                                    Phone Number:
                        <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                                    <br />
                                    Email:
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                    <br />
                                    Availability:
                        <asp:Label ID="Tutor_availabilityLabel" runat="server" Text='<%# Eval("Tutor_availability") %>' />
                                    <br />
                                    Personal Description:
                        <asp:Label ID="PersonalDescriptionLabel" runat="server" Text='<%# Eval("PersonalDescription") %>' />
                                    <br />
                                    Experience
                        <asp:Label ID="ExperienceDescriptionLabel" runat="server" Text='<%# Eval("ExperienceDescription") %>' />
                                    <br />
                                    Level_id:
                        <asp:Label ID="Level_idLabel" runat="server" Text='<%# Eval("Level_id") %>' />
                                    <br />
                                    Course_id:
                        <asp:Label ID="Course_idLabel" runat="server" Text='<%# Eval("Course_id") %>' />
                                    <br />
                                    Street:
                        <asp:Label ID="streetLabel" runat="server" Text='<%# Eval("street") %>' />
                                    <br />
                                    City:
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                                    <br />
                                    Province:
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                                    <br />
                                    Postal Code:
                        <asp:Label ID="zipLabel" runat="server" Text='<%# Eval("zip") %>' />
                                    <br />
                                    <br />
                                </span>
                            </SelectedItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Tutor] WHERE (([Course_id] = @Course_id) AND ([Level_id] = @Level_id) AND ([zip] like @zip + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSubject" Name="Course_id" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="ddlLevel" Name="Level_id" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="txtPostalCode" Name="zip" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <hr />
    <p class="lead">
        Guru tutor will give you access to the most diverse range of tutors 
                across GTA. Use our website to browse through the profiles of the best private
                tutors available to you for home tutoring, private tuition and online tutoring. We profile Canadian private tutors
                who deliver private tuition in a number 
                of academic subjects including Math tutoring and English tutoring, in addition to Science 
                and Information Technology amongst many more!!.
                Our website will search for the best and most recommended tutors online, 
                finding you all the private tutors and home tutors near you!
    </p>
    <hr />
</asp:Content>

