<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Mandaluyong.Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .no-gutter [class*="col-"] {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }

        p {
            text-align: justify;
            line-height: 100%;
        }

        .transparent {
            background-color: rgba(77, 77, 77, 0.5);
            padding-left: 5%;
            padding-right: 5%;
        }
    </style>

     
        


    <!--breadcrumbs start-->
    <div style="background-color: #f4efde; background-repeat: no-repeat; background-attachment: fixed; background-position: center;">

            <div id="banner">
            <div id="wrapper" style="width: 100%; overflow: hidden;">
                <div id="container" style="width: 100%; margin-right: auto;">
                    <img style="width: 100%;" src="img/b4.jpg" alt="" />
                </div>
            </div>
        </div>

        <div class="container">
            <br />
            <h1 style="font-family: georgia; font-size: 6rem; letter-spacing: 0.05em; color: #1d1a19; text-align: center">Events</h1>
            <br />
            <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" />
        </div>

        <!--breadcrumbs end-->


        <asp:SqlDataSource ID="EventsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT * FROM [tblEvent] WHERE intBoolIsActive = 1"></asp:SqlDataSource>
        <!--container start-->
        <asp:ListView ID="EventsListView" runat="server" DataSourceID="EventsDataSource">
            <ItemTemplate>
                <br />
                <br />


                <div class="col-xs-12 wow fadeInDown" style="padding-left: 15%; padding-right: 15%">

                    <div style="padding: 0%; border-style: double; border-color: #8a8686; background: url(img/g2.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center;">

                        <center>
                                                <!-- DITO YUNG IMAGE-->
                                                 <center><img style="overflow:hidden" class="img-responsive" src="image/citylandscape1.jpg"</center><br />
                                                <!-- DITO YUNG IMAGE-->
                                   <img class="img img-responsive wow fadeInRight" style="width: 100%;  margin: auto; padding:0%!important;" src="img/rib2.png" />

                                                <h2 style="font-family:georgia; font-size:35px; color:#1b1919; padding-left:4%; padding-right:4%"  ><b><i><%# Eval("strEventName") %></i></b></h2><br />



								<p style="font-family:georgia; color:black; font-size:20px; padding-left:30px; padding-right:30px; text-align:justify; line-height: 150%;"><strong>WHAT:</strong> <%# Eval("strEventDetails") %></p>

                             <p style="font-family:georgia; font-size:20px;  color:black;  padding-left:30px; padding-right:30px; text-align:justify; line-height: 150%;"><strong>WHEN:</strong> INSERT STRING HERE</p>

                            <p style="font-family:georgia; font-size:20px;  color:black;  padding-left:30px; padding-right:30px; text-align:justify; line-height: 150%;"><strong>WHERE:</strong> INSERT STRING HERE ALSO</p>
                            <br />

                             <img class="img img-responsive wow fadeInRight" style="width: 100%;  margin: auto; padding:0%!important;" src="img/rib2.png" />

                          
                                            </center>
                    </div>
                    <!--wait-->



                </div>

             <br /><br />



            </ItemTemplate>
        </asp:ListView>

        <!--container end-->

    </div>
    <!-- FOR BACKGROUND-->

</asp:Content>
