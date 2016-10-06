<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceEvents.aspx.cs" Inherits="Mandaluyong.MaintenanceEvents" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        .no-gutter [class*="col-"] {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }
    </style>

    <div style="background-image:url('image/citylandscape1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;">

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
   
        <div class="container">
            
            <div class="wow fadeInUp">
                <div class="col-lg-10 col-lg-offset-1"><br /><br />
                   <section class="panel" style="background-color: #ffffff; border-style: double; border-color: #48cfad;">
                        <header class="panel-heading" style="color: #ffffff">
                            <center><h4>Event Information</h4></center>
                        </header>
                    <div class="panel-body"> <br />

                    <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                        <center>
                        <asp:Label font-size="24px" ID="strEventImage" runat="server" CssClass="control-label col-md-12 col-sm-12">Event Image: </asp:Label>

                              <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 
                      
                        <asp:FileUpload ID="EventImageFileUpload" CssClass="btn btn-login btn-sm" runat="server" /><br />
                        </center>
                    </div>


                    <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                        <center>
                        <asp:Label font-size="24px" ID="strEventNameLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strEventNameTextBox">Event Name: </asp:Label><br />

                             <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 

                        <div class="col-md-12 col-sm-12" style="text-align: center;"><br />
                            <asp:TextBox ID="strEventNameTextBox" CssClass="form-control" runat="server" /><br />
                        </div>
                        </center>
                    </div>


                    <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                        <center>
                        <asp:Label font-size="24px" ID="strEventDescLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strEventDescTextBox">Event Description: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">

                             <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 

                            <br />
                            <asp:TextBox Style="overflow-y: scroll; min-height: 150px; max-height: 100%; max-width: 100%" ID="strEventDescTextBox" TextMode="MultiLine" Columns="70" Rows="5" CssClass="form-control" runat="server" /><br />
                        </div>
                        </center>
                    </div>



                    <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                        <center>
                        <asp:Label font-size="24px" ID="lblEventStart" runat="server" CssClass="control-label col-md-12 col-sm-12">Start Date and Time: </asp:Label><br />

                         <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 

                        <div class="col-md-12 col-sm-12"><br />

                            <asp:TextBox runat="server" ID="dtmEventStart" CssClass="datetimepicker form-control" type="text" /><br />

                        </div>
                        </center>
                    </div>

                    <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                        <center>
                        <asp:Label font-size="24px" ID="lblEventEnd" runat="server" CssClass="control-label col-md-12 col-sm-12">End Date and Time: </asp:Label><br />

                         <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 

                        <div class="col-md-12 col-sm-12"><br />

                            <asp:TextBox runat="server" ID="dtmEventEnd" CssClass="datetimepicker form-control" type="text" /><br />

                        </div>
                        </center>
                    </div>

                    <script>
                        jQuery('.datetimepicker').datetimepicker();

                    </script>

                    <br />
                    <br />
                  <div class="col-lg-10 col-lg-offset-1"><br /><br />
                    <center>
                        <asp:Button id="btnAddEvent" runat="server" class="btn btn-lg btn-login" type="submit" Text="Add" OnClick="AddEventButton_Click"/>
                    </center>
                </div>

                        </div>
                    </section>
                </div>
            </div>
           
        </div>
    <br /><br />
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
                    <asp:TextBox  style="overflow-y:scroll; min-height:150px; max-height:100%; width:100%!important" TextMode="MultiLine" Rows="6" ID="strEventDetailsLabel" runat="server" Text='<%# Bind("strEventDetails") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dtmEventStartLabel"  runat="server" CssClass="datetimepicker form-control" Text='<%# Bind("dtmEventStart") %>' />
                </td>
                <td>
                    <asp:TextBox ID="dtmEventEndLabel"  runat="server" CssClass="datetimepicker form-control" Text='<%# Bind("dtmEventEnd") %>' />
                </td>
                <td>
                    <img id="strEventImagePathLabel" runat="server"  style="width:150px; height:150px" src='<%# Bind("strEventImagePath") %>' />
                </td>
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-info btn-sm" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-danger btn-sm" CommandName="Cancel" Text="Cancel" />              
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
                
                    <div class="container">

                        <div class="bs-example mar-b-30 wow fadeInUp">
                            
                                
                                    
                                            <table id="itemPlaceholderContainer" class="table table-hover table-responsive" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr>
                                                    <td>No data was returned.</td>
                                                </tr>
                                            </table>
  
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                                    </tr>
                                
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
                    <img id="strEventImagePathLabel" runat="server" width="150" height="150"  src='<%# Eval("strEventImagePath") %>' />
                </td>
                <td>
                    <asp:Button ID="EditButton" runat="server" CssClass="btn btn-info btn-sm" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger btn-sm" CommandName="Delete" Text="Delete" />              
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            
                <div class="container">

                    <div class="bs-example mar-b-30 wow fadeInUp">
                       
                            
                                   
                                        <table id="itemPlaceholderContainer" class="table table-hover table-responsive" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
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
                                    
                               
                        

                    </div>
                </div>
            
        </LayoutTemplate>
    </asp:ListView>
    <!--container end-->
        </div>
</asp:Content>
