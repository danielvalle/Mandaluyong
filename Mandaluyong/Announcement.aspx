<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Announcement.aspx.cs" Inherits="Mandaluyong.Announcement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <style>
     
       .no-gutter [class*="col-"] {
        padding-left: 0 !important;
        padding-right: 0 !important;
      }


        </style>

    <!--breadcrumbs start-->
<div style="background-image: url('image/bg1.jpg'); background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;">
    <div class="breadcrumbs">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-sm-4">
            <h1>
              Announcement
            </h1>
          </div>
     
        </div>
      </div>
    </div>
    <!--breadcrumbs end-->
    <asp:SqlDataSource ID="AnnouncementDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strAnnouncementName], [strAnnouncementDetail], [dtAnnouncementDate] FROM [tblAnnouncement]"></asp:SqlDataSource>
    <asp:ListView ID="AnnouncementListView" runat="server" DataSourceID="AnnouncementDataSource">
        <ItemTemplate>
            <!--container start-->
        <div class="container">
          <div class="row">
            <!--blog start-->
            <div class="col-lg-11">
              <div class="blog-item">
                <div class="row">
                  <div class="col-lg-2 col-sm-2">
                    <div class="date-wrap">
                      <span class="date">
                        21
                      </span>
                      <span class="month">
                        September
                      </span>
                    </div>

                  </div>
                  <div class="col-lg-10 col-sm-10">
                    <div class="blog-img gs">
                      <img src="image/ev1.jpg" alt=""/>
                    </div>

                  </div>
                </div>
                <div class="row">
			
			    <!-- for extra spaces-->
                  <div class="col-lg-2 col-sm-2 ">
                  </div>
			    <!-- for extra spaces-->
			
						      <div class="col-lg-10 col-sm-10">
						  
							    <div class="container">
								    <div class="row no-gutter" style="background-color:rgba(51,51,51,0.7);" >
						  
									    <div  style="padding:4%!important;"  >
										    <center>
                                                <h2 style="font-family:georgia; font-size:35px; color:white;" ><%# Eval("strAnnouncementName") %></h2><br />
										        <p style="text-align: justify; font-family:georgia; font-size:18px; color:  #d9d9d9; text-indent: 50px;">
                                                    <%# Eval("strAnnouncementDetail")%>
										        </p>
                                            </center>
									    </div>
								    </div>
							    </div>
		
	

						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
        </div>
        <!--container end-->
        </ItemTemplate>

    </asp:ListView>

    
	
	</div> <!-- FOR BACKGROUND-->


</asp:Content>
