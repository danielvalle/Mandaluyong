<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Mandaluyong.History" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="CityHistoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityHistory] FROM [tblCity]"></asp:SqlDataSource>
    <!--breadcrumbs start-->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Mandaluyong City - History</h1>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs end-->

    <div class="container" style="padding-bottom: 2em">


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


        <div class="form-signin wow fadeInUp">
            <asp:FormView ID="CityHistoryFormView" runat="server" DataSourceID="CityHistoryDataSource">
                <ItemTemplate>
                    <p>
                        <asp:Label ID="strCityHistoryPreview" runat="server" Text='<%# Bind("strCityHistory") %>' /></p>
                    <br />
                </ItemTemplate>
            </asp:FormView>


            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consectetur orci ut massa tristique egestas. Ut euismod eros vitae magna aliquam, eget pretium leo porttitor. In pretium vel arcu id egestas. Phasellus sed dignissim sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam dignissim pharetra dolor, sed rutrum sem. Etiam quis ante ac nisl scelerisque dapibus. Nam odio velit, rutrum nec dolor ac, malesuada consequat elit. Nulla at augue eu dui convallis tristique nec eu ligula. Pellentesque porttitor quis nunc facilisis aliquet. Vivamus non est et ipsum egestas sollicitudin quis eget neque. Duis cursus, tellus eu pretium convallis, sem nisi vestibulum metus, vel molestie dui orci eget erat.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consectetur orci ut massa tristique egestas. Ut euismod eros vitae magna aliquam, eget pretium leo porttitor. In pretium vel arcu id egestas. Phasellus sed dignissim sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam dignissim pharetra dolor, sed rutrum sem. Etiam quis ante ac nisl scelerisque dapibus. Nam odio velit, rutrum nec dolor ac, malesuada consequat elit. Nulla at augue eu dui convallis tristique nec eu ligula. Pellentesque porttitor quis nunc facilisis aliquet. Vivamus non est et ipsum egestas sollicitudin quis eget neque. Duis cursus, tellus eu pretium convallis, sem nisi vestibulum metus, vel molestie dui orci eget erat.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consectetur orci ut massa tristique egestas. Ut euismod eros vitae magna aliquam, eget pretium leo porttitor. In pretium vel arcu id egestas. Phasellus sed dignissim sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam dignissim pharetra dolor, sed rutrum sem. Etiam quis ante ac nisl scelerisque dapibus. Nam odio velit, rutrum nec dolor ac, malesuada consequat elit. Nulla at augue eu dui convallis tristique nec eu ligula. Pellentesque porttitor quis nunc facilisis aliquet. Vivamus non est et ipsum egestas sollicitudin quis eget neque. Duis cursus, tellus eu pretium convallis, sem nisi vestibulum metus, vel molestie dui orci eget erat.</p>

        </div>

    </div>

</asp:Content>
