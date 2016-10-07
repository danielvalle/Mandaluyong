<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Mandaluyong.History" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <style>
        .no-gutter [class*="col-"] {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }
    </style>


    <asp:SqlDataSource ID="CityHistoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityHistory] FROM [tblCity]"></asp:SqlDataSource>
    <!--breadcrumbs start-->

    <div style="background-color:#f4efde; background-repeat: no-repeat; background-attachment: fixed; background-position: center;">

        <div id="banner">
            <div id="wrapper" style="width: 100%; overflow: hidden;">
                <div id="container" style="width: 100%; margin-right: auto;">
                    <img style="width: 100%;" src="img/b1.jpg" alt="" />
                </div>
            </div>
        </div>


        <div class="container" style="padding-bottom: 2em">

          

                                    <h1 style="font-family:georgia; font-size:6rem; letter-spacing: 0.05em; color:#1d1a19; text-align:center" >History</h1><br />



            <div class="wow fadeInUp">
                <asp:FormView ID="CityHistoryFormView" runat="server" DataSourceID="CityHistoryDataSource">
                    <ItemTemplate>

                        <br /><br />

                        <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" /><br />
                        <p style="font-family:georgia; font-size:2rem; letter-spacing: 0.05em; color:#1d1a19; text-indent: 50px;   text-align:justify; line-height: 150%;" >
                            <asp:Label ID="strCityHistoryPreview" runat="server" Text='<%# Bind("strCityHistory") %>' />
                        </p>

                        <br />
                    </ItemTemplate>
                </asp:FormView>

            </div>

        </div>
    </div>
</asp:Content>
