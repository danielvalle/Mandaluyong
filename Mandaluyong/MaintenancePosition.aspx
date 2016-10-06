<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenancePosition.aspx.cs" Inherits="Mandaluyong.MaintenancePosition" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
        .no-gutter [class*="col-"] {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }
    </style>

    <div style="background-image: url('image/citylandscape1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;">


        <div class="breadcrumbs">
            <div class="container">
                <div class="row">
                    <div>
                        <h1>Maintenance - City Officials</h1>
                    </div>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="wow fadeInUp">
                <div class="col-lg-8 col-lg-offset-2">
                    <section class="panel" style="background-color: #ffffff; border-style: double; border-color: #48cfad;">
                         <header class="panel-heading" style="color: #ffffff">
                            <center><h4>City Official</h4></center>
                        </header>
                        <div class="panel-body">

                             <div class="form-group">
                                <asp:Label Font-Size="20px" ID="strPositionNameLabel" runat="server" CssClass="control-label col-md-4 col-sm-12 text-center" AssociatedControlID="strPositionNameTextBox">Position Name: </asp:Label>
                                <div class="col-md-8 col-sm-12" style="text-align: center;">
                                    <asp:TextBox ID="strPositionNameTextBox" CssClass="form-control" runat="server" /><br />
                                </div>
                            </div>

                            <div class="col-lg-10 col-lg-offset-1">
                                <center><br />
                                <asp:Label font-size="20px" ID="strPositionDescLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strPositionDescTextBox">Position Description: </asp:Label><br />


                                <asp:TextBox ID="strPositionDescTextBox" Style="overflow-y: scroll; min-height: 150px; max-height: 100%; max-width: 100%" runat="server" TextMode="MultiLine" CssClass="form-control" ></asp:TextBox>


                            </div>

                            <div class="col-lg-10 col-lg-offset-1">
                                <br />
                                <br />
                                <center>
                                <asp:Button runat="server" class="btn btn-lg btn-login" Text="Add" /> <br /><br />
                                </center>
                            </div>

                    </section>



                </div>
            </div>
        </div>


        <div class="container">

            <div class="bs-example mar-b-30 wow fadeInUp">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered ">
                        <thead style="color: #48cfad">
                            <tr>
                                
                                <th>Position Name</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Table cell</td>                               
                                <td>Table cell</td>
                                <td>
                                    <button class="btn btn-info btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm">Delete</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Table cell</td>
                                <td>Table cell</td>
                                <td>
                                    <button class="btn btn-info btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm">Delete</button>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>

            </div>
        </div>


    </div>



</asp:Content>
