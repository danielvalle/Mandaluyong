<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceAnnouncement.aspx.cs" Inherits="Mandaluyong.MaintenanceAnnouncement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .no-gutter [class*="col-"] {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }
    </style>

    <div style="background-image: url('image/citylandscape1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;">



        <div class="breadcrumbs">
            <div class="container">
                <div class="row">
                    <div>
                        <h1>Maintenance - Announcements</h1>
                    </div>
                </div>
            </div>
        </div>


        <!--container start-->


        <div class="container">
            <br />
            <br />

            <div class="wow fadeInUp">
                <div class="col-lg-10 col-lg-offset-1">
                    <section class="panel" style="background-color: #ffffff; border-style: double; border-color: #48cfad;">
                        <header class="panel-heading" style="color: #ffffff">
                            <center><h4>Announcement Information</h4></center>
                        </header>
                        <div class="panel-body">
                            <br />

                            <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;">
                                <center>
                            <asp:Label font-size="24px" runat="server" CssClass="control-label col-md-12 col-sm-12"  >Announcement Name: </asp:Label>

                            <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 

                             <div class="col-md-12 col-sm-12"><br />
                            <asp:TextBox ID="txtAnnouncementName" CssClass="form-control" runat="server"></asp:TextBox><br /><br />
                            </div>
                        </center>
                            </div>

                            <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;">
                                <br />
                                <br />
                                <center>
                            <asp:Label font-size="24px" runat="server" CssClass="control-label col-md-12 col-sm-12"  >Announcement Details: </asp:Label>

                            <img class="img img-responsive" style="width: 30%; margin: auto" src="img/divider.png" /> 

                            <div class="col-md-12 col-sm-12"><br />
                            <asp:TextBox  style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" TextMode="MultiLine" Rows="4" ID="txtAnnouncementDetail" runat="server" CssClass="form-control" ></asp:TextBox><br /><br />
                        <!--      <asp:Label ID="lblAnnouncementEnd" runat="server" CssClass="control-label col-md-12 col-sm-12">End Date: </asp:Label><br />
                         <asp:TextBox runat="server" id="dtmAnnouncementEnd" CssClass="datetimepicker form-control" type="text" />  -->
                            </div>
                        </center>
                            </div>

                            <div class="col-lg-10 col-lg-offset-1">
                                <br />
                                <br />
                                <center>
                        <asp:Button id="btnAddAnnouncement" runat="server" class="btn btn-lg btn-login" type="submit" Text="Add" OnClick="AddAnnouncementButton_Click"/> <br /><br />
                    </center>
                            </div>

                            <script>
                                jQuery('.datetimepicker').datetimepicker();
                            </script>

                        </div>
                    </section>
                </div>
            </div>

        </div>

        <br />
        <br />
        <asp:SqlDataSource ID="AnnouncementDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>"
            DeleteCommand="UPDATE [tblAnnouncement] SET [intBoolIsActive] = 0 WHERE [intAnnouncementID] = @original_intAnnouncementID"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblAnnouncement] WHERE [intBoolIsActive] = 1 " UpdateCommand="UPDATE [tblAnnouncement] SET [strAnnouncementName] = @strAnnouncementName, [strAnnouncementDetail] = @strAnnouncementDetail WHERE [intAnnouncementID] = @original_intAnnouncementID">
            <DeleteParameters>
                <asp:Parameter Name="original_intAnnouncementID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="strAnnouncementName" Type="String" />
                <asp:Parameter Name="strAnnouncementDetail" Type="String" />
                <asp:Parameter Name="original_intAnnouncementID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="AnnouncementListView" runat="server" DataKeyNames="intAnnouncementID" DataSourceID="AnnouncementDataSource">
            <EditItemTemplate>


                <tr>
                    <td>
                        <asp:TextBox ID="strAnnouncementNameLabel" runat="server" Text='<%# Bind("strAnnouncementName") %>' />
                    </td>
                    <td>
                        <asp:TextBox Style="overflow-y: scroll; min-height: 150px; max-height: 100%; width: 100%!important" TextMode="MultiLine" Rows="6" ID="strAnnouncementDetailLabel" runat="server" Text='<%# Bind("strAnnouncementDetail") %>' />
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

                            
                                
                                <tr runat="server">
                                    <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                                </tr>
                        </table>


                    </div>
                </div>
            
            </EmptyDataTemplate>

            <ItemTemplate>


                <tr>
                    <td>
                        <asp:Label ID="strAnnouncementNameLabel" runat="server" Text='<%# Eval("strAnnouncementName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="strAnnouncementDetailLabel" runat="server" Text='<%# Eval("strAnnouncementDetail") %>' />
                    </td>
                    <td>
                        <asp:Button href="#myModal" ID="EditButton" runat="server" CssClass="btn btn-info btn-sm" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger btn-sm" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>

            </ItemTemplate>
            <LayoutTemplate>
                <center>
            
                <div class="container">

                    <div class="bs-example mar-b-30 wow fadeInUp">
                        

                                        <table id="itemPlaceholderContainer" class="table table-hover table-responsive" runat="server" border="1" style="background-color: #FFFFFF;  border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <thead style="color: #48cfad">
                                                <tr>
                                                    <th>Announcement Name</th>
                                                    <th>Description</th>
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
            </div>
            </center>
            </LayoutTemplate>
        </asp:ListView>
        <!--container end-->
    </div>
</asp:Content>
