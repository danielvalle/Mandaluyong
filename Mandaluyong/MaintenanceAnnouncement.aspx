<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceAnnouncement.aspx.cs" Inherits="Mandaluyong.MaintenanceAnnouncement" %>


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

            <div class="form-signin wow fadeInUp">
                <h2 class="form-signin-heading">Announcement</h2>
                <div class="login-wrap">
                    <p>Enter Announcement Information</p>

                  
                    <asp:TextBox id="txtAnnouncementName" runat="server" CssClass="form-control" placeholder="Announcement Name"></asp:TextBox>
                    <asp:TextBox id="txtAnnouncementDetail" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Announcement Description"></asp:TextBox><br />
                    <br />
                    <br />
                    <center>
                        <asp:Button id="btnAddAnnouncement" runat="server" class="btn btn-lg btn-login" type="submit" Text="Add" OnClick="AddAnnouncementButton_Click"/>
                    </center>


                </div>
            </div>

        </div>
    </div>
    <!--container end-->

</asp:Content>
