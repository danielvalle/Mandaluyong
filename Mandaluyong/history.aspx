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
                        <img src="img/history/history1.jpg" />
                        <div class="carousel-caption">
                            <p>
                                The central monument of the Welfarville compound.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/history/history2.jpg" />
                        <div class="carousel-caption">
                            <p>
                                Rufino Cardinal Santos lived in Mandaluyong from 1953 to 1973 dubbed as the First Filipino Cardinal born in Guagua,Pampanga.

                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/history/history3.jpg" />
                        <div class="carousel-caption">
                            
                            <p>
                                Claro Castaneda
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/history/history4.jpg" />
                        <div class="carousel-caption">
                            <p>
                                The old San Felipe Neri church before it was renovated in 1985.It was built in 1863 and our town was renamed after the patron saint,the Saint of Rome after Mandaluyong segragated with Sta Ana De Sapa in 1841.
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

                    <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" />
                    <p style="font-size: 18px; text-align: justify; color: #2d2c2c">
                        <asp:Label ID="strCityHistoryPreview" runat="server" Text='<%# Bind("strCityHistory") %>' /></p>
                    <br />
                </ItemTemplate>
            </asp:FormView>

        </div>

    </div>

</asp:Content>
