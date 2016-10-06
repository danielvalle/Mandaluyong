<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceCityLogo.aspx.cs" Inherits="Mandaluyong.MaintenanceCityLogo" %>



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
                        <h1>Maintenance - City Logo</h1>
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
                                <center><h4>City Logo</h4></center>
                            </header>

                            <div class="panel-body">

                                <div class="col-lg-8 col-lg-offset-2">
                                    <center>
                                <div >
                                    <asp:Label font-size="24px" ID="strCityLogoLabel" runat="server" CssClass="control-label col-md-12 col-sm-12"  AssociatedControlID="CityLogo">City Logo: </asp:Label>
                       
                                </div>

                                    <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> <br />
                 
                                
                                    <asp:Image ID="CityLogo" runat="server" CssClass="img img-thumbnail img-responsive"/><br /><br />
                                    <asp:Button ID="btnUploadLogo" Text="Upload Image" CssClass="btn btn-success" runat="server" />
                                    <asp:FileUpload ID="strCityLogoFileUpload" CssClass="btn btn-login btn-sm" runat="server" /><br />
                              
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
