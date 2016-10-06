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
                    <img style="width: 100%;" src="image/historybanner.jpg" alt="" />
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

<<<<<<< HEAD
                        <p style="font-family:georgia; font-size:2rem; letter-spacing: 0.05em; color:#1d1a19; text-indent: 50px;   text-align:justify;
            line-height: 150%;" >Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut faucibus lacus, rhoncus sollicitudin dolor. Vestibulum bibendum neque turpis, at scelerisque ante rutrum quis. Cras hendrerit lectus at dictum tincidunt. Proin ipsum eros, consectetur vitae semper ut, porta dapibus justo. Ut dictum, felis eget molestie luctus, sapien mi consequat erat, ut volutpat mi nisl efficitur sapien. Cras sagittis sagittis ex, eget placerat magna placerat nec. Nam vitae placerat nulla, in scelerisque justo. Mauris quis quam felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><br />

                        <p style="font-family:georgia; font-size:2rem; letter-spacing: 0.05em; color:#1d1a19" >Fusce ut magna porta, posuere magna ac, ornare elit. Nunc vehicula pretium pellentesque. Suspendisse ut purus in metus gravida rhoncus. Vivamus eu sem mi. Nunc a tristique nunc, quis dictum ante. Etiam ac nisl libero. Phasellus ac neque libero. Nulla sit amet maximus neque. Praesent ac velit placerat, eleifend mi nec, ornare turpis. Suspendisse dui ex, varius id mauris quis, aliquet egestas nisi.</p><br />

                        <p style="font-family:georgia; font-size:2rem; letter-spacing: 0.05em; color:#1d1a19" >Duis a aliquet massa, sed commodo tortor. Praesent lacinia ipsum non maximus bibendum. Donec eu mi congue, ullamcorper odio non, posuere odio. Ut aliquet lorem at mauris placerat pharetra. Aenean condimentum nunc eget ante semper, in auctor massa tempor. Integer pellentesque feugiat est, vitae mattis dui fermentum condimentum. Aliquam velit lectus, interdum bibendum est vehicula, scelerisque tristique lacus. Duis faucibus mauris quis dictum imperdiet. Nam ullamcorper turpis a fringilla pretium. Quisque auctor purus sollicitudin malesuada placerat. Cras scelerisque elementum nunc id semper. Cras hendrerit tortor leo, sed mollis arcu consequat non.</p><br />

                        <p style="font-family:georgia; font-size:2rem; letter-spacing: 0.05em; color:#1d1a19" >Aliquam sapien justo, suscipit sed tempus nec, posuere id tortor. Nulla facilisi. Quisque tempor vulputate lectus et porttitor. Praesent malesuada urna vel mattis condimentum. Nullam in ex congue, iaculis dui quis, euismod magna. Aliquam pellentesque sem et finibus elementum. Etiam eu viverra risus. Etiam rhoncus ligula sem, eu molestie arcu molestie quis.</p><br />

                        <p style="font-family:georgia; font-size:2rem; letter-spacing: 0.05em; color:#1d1a19" >Quisque ac mattis leo. Quisque bibendum tempus mi, et cursus ex porttitor at. Morbi eu turpis aliquet, tincidunt ligula id, volutpat lacus. Integer et libero eu erat laoreet gravida in eu purus. Nulla tincidunt augue sem, ac hendrerit purus ultricies ut. Phasellus eget sollicitudin lectus. Duis finibus ex a egestas tincidunt. Curabitur cursus nec metus ac porttitor. Suspendisse sed magna sed diam hendrerit mattis. Sed sed nisl justo. Integer porttitor sem quis urna maximus, vel scelerisque felis tempor. Fusce nec orci ac dui consequat varius. Mauris ornare est ac leo placerat condimentum.</p><br />

=======
>>>>>>> 499d0c7420c7fa5a515eb8dec88c35c5bec956a7
                        <br />
                    </ItemTemplate>
                </asp:FormView>

            </div>

        </div>
    </div>
</asp:Content>
