<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceEvents.aspx.cs" Inherits="Mandaluyong.MaintenanceEvents" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Maintenance - Events</h1>
                </div>
            </div>
        </div>
    </div>

    <!--container start-->
    <div class="registration-bg">
        <div class="container">
            <div class="col-md-2"></div>
            <div class="form-signin wow fadeInUp col-md-8">
                <h2 class="form-signin-heading">Events</h2>
                <div class="login-wrap">
                    <p>Enter Event Information</p>

                    <div class="form-group">
                        <asp:Label ID="strEventImage" runat="server" CssClass="control-label col-md-12 col-sm-12">Event Image: </asp:Label>
                        &nbsp;
                        <asp:FileUpload ID="EventImageFileUpload" CssClass="btn btn-login btn-sm" runat="server" /><br />
                    </div>


                    <div class="form-group">
                        <asp:Label ID="strEventNameLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strEventNameTextBox">Event Name: </asp:Label><br />
                        <div class="col-md-12 col-sm-12" style="text-align: center;">
                            <asp:TextBox ID="strEventNameTextBox" CssClass="form-control" runat="server" /><br />
                        </div>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="strEventDescLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strEventDescTextBox">Event Description: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">
                            <asp:TextBox Style="overflow-y: scroll; min-height: 150px; max-height: 100%; max-width: 100%" ID="strEventDescTextBox" TextMode="MultiLine" Columns="70" Rows="5" CssClass="form-control" runat="server" /><br />
                        </div>
                    </div>



                    <div class="form-group">
                        <asp:Label ID="lblEventStart" runat="server" CssClass="control-label col-md-12 col-sm-12">Start Date and Time: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">

                            <asp:TextBox runat="server" ID="dtmEventStart" CssClass="datetimepicker form-control" type="text" />

                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblEventEnd" runat="server" CssClass="control-label col-md-12 col-sm-12">End Date and Time: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">

                            <asp:TextBox runat="server" ID="dtmEventEnd" CssClass="datetimepicker form-control" type="text" />

                        </div>
                    </div>

                    <script>
                        jQuery('.datetimepicker').datetimepicker();

                    </script>

                    <br />
                    <br />
                    <center>
                        <asp:Button id="btnAddEvent" runat="server" class="btn btn-lg btn-login" type="submit" Text="Add" OnClick="AddEventButton_Click"/>
                    </center>


                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <asp:SqlDataSource ID="EventsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" 
        DeleteCommand="UPDATE [tblEvent] SET [intBoolIsActive] = 0 WHERE [intEventID] = @original_intEventID" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [tblEvent] WHERE intBoolIsActive = 1" 
        UpdateCommand="UPDATE [tblEvent] SET [strEventName] = @strEventName, [strEventDetails] = @strEventDetails, [dtmEventStart] = @dtmEventStart, [dtmEventEnd] = @dtmEventEnd, [strEventImagePath] = @strEventImagePath WHERE [intEventID] = @original_intEventID">
        <DeleteParameters>
            <asp:Parameter Name="original_intEventID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="strEventName" Type="String" />
            <asp:Parameter Name="strEventDetails" Type="String" />
            <asp:Parameter Name="dtmEventStart" Type="DateTime" />
            <asp:Parameter Name="dtmEventEnd" Type="DateTime" />
            <asp:Parameter Name="strEventImagePath" Type="String" />
            <asp:Parameter Name="original_intEventID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="EventsListView" runat="server" DataKeyNames="intEventID" DataSourceID="EventsDataSource">
        <EditItemTemplate>
            <tr>
                <td>
                    <asp:TextBox ID="strEventNameLabel" runat="server" Text='<%# Bind("strEventName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="strEventDetailsLabel" runat="server" Text='<%# Bind("strEventDetails") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dtmEventStartLabel" runat="server" Text='<%# Bind("dtmEventStart") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dtmEventEndLabel" runat="server" Text='<%# Bind("dtmEventEnd") %>' />
                </td>
                <td>
                    <img ID="strEventImagePathLabel" runat="server" src='<%# Bind("strEventImagePath") %>' />
                </td>
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-info btn-sm" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-danger btn-sm" CommandName="Cancel" Text="Cancel" />              
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
                <div class="registration-bg">
                    <div class="container">

                        <div class="bs-example mar-b-30 wow fadeInUp">
                            <div class="table-responsive">
                                <table runat="server" class="table table-hover table-bordered ">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr>
                                                    <td>No data was returned.</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                                    </tr>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="strEventNameLabel" runat="server" Text='<%# Eval("strEventName") %>' />
                </td>
                <td>
                    <asp:Label ID="strEventDetailsLabel" runat="server" Text='<%# Eval("strEventDetails") %>' />
                </td>
                <td>
                    <asp:Label ID="dtmEventStartLabel" runat="server" Text='<%# Eval("dtmEventStart") %>' />
                </td>
                <td>
                    <asp:Label ID="dtmEventEndLabel" runat="server" Text='<%# Eval("dtmEventEnd") %>' />
                </td>
                <td>
                    <img ID="strEventImagePathLabel" runat="server" src='<%# Eval("strEventImagePath") %>' />
                </td>
                <td>
                    <asp:Button ID="EditButton" runat="server" CssClass="btn btn-info btn-sm" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger btn-sm" CommandName="Delete" Text="Delete" />              
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="registration-bg">
                <div class="container">

                    <div class="bs-example mar-b-30 wow fadeInUp">
                        <div class="table-responsive">
                            <table runat="server" class="table table-hover table-bordered ">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <thead style="color: #48cfad">
                                                <tr>
                                                    <th>Event Name</th>
                                                    <th>Description</th>
                                                    <th>Start Time</th>
                                                    <th>End Time</th>
                                                    <th>Event Image</th>
                                                    <th>Action</th>
                                                </tr>
                                                <tbody>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </tbody>
                                            </thead>
                                            <tr>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <!--container end-->

</asp:Content>
