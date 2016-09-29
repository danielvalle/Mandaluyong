<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Mandaluyong.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
     
       .no-gutter [class*="col-"] {
        padding-left: 0 !important;
        padding-right: 0 !important;
      }


        </style>
  


    <!--breadcrumbs start-->
<div style="background-image: url('image/bg4.jpg'); background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;">
    <div class="breadcrumbs">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-sm-4">
            <h1>
              Events
            </h1>
          </div>
     
        </div>
      </div>
    </div>
    <!--breadcrumbs end-->


    <asp:SqlDataSource ID="EventsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT * FROM [tblEvent] WHERE intBoolIsActive = 1"></asp:SqlDataSource>
    <!--container start-->
    <asp:ListView ID="EventsListView" runat="server" DataSourceID="EventsDataSource">
        <ItemTemplate>
            <div class="container">
                <div class="row no-gutter" style="background-color:rgba(51,51,51,0.4);" >
                    <div class="col-md-12" style="margin:auto" >
                        <img class="img-responsive" src='<%# Eval("strEventImagePath") %>'
                    </div>
                    <div class="col-md-12" style="padding:2%!important;"  >
                        <center><h2 style="font-family:georgia; font-size:30px; color:white;" ><%# Eval("strEventName") %></h2><br>
                        <p style="text-align: justify; font-family:georgia; font-size:18px; color:#cccccc;text-indent: 50px;"><%# Eval("strEventDetails") %></p>
					    </center>
                    </div>
                </div>
            </div>
            </div>
            <br />
        </ItemTemplate>
    </asp:ListView>

    <!--container end-->
	
	</div> <!-- FOR BACKGROUND-->

</asp:Content>
