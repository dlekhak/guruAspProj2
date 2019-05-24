<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <section id="contact">
        <div class="container">
            <h2 class="text-center text-uppercase text-secondary mb-0">FeedBack</h2>
            <hr class="star-dark mb-5">
            <div class="row">

                <div class="col-lg-8 mx-auto">
                    <div class="text-uppercase">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </div>
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Name</label>
                                <asp:TextBox ID="txtName" runat="server" type="text" class="form-control" name="name" value="" placeholder="Name"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" type="text" class="form-control" name="email" value="" placeholder="Email Address"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Phone Number</label>
                                <asp:TextBox ID="txtPhone" runat="server" type="text" class="form-control" name="phone" value="" placeholder="Phone Number"></asp:TextBox>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                <label>Message</label>
                                <textarea class="form-control" id="message" rows="5" placeholder="Message" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div>
                            <h6>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Your name is mandatory" ControlToValidate="txtName" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Your Email is mandatory" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Please enter valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="White"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Your phone number is mandatory" ViewStateMode="Disabled" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="Your level of study is mandatory" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter valid Email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="White"></asp:RegularExpressionValidator>
                            </h6>
                            <h6>Please tell us your level of study</h6>
                            <div class="text-success">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                    <asp:ListItem Value="Elementary">  Elementary</asp:ListItem>
                                    <asp:ListItem Value="Secondary">  Secondary</asp:ListItem>
                                    <asp:ListItem Value="College/University">  College/University</asp:ListItem>
                                </asp:RadioButtonList>
                                <br />
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn-primary" Height="36px" OnClick="Button1_Click" Width="112px" />

                            <br />
                            <br />
                        </div>
                        <div class="form-group btn-primary">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>



