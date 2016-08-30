<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="missionvision.aspx.cs" Inherits="Mandaluyong.missionvision" %>


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
    <div class="container"  style="padding-bottom: 2em">

        <!--mission -->
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

            <div class="col-lg-7 about wow fadeInRight">
                <h2>Mission</h2>

                <h4>
                    To protect and promote the right of every Filipino to quality, equitable, culture-based and complete basic education where:               
                </h4>
                <ul class="list-unstyled">
                    <li>
                        <i class="fa fa-angle-right pr-10"></i>
                        Students learn in a child-friendly, gender -sensitive, safe, and motivating environment.</li>

                    <li>
                        <i class="fa fa-angle-right pr-10"></i>
                        Teachers facilitate learning and constantly nurture every learner.</li>

                    <li>
                        <i class="fa fa-angle-right pr-10"></i>
                        Administrators and Staff, as stewards of the institution, ensure an enabling and supportive environment for effective learning to happen.</li>

                    <li>
                        <i class="fa fa-angle-right pr-10"></i>
                        Family, community, and other stakeholders are actively engaged and share responsibility for developing life-long learners.</li>

                </ul>

            </div>
        </div>
        <!--mission -->

        <!-- vision -->
        <div class="row">
            <div class="col-lg-5"></div>
            <div class="col-lg-7 about wow fadeInRight">
                <h2>Vision</h2>

                <h4>
                    We dream of Filipinos who passionately love their country and whose competencies and values enable them to realize their full potential and contribute meaningfully to building the nation.
                </h4>
                <h4>
                    As a learner-centered public institution, the Department of Education continuously improves itself to better serve its stakeholders.
                </h4>

            </div>



        </div>



        <!-- vision -->


    </div>



    <!-- mission and vision goes here -->

</asp:Content>
