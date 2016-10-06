<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceCityBanner.aspx.cs" Inherits="Mandaluyong.MaintenanceCityBanner" %>



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
                        <h1>Maintenance - City Banner</h1>
                    </div>
                </div>
            </div>
        </div>

        <div id="itemPlaceholderContainer" runat="server">
            <div class="container">

                <div class="wow fadeInUp">
                    <div class="col-lg-10 col-lg-offset-1">

                        <section class="panel" style="background-color: #ffffff; border-style: double; border-color: #48cfad;">
                            <header class="panel-heading" style="color: #ffffff">
                                <center><h4>City Banner</h4></center>
                            </header>

                            <div class="panel-body">

                                <div class="col-lg-8 col-lg-offset-2">
                                    <center>
                                <div >
                                    <asp:Label font-size="24px" ID="strCityBannerLabel" runat="server" CssClass="control-label" AssociatedControlID="strCityBannerLabel">City Banner: </asp:Label>
                       
                                </div>

                                    <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /><br />

                                    <asp:Image ID="CityBanner" runat="server" CssClass="img img-thumbnail img-responsive"/><br /><br />
                                    <asp:Button ID="btnUploadBanner" Text="Upload Image" CssClass="btn btn-success" runat="server"/>
                                    <asp:FileUpload ID="strCityBannerFileUpload" CssClass="btn btn-login btn-sm" runat="server" /><br />
                              
                                </center>
                                </div>

                            </div>
                        </section>
                    </div>
                </div>
            </div>


        </div>
        <div style="height:120px"></div>

</asp:Content>