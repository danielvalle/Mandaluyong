<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MissionVision.aspx.cs" Inherits="Mandaluyong.MissionVision" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        .no-gutter [class*="col-"] {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }
    </style>


        <div style="background-color:#f4efde; background-repeat: no-repeat; background-attachment: fixed; background-position: center;">

            <div id="banner">
            <div id="wrapper" style="width: 100%; overflow: hidden;">
                <div id="container" style="width: 100%; margin-right: auto;">
                    <img style="width: 100%;" src="img/b2.jpg" alt="" />
                </div>
            </div>
        </div>

    <!-- mission and vision goes here -->
    <div class="container" style="padding-bottom: 2em;">



        <asp:SqlDataSource ID="CityMissionVisionDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityMission], [strCityVision] FROM [tblCity]"></asp:SqlDataSource>
        <asp:FormView ID="CityMissionFormView" runat="server" DataSourceID="CityMissionVisionDataSource">
            <ItemTemplate>
                <div class="wow fadeInRight">
                    <br />
                        <h1 style="font-family:georgia; font-size:6rem; letter-spacing: 0.05em; color:#1d1a19; text-align:center" >Mission</h1><br />
                    <br />
                    <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" />
                    <br />
                    <p style="font-family:georgia; font-size:2rem; letter-spacing: 0.05em; color:#1d1a19;text-indent: 50px;   text-align:justify; line-height: 150%;" >
                        <asp:Label ID="strCityMissionLabel" runat="server" Text='<%# Bind("strCityMission") %>' /></p>
                </div>

               <br /><br /><br />
                <div class="wow fadeInRight" style="width:100%;height:0;border-top:2px double #1d1a19; font-size:0; text-align:center">-</div>
                <br /><br />


                <div class="wow fadeInRight">
                        <h1 style="font-family:georgia; font-size:6rem; letter-spacing: 0.05em; color:#1d1a19; text-align:center" >Vision</h1><br />
                    <br />
                    <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" />
                    <br />
                    <p style="font-family:georgia; font-size:2rem; letter-spacing: 0.05em; color:#1d1a19; text-indent: 50px;   text-align:justify; line-height: 150%;" >
                        <asp:Label ID="strCityVisionLabel" runat="server" Text='<%# Bind("strCityVision") %>' /></p>

                </div>

        <!--mission and vision -->



            </ItemTemplate>
        </asp:FormView>
    </div>
    </div>
    <!-- mission and vision goes here -->
</asp:Content>
