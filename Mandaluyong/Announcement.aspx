<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="Mandaluyong.Announcement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <style>
     
       .no-gutter [class*="col-"] {
        padding-left: 0 !important;
        padding-right: 0 !important;
      }


        </style>


    <!--breadcrumbs start-->
<div style="background-color:#f4efde; background-repeat: no-repeat; background-attachment: fixed; background-position: center;">

      

            <div id="banner">
            <div id="wrapper" style="width: 100%; overflow: hidden;">
                <div id="container" style="width: 100%; margin-right: auto;">
                    <img style="width: 100%;" src="img/b3.jpg" alt="" />
                </div>
            </div>
        </div>


    <div class="container"><br />
    <h1 style="font-family:georgia; font-size:4rem; letter-spacing: 0.05em; color:#1d1a19; text-align:center" >Announcements</h1><br />
        <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" />
        </div>
    
    <asp:SqlDataSource ID="AnnouncementDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [intAnnouncementID], [strAnnouncementName], [strAnnouncementDetail], [dtAnnouncementDate], [intBoolIsActive] FROM [tblAnnouncement] WHERE [intBoolIsActive] = 1"></asp:SqlDataSource>
    <asp:ListView ID="AnnouncementListView" runat="server" DataSourceID="AnnouncementDataSource">

        

        <ItemTemplate>
            <!--container start-->
          

       <div class="container wow fadeInDown">
                <div class="row"><br />
			
			
						      <div class="col-lg-10 col-lg-offset-1">
						  
							    
								    <div class="row no-gutter"  >
						 
									    <div  style="padding:0%; border-style: double; border-color: #8a8686; border-radius: 25px; background: url(img/g2.jpg); background-repeat: no-repeat; background-attachment: fixed; background-position: center;"  >
                                             <img class="img img-responsive wow fadeInRight" style="width: 100%; margin: auto; padding:0%!important;" src="img/rib4.png" />
										    <center>
                                                <h2 style="font-family:georgia; font-size:35px; color:#1b1919; padding-left:4%; padding-right:4%"  ><%# Eval("strAnnouncementName") %></h2><br />
										        <p style="padding:4%!important; padding-top: 0px!important; text-align: justify; font-family:georgia; font-size:18px; color:#1b1919; text-indent: 50px; line-height: 150%">
                                                    <%# Eval("strAnnouncementDetail")%>
										        </p>
                                            </center>

									    </div>
								    </div>

                                 

							    </div>
                       <br />
                 

	

						    </div><br />
        
              
					    </div><br />
            <br />
			
        <!--container end-->
        </ItemTemplate>

    </asp:ListView>

    
	
	</div> <!-- FOR BACKGROUND-->


</asp:Content>
