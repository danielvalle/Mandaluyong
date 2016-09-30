<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceEvents.aspx.cs" Inherits="Mandaluyong.adevent" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Maintenance - Events</h1>
                </div>
            </div>
        </div>
    </div>

    <!--container start-->

    <div class="registration-bg">
        <div class="container">
            <div class="col-md-2"></div>
            <div class="form-signin wow fadeInUp col-md-8">
                <h2 class="form-signin-heading">Events</h2>
                <div class="login-wrap">
                    <p>Enter Event Information</p>



                    <div class="form-group">
                        <asp:Label ID="strEventNameLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strEventNameTextBox">Event Name: </asp:Label><br />
                        <div class="col-md-12 col-sm-12" style="text-align: center;">
                            <asp:TextBox ID="strEventNameTextBox" CssClass="form-control" runat="server" /><br />
                        </div>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="strEventDescLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strEventDescTextBox">Event Description: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">
                            <asp:TextBox Style="overflow-y: scroll; min-height: 150px; max-height: 100%; max-width: 100%" ID="strEventDescTextBox" TextMode="MultiLine" Columns="70" Rows="5" CssClass="form-control" runat="server" Text='<%# Bind("strCityVision") %>' /><br />
                        </div>
                    </div>



                    <div class="form-group">
                        <asp:Label ID="dtmEventStart" runat="server" CssClass="control-label col-md-12 col-sm-12">Start Date and Time: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">

                            <input id="datetimepicker1" class="form-control" type="text" />

                        </div>
                    </div>

                    <script>
                        jQuery('#datetimepicker1').datetimepicker();

                    </script>

                    <div class="form-group">
                        <asp:Label ID="dtmEventEnd" runat="server" CssClass="control-label col-md-12 col-sm-12">End Date and Time: </asp:Label><br />
                        <div class="col-md-12 col-sm-12">

                            <input id="datetimepicker2" class="form-control" type="text" />

                        </div>
                    </div>

                    <script>
                        jQuery('#datetimepicker2').datetimepicker();

                    </script>
             
                    <br />
                    <br />
                    <center><button class="btn btn-lg btn-login type="submit">Add</button>
                    <button class="btn btn-lg btn-login type="submit">Save</button></center>


                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <!--container end-->

</asp:Content>
