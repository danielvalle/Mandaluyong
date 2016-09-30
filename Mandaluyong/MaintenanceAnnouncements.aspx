<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceAnnouncements.aspx.cs" Inherits="Mandaluyong.adannounce" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

    <div class="registration-bg">
        <div class="container">

            <div class="col-md-2"></div>

            <div class="form-signin wow fadeInUp col-md-8">
                <h2 class="form-signin-heading">Announcement</h2>
                <div class="login-wrap">
                    <p>Enter Announcement Information</p>


                    <div class="form-group">
                        <asp:Label ID="strAnnouncementNameLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strAnnouncementNameTextBox">Announcement Name: </asp:Label><br />
                        <div class="col-md-12 col-sm-12" style="text-align: center;">
                            <asp:TextBox ID="strAnnouncementNameTextBox" CssClass="form-control" runat="server" /><br />
                        </div>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="strAnnouncementDescLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strAnnouncementDescTextbox">Announcement Description: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">
                            <asp:TextBox Style="overflow-y: scroll; min-height: 150px; max-height: 100%; max-width: 100%" ID="strAnnouncementDescTextBox" TextMode="MultiLine" Columns="70" Rows="5" CssClass="form-control" runat="server" Text='<%# Bind("strCityVision") %>' /><br />
                        </div>
                    </div>



                    <div class="form-group">
                        <asp:Label ID="dtmAnnouncement" runat="server" CssClass="control-label col-md-12 col-sm-12">Announcement Date and Time: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">

                            <input id="datetimepicker" class="form-control" type="text" />

                        </div>
                    </div>

                    <script>
                        jQuery('#datetimepicker').datetimepicker();

                    </script>


                    <br />
                    <br />
                    <center><button class="btn btn-lg btn-login type="submit">Add</button>
                    <button class="btn btn-lg btn-login type="submit">Save</button></center>


                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <!--container end-->

</asp:Content>
