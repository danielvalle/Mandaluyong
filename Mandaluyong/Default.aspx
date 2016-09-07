<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mandaluyong.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Sequence Modern Slider -->
    <div id="da-slider" class="da-slider">

        <div class="da-slide">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2 style="padding-top: 8%">
                            <i>MANDALUYONG IS A CITY</i>
                            <br>
                            <i>THAT LIES AT THE HEART</i>
                            <br>
                            <i>OF METROPOLITAN MANILA</i>
                        </h2>


                        <div class="da-img">
                            <img src="img/p1.png" class="img-responsive" style="height: 300px" alt="image01" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="da-slide">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2 style="padding-top: 8%">
                            <i>MANDALUYONG CITY HAS</i>
                            <br />
                            <i>LOTS OF STORIES</i>
                            <br />
                            <i>TO TELL.</i>
                        </h2>

                        <div class="da-img">
                            <img src="img/p2.png" class="img-responsive" alt="image01" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="da-slide">
            <div class="container">
                <div class="row">
                    <div class="col-md-12" text-center>
                        <h2 style="padding-top: 8%">
                            <i>MANDALUYONG HAS ITS OWN</i>
                            </br>
          <i>SHARE OF COMMERCIAL STRIPS</i>
                            </br>
          <i>AND A CENTRAL BUSINESS</i>
                        </h2>

                        <div class="da-img">
                            <img src="img/p3.png" class="img-responsive" alt="image01" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>
        </nav>
    </div>

    <!-- Sequence Modern Slider -->



    <div class="container">
        <div class="row mar-b-50">
            <div class="col-md-12">
                <div class="text-center feature-head wow fadeInDown">
                    <h1 class="">Welcome to the City of Mandaluyong
                    </h1>

                </div>


                <div class="feature-box">
                    <div class="col-md-4 col-sm-4 text-center wow fadeInUp">
                        <div class="feature-box-heading">
                            <em>
                                <img src="img/1.png" alt="" width="100" height="100">
                            </em>
                            <h4>
                                <b>Area</b>
                            </h4>
                        </div>
                        <p class="text-center">
                            Mandaluyong has a total land area of 1,124.97 hectares.
                        </p>
                    </div>
                    <div class="col-md-4 col-sm-4 text-center wow fadeInUp">
                        <div class="feature-box-heading">
                            <em>
                                <img src="img/2.png" alt="" width="100" height="100">
                            </em>
                            <h4>
                                <b>Campaign</b>
                            </h4>
                        </div>
                        <p class="text-center">
                            Mandaluyong intensifies campaign against illegal.
                        </p>
                    </div>
                    <div class="col-md-4 col-sm-4 text-center wow fadeInUp">
                        <div class="feature-box-heading">
                            <em>
                                <img src="img/3.png" alt="" width="100" height="100">
                            </em>
                            <h4>
                                <b>Updates</b>
                            </h4>
                        </div>
                        <p class="text-center">
                            The City of Mandaluyong is always updated 24 hours.
                        </p>
                    </div>
                </div>

                <!--feature end-->
            </div>

        </div>

            <div>
        <asp:SqlDataSource ID="CityInformationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityName], [strCityLogo], [strCityBanner] FROM [tblCity]"></asp:SqlDataSource>
        <asp:ListView ID="CityInformationListView" runat="server" DataSourceID="CityInformationDataSource">
            <ItemTemplate>
                <img class="img img-responsive" src='<%# Eval("strCityBanner") %>' alt="" style="text-align: center" />
            </ItemTemplate>
        </asp:ListView>

    </div>

    </div>



    <!--property start-->
    <div class="property gray-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-6 text-center wow fadeInLeft">
                    <img src="img/banner.jpg" style="height: 400px; width: 500px" alt="">
                </div>
                <div class="col-lg-6 col-sm-6 wow fadeInRight">
                    <h1>Mandaluyong Travel Guide
                    </h1>
                    <hr>
                    <p>
                        <i class="fa fa-check fa-lg pr-10"></i>
                        Mandaluyong has several places of interest that tourists and visitors can see while in the city. These include memorials, parks and recreation facilities, government institutions, and religious structures.
                    </p>
                    <p>
                        <i class="fa fa-check fa-lg pr-10"></i>
                        But what Mandaluyong really has to offer its guests are world-class accommodations, shopping and entertainment, including an internationally renowned golf course, as well as a vibrant nightlife.
                    </p>
                    <p>
                        <i class="fa fa-check fa-lg pr-10"></i>
                        Because the city is home to several trade halls and convention facilities, coupled with moderate to deluxe accommodations, Mandaluyong is also becoming the venue of choice for holding events such as seminars and conferences, trade fairs and exhibitions, as well as festivals and other socials.
                    </p>
                    <hr>
                    <a href="javascript:;" class="btn btn-purchase">See Gallery 
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!--property end-->

    <!--announcements and officials-->

    <div class="container">

        <div class="row mar-b-60">
            <div class="col-lg-6">
                <!--tab start-->
                <section class="tab wow fadeInLeft">
                    <header class="panel-heading tab-bg-dark-navy-blue">
                        <ul class="nav nav-tabs nav-justified ">
                            <li class="active">
                                <a data-toggle="tab" href="#news">News
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#events">Events
                                </a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" href="#notice-board">Announcements
                                </a>
                            </li>
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content tasi-tab">
                            <div id="news" class="tab-pane fade in active">
                                <article class="media">
                                    <a class="pull-left thumb p-thumb">
                                        <img src="img/product1.jpg" alt="">
                                    </a>
                                    <div class="media-body b-btm">
                                        <a href="#" class=" p-head">MANDALUYONG INTENSIFIES CAMPAIGN AGAINST ILLEGAL DRUGS
                                        </a>
                                        <p>
                                            Mandaluyong City Mayor Carmelita Abalos intensifies campaign against illegal...
                                        </p>
                                    </div>
                                </article>
                                <article class="media">
                                    <a class="pull-left thumb p-thumb">
                                        <img src="img/product2.jpg" alt="">
                                    </a>
                                    <div class="media-body b-btm">
                                        <a href="#" class=" p-head">CHILD-FRIENDLY SPACE AT MANPOWER.
                                        </a>
                                        <p>
                                            Mandaluyong City Mayor Menchie Abalos poses with Mandaluyong Manpower...
                                        </p>
                                    </div>
                                </article>
                                <article class="media">
                                    <a class="pull-left thumb p-thumb">
                                        <img src="img/product1.jpg" alt="">
                                    </a>
                                    <div class="media-body b-btm">
                                        <a href="#" class=" p-head">BREASTFEEDING ADVOCATES.
                                        </a>
                                        <p>
                                            Mandaluyong City Mayor Menchie Abalos acknowledges the latest breastfeeding...
                                        </p>
                                    </div>
                                </article>
                            </div>
                            <div id="events" class="tab-pane fade">
                                <article class="media">
                                    <a class="pull-left thumb p-thumb">
                                        <!--image goes here-->
                                    </a>
                                    <div class="media-body b-btm">
                                        <a href="#" class="cmt-head">There is no event as of the moment.
                                        </a>

                                    </div>
                                </article>
                            </div>
                            <div id="notice-board" class="tab-pane fade">
                                <p>
                                    Please be informed that the only official Facebook account of Mayor Menchie Abalos is the Menchie Abalos Official facebook page. Other accounts and pages are not in any way connected officially or unofficially to the Mayor. Thank you very much!
                                </p>

                            </div>
                        </div>
                    </div>
                </section>
                <!--tab end-->
            </div>
            <div class="col-lg-6">
                <!--testimonial start-->
                <div class="about-testimonial boxed-style about-flexslider ">
                    <section class="slider wow fadeInRight">
                        <div class="flexslider">
                            <ul class="slides about-flex-slides">
                                <li>
                                    <div class="about-testimonial-image ">
                                        <img alt="" src="img/of1.jpg">
                                    </div>
                                    <a class="about-testimonial-author" href="#">ERNESTO E. VICTORINO
                                    </a>
                                    <span class="about-testimonial-company">City Administrator
                                    </span>
                                    <div class="about-testimonial-content">
                                        <p class="about-testimonial-quote">
                                            He recommends to the Sangguniang Panlungsod and advises the City Mayor on all matters relative to the management and administration of the City.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="about-testimonial-image ">
                                        <img alt="" src="img/of2.jpg">
                                    </div>
                                    <a class="about-testimonial-author" href="#">FLORDELIZA D. BONADOR
                                    </a>
                                    <span class="about-testimonial-company">Human Resource Management Officer
                                    </span>
                                    <div class="about-testimonial-content">
                                        <p class="about-testimonial-quote">
                                            She formulates plans and programs related to human resource recruitment, selection, training development, and in the monitoring and evaluation of performance.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="about-testimonial-image ">
                                        <img alt="" src="img/of3.jpg">
                                    </div>
                                    <a class="about-testimonial-author" href="#">CATHERINE DE LEON-ARCE
                                    </a>
                                    <span class="about-testimonial-company">Business Permits and Licensing Officer
                                    </span>
                                    <div class="about-testimonial-content">
                                        <p class="about-testimonial-quote">
                                            She is authorized to issue permits and licenses related to business operations and closures of delinquent establishments.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="about-testimonial-image ">
                                        <img alt="" src="img/of4.jpg">
                                    </div>
                                    <a class="about-testimonial-author" href="#">VOLTAIRE G. SAN PEDRO
                                    </a>
                                    <span class="about-testimonial-company">City Legal Officer
                                    </span>
                                    <div class="about-testimonial-content">
                                        <p class="about-testimonial-quote">
                                            He formulates measures for the consideration of the Sangguniang Panlungsod and provides legal assistance and support to the City Mayor in carrying out the delivery of basic services and provisions of adequate facilities.
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </section>
                </div>
                <!--testimonial end-->
            </div>
        </div>
    </div>
    <!--announcements and officials-->

    <!--recent work start-->
    <div class="bg-lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 recent">
                    <h3 class="recent-work">City Landmarks
                    </h3>
                    <p>Mandaluyong has several places of interest that tourists and visitors can see while in the city. These include memorials, parks and recreation facilities, government institutions, and religious structures.</p>
                    <div id="owl-demo" class="owl-carousel owl-theme wow fadeIn">

                        <div class="item view view-tenth">
                            <img src="img/l1.jpg" alt="work Image">
                            <div class="mask">
                                <a href="#" class="info" data-toggle="tooltip" data-placement="top" title="Details">
                                    <i class="fa fa-link"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l2.jpg" alt="work Image">
                            <div class="mask">
                                <a href="#" class="info" data-toggle="tooltip" data-placement="top" title="Details">
                                    <i class="fa fa-link"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l6.jpg" alt="work Image">
                            <div class="mask">
                                <a href="#" class="info" data-toggle="tooltip" data-placement="top" title="Details">
                                    <i class="fa fa-link"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l3.jpg" alt="work Image">
                            <div class="mask">
                                <a href="#" class="info" data-toggle="tooltip" data-placement="top" title="Details">
                                    <i class="fa fa-link"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l4.jpg" alt="work Image">
                            <div class="mask">
                                <a href="#" class="info" data-toggle="tooltip" data-placement="top" title="Details">
                                    <i class="fa fa-link"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l5.jpg" alt="work Image">
                            <div class="mask">
                                <a href="#" class="info" data-toggle="tooltip" data-placement="top" title="Details">
                                    <i class="fa fa-link"></i>
                                </a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <!--recent work end-->
    </div>

    <div id="home-services">

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Primary Contact Numbers
                    </h2>
                </div>

                <div class="col-md-3">
                    <div class="h-service">
                        <div class="icon-wrap ico-bg round-fifty wow fadeInDown">
                            <i class="fa fa-users"></i>
                        </div>
                        <div class="h-service-content wow fadeInUp">
                            <h3>Main Trunkline
                            </h3>
                            <p>
                                532-5001
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="h-service">
                        <div class="icon-wrap ico-bg round-fifty wow fadeInDown">
                            <i class="fa fa-anchor"></i>
                        </div>
                        <div class="h-service-content wow fadeInUp">
                            <h3>Police
                            </h3>
                            <p>
                                532-2145
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="h-service">
                        <div class="icon-wrap ico-bg round-fifty wow fadeInDown">
                            <i class="fa fa-fire-extinguisher"></i>
                        </div>
                        <div class="h-service-content wow fadeInUp">
                            <h3>Fire
                            </h3>
                            <p>
                                532-2189 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="h-service">
                        <div class="icon-wrap ico-bg round-fifty wow fadeInDown">
                            <i class="fa fa-h-square"></i>
                        </div>
                        <div class="h-service-content wow fadeInUp">
                            <h3>Hospital
                            </h3>
                            <p>
                                532-0480
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /row -->

        </div>
        <!-- /container -->

    </div>
    <!-- service end -->
</asp:Content>
