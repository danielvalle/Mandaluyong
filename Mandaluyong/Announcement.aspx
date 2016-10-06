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
    
    <asp:SqlDataSource ID="AnnouncementDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [intAnnouncementID], [strAnnouncementName], [strAnnouncementDetail], [dtAnnouncementDate], [intBoolIsActive] FROM [tblAnnouncement] WHERE [intBoolIsActive] = 1"></asp:SqlDataSource>
    <asp:ListView ID="AnnouncementListView" runat="server" DataSourceID="AnnouncementDataSource">
        <ItemTemplate>
            <!--container start-->
       <div class="container wow fadeInDown">
                <div class="row"><br /><br />
			
			
						      <div class="col-lg-10 col-lg-offset-1">
						  
							    
								    <div class="row no-gutter" style="background-color:rgba(51,51,51,0.7);" >
						  
									    <div  style="padding:4%!important; border-style: double; border-color: white"  >
										    <center>
                                                <h2 style="font-family:georgia; font-size:35px; color:white;"  ><%# Eval("strAnnouncementName") %></h2><br />
										        <p style="text-align: justify; font-family:georgia; font-size:18px; color:#d9d9d9; text-indent: 50px; line-height: 150%">
                                                    <%# Eval("strAnnouncementDetail")%>
										        </p>
                                            </center>
									    </div>
								    </div>
							    </div>

                 
		
	

						    </div>

              
					    </div><br /> <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/div.png" />
            <br />
			
        <!--container end-->
        </ItemTemplate>

    </asp:ListView>

    
	
	</div> <!-- FOR BACKGROUND-->


</asp:Content>
