<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mandaluyong.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Sequence Modern Slider -->
           <div>
        <asp:SqlDataSource ID="CityInformationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityName], [strCityLogo], [strCityBanner] FROM [tblCity]"></asp:SqlDataSource>
        <asp:ListView ID="CityInformationListView" runat="server" DataSourceID="CityInformationDataSource">
            <ItemTemplate>
                <img class="img img-responsive" style="width:100%" src='<%# Eval("strCityBanner") %>' alt="" style="text-align: center" />
            </ItemTemplate>
        </asp:ListView>

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

        <div class="">
            <div class="">
                <!--tab start-->
                <section class="tab wow fadeInLeft">
                    <header class="panel-heading tab-bg-dark-navy-blue">
                        <ul class="nav nav-tabs nav-justified ">
                           
                            <li class="active">
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
                            <div id="events"  class="tab-pane fade in active">
                                <article class="media" >
                                    <a class="pull-left thumb p-thumb">
                                        <!--image goes here-->
                                    </a>
                                    <div class="media-body b-btm">
                                        <a href="#" class="cmt-head">There is no event as of the moment.
                                        </a>

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

                                <div class="pull-right" >
                                <a style="color:#48cfad!important" href="Events.aspx"><h4>Click here for more information...</h4></a>
                                </div>
                            </div>

                            <div id="notice-board" class="tab-pane fade">

                                    <div class="media-body b-btm">
                                        <a href="#" class=" p-head">MAYOR'S FACEBOOK
                                        </a>
                                        <p>
                                             Please be informed that the only official Facebook account of Mayor Menchie Abalos is the Menchie Abalos Official facebook page. Other accounts and pages are not in any way connected officially or unofficially to the Mayor. Thank you very much!
                                        </p>
                                    </div>

                                <div class="pull-right" >
                                <a style="color:#48cfad!important" href="Announcement.aspx"><h4>Click here for more information...</h4></a>
                                </div>


                            </div>
                        </div>
                    </div>
                </section>
                <!--tab end-->
            </div>
        
        </div>
    </div> <br /><br />
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
                               
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l2.jpg" alt="work Image">
                            <div class="mask">
                               
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l6.jpg" alt="work Image">
                            <div class="mask">
                                
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l3.jpg" alt="work Image">
                            <div class="mask">
                              
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l4.jpg" alt="work Image">
                            <div class="mask">
                                
                            </div>
                        </div>
                        <div class="item view view-tenth">
                            <img src="img/l5.jpg" alt="work Image">
                            <div class="mask">
                                
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
