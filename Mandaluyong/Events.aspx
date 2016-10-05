<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Mandaluyong.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
     
       .no-gutter [class*="col-"] {
        padding-left: 0 !important;
        padding-right: 0 !important;
      }

        p{
            
            text-align:justify;
            line-height: 100%;
           
        
        }
          .transparent{
            background-color: rgba(77, 77, 77, 0.5);
             padding-left: 5%;
            padding-right:5%;
            
          
           
        }

         

        </style>
  
    

    <!--breadcrumbs start-->
<div style="background-image: url('image/bg4.jpg'); background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;">
    
    <!--breadcrumbs end-->


    <asp:SqlDataSource ID="EventsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT * FROM [tblEvent] WHERE intBoolIsActive = 1"></asp:SqlDataSource>
    <!--container start-->
    <asp:ListView ID="EventsListView" runat="server" DataSourceID="EventsDataSource">
        <ItemTemplate><br /><br />
          

            <div class="col-xs-12 wow fadeInDown" style="padding-left:15%; padding-right:15%"  >
                    <div class="panel panel-default text-center" style="background-color: rgba(64, 64, 64,  0.6)!important;">

                        <div class="panel-heading" style="vertical-align: middle; background-color: rgba(16, 13, 19, 0.4)!important;" >
                             <center><img class="img-responsive" src='<%# Eval("strEventImagePath") %>'</center><br />
						 
                       <div class="panel-body text-center" style="color:#f9f9f9; font-family:georgia; font-size:24px!important; background-color: rgba(250, 250, 250, 0.4)!important;"><b><%# Eval("strEventName") %></b></div><br>
                       
                        </div>
                        <div class="panel-footer text-center" style="background-color: #c1c1c1; color:black!important;">

                            <p style="font-family:georgia; font-size:18px;  text-indent: 50px;   text-align:justify; line-height: 150%;"><%# Eval("strEventDetails") %></p>
                            <br />
                          
                        </div>

                    </div>
                </div>

             <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/div.png" />

               
           
        
        </ItemTemplate>
    </asp:ListView>

    <!--container end-->
	
	</div> <!-- FOR BACKGROUND-->

</asp:Content>
