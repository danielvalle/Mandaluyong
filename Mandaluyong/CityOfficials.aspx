<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CityOfficials.aspx.cs" Inherits="Mandaluyong.CityOfficials" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <style>
        .no-gutter [class*="col-"] {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }
    </style>

            <div style="background-color:#f4efde; background-repeat: no-repeat; background-attachment: fixed; background-position: center;">

    <div class="container" id="tourpackages-carousel">
        <div class="col-lg-4"></div>
        <div class="row">
            <div class="profile">


                        <h1 style="font-family:georgia; font-size:6rem; letter-spacing: 0.05em; color:#1d1a19; text-align:center" >City Officials</h1><br />

                <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" />
                <br />
                <asp:SqlDataSource ID="CityOfficialsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT a.*, b.* from tblOfficial a JOIN tblPosition b ON a.intPositionIDFK = b.intPositionID"></asp:SqlDataSource>
                <asp:ListView ID="CityOfficialsListView" runat="server" DataSourceID="CityOfficialsDataSource">
                    <ItemTemplate>
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <div class="thumbnail wow fadeInUp" data-wow-delay=".1s">
                                <img src="img/team/member1.jpg" alt=""/>
                                <div class="caption">
                                    <h4 style="color: #48cfad"><%# Eval("strOfficialFirstName") %> <%# Eval("strOfficialMiddleName") %> <%# Eval("strOfficialLastName") %></h4>
                                    <h4><%# Eval("strPositionName") %></h4>
                                    <p>Add brief description here. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere, soluta, eligendi doloribus sunt minus amet sit debitis repellat.</p>
                                    <div class="team-social-link">
                                        <a href="#">
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-pinterest"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-linkedin"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                        <a href="#">
                                            <i class="fa fa-github"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>


            </div>
            <!-- End row -->

        </div>
        <!-- End container -->
    </div>
</div>
</asp:Content>
