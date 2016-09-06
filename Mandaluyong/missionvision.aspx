<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MissionVision.aspx.cs" Inherits="Mandaluyong.MissionVision" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--breadcrumbs start-->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Mandaluyong City - Mission and Vision</h1>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs end-->


    <!-- mission and vision goes here -->
    <div class="container" style="padding-bottom: 2em; ">

        <!--mission and vision -->
        <div class="row">
            <div class="col-lg-5">
                <div class="about-carousel wow fadeInLeft">
                    <div id="myCarousel" class="carousel slide">
                        <!-- carousel items -->
                        <div class="carousel-inner">
                            <div class="active item">
                                <img src="img/carousel1.jpg" alt="" />
                                <div class="carousel-caption">
                                    <p>
                                        Nightscape
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <img src="img/carousel2.jpg" alt="" />
                                <div class="carousel-caption">
                                    <p>
                                        Paskuhan at Mandaluyong
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <img src="img/carousel4.jpg" alt="" />
                                <div class="carousel-caption">
                                    <p>
                                        Mandaluyong City
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- carousel items -->

                        <!--carousel navigation -->
                        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="carousel-control right" href="#myCarousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                        <!--carousel navigation -->
                    </div>
                </div>
            </div>
            <asp:SqlDataSource ID="CityMissionVisionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityMission], [strCityVision] FROM [tblCity]"></asp:SqlDataSource>
            <asp:FormView ID="CityMissionFormView" runat="server" DataSourceID="CityMissionVisionDataSource">
                <ItemTemplate>

                    <div class="col-lg-7 about wow fadeInRight">
                        <h2>Mission</h2>

                        <asp:Label ID="strCityMissionLabel" runat="server" Text='<%# Bind("strCityMission") %>' />
                    </div>

                    <div class="col-lg-7 about wow fadeInRight">
                        <h2>Vision</h2>

                        <asp:Label ID="strCityVisionLabel" runat="server" Text='<%# Bind("strCityVision") %>' />
                    </div>
                    <br />

                    </div>
        <!--mission and vision -->



                </ItemTemplate>
            </asp:FormView>



        </div>

    </div>

    <!-- mission and vision goes here -->
</asp:Content>
