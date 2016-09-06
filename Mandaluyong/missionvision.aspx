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
    <div class="container" style="padding-bottom: 2em;">

        <!--mission and vision -->

        <div class="about-carousel wow fadeInLeft">
            <div id="myCarousel" class="carousel slide">
                <!-- carousel items -->
                <div class="carousel-inner">
                    <div class="active item">
                        <img src="img/mv/1.JPG" />
                        <div class="carousel-caption">
                            <p>
                                MANDALUYONG: EXCELLENCE IN NUTRITION PROGRAMS IMPLEMENTATION.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/mv/2.JPG" />
                        <div class="carousel-caption">
                            <p>
                                CHAMPIONING CHILDREN’S RIGHTS AND WELFARE BY PHILIPPINE RED CROSS – RIZAL CHAPTER TO MAYOR ABALOS.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/mv/3.JPG" />
                        <div class="carousel-caption">
                            <p>
                                MANDALUYONG CITED AS MOST BUSINESS FRIENDLY CITY IN THE PHILIPPINES.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/mv/4.JPG" />
                        <div class="carousel-caption">
                            <p>
                                MANDALUYONG CITY WINS 2013 NATIONAL KABALIKAT AWARD.
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

        <asp:SqlDataSource ID="CityMissionVisionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityMission], [strCityVision] FROM [tblCity]"></asp:SqlDataSource>
        <asp:FormView ID="CityMissionFormView" runat="server" DataSourceID="CityMissionVisionDataSource">
            <ItemTemplate>


                <div class="about wow fadeInRight">
                    <br />
                    <h2 class="text-center" style="text-shadow: 2px 2px 4px #949090; color: #383838">Mission</h2>
                    <br />
                    <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" />
                    <br />
                    <p style="font-size: 18px; text-align: justify; color: #2d2c2c">
                        <asp:Label ID="strCityMissionLabel" runat="server" Text='<%# Bind("strCityMission") %>' /></p>
                </div>

                <br />
                <hr />
                <br />
                <div class="about wow fadeInRight">
                    <h2 class="text-center" style="text-shadow: 2px 2px 4px #949090; color: #383838">Vision</h2>
                    <br />
                    <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" />
                    <br />
                    <p style="font-size: 18px; text-align: justify; color: #2d2c2c">
                        <asp:Label ID="strCityVisionLabel" runat="server" Text='<%# Bind("strCityVision") %>' /></p>
                </div>
                <br />

                </div>
        <!--mission and vision -->



            </ItemTemplate>
        </asp:FormView>
    </div>
    <!-- mission and vision goes here -->
</asp:Content>
