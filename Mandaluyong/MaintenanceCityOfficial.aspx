<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceCityOfficial.aspx.cs" Inherits="Mandaluyong.MaintenanceCityOfficial" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Maintenance - City Officials</h1>
                </div>
            </div>
        </div>
    </div>


    <!--container start-->

    <div class="registration-bg">
        <div class="container">
            <div class="col-md-2"></div>
            <div class="form-signin wow fadeInUp col-md-8">
                <h2 class="form-signin-heading">City Officials</h2>
                <div class="login-wrap">

                    <br />
                    <br />
                    <center>
                <asp:Label ID="strCityLogoLabel" runat="server" CssClass="control-label col-md-12 col-sm-12">Official's Photo </asp:Label><br />
                    <br />
                <asp:Image runat="server" CssClass="img img-thumbnail img-responsive"/><br /><br />
                <asp:Button Text="Upload Image" CssClass="btn btn-login" runat="server" />
                <asp:FileUpload CssClass="btn btn-login btn-sm" runat="server" /><br />
                </center>


                    <div class="form-group">
                        <asp:Label ID="strOfficialFNameLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strOfficialFNameTextBox">First Name: </asp:Label><br />
                        <div class="col-md-12 col-sm-12" style="text-align: center;">
                            <asp:TextBox ID="strOfficialFNameTextBox" CssClass="form-control" runat="server" /><br />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="strOfficiaMNameLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strOfficiaMNameTextBox">Middle Name: </asp:Label><br />
                        <div class="col-md-12 col-sm-12" style="text-align: center;">
                            <asp:TextBox ID="strOfficiaMNameTextBox" CssClass="form-control" runat="server" /><br />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="strOfficiaLNameLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strOfficialLNameTextBox">Last Name: </asp:Label><br />
                        <div class="col-md-12 col-sm-12" style="text-align: center;">
                            <asp:TextBox ID="strOfficialLNameTextBox" CssClass="form-control" runat="server" /><br />
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="strOfficialPosition" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strOfficialLNameTextBox">Position: </asp:Label><br />
                        <asp:SqlDataSource ID="OfficialPositionsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT * FROM [tblPosition]"></asp:SqlDataSource>

                        <asp:DropDownList ID="OfficialPositionsDropDownList" runat="server" DataSourceID="OfficialPositionsDataSource" DataTextField="strPositionName" DataValueField="intPositionID">
                        </asp:DropDownList>

                    </div>
                    <!-- /btn-group -->

                    <div class="form-group">
                        <asp:Label ID="strOfficialDescLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strOfficialDescTextBox">Description: </asp:Label><br />

                        <asp:TextBox ID="strOfficialDescTextBox" Style="overflow-y: scroll; min-height: 150px; max-height: 100%; max-width: 100%" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Description"></asp:TextBox>
                    </div>
                    <br />
                    <br />



                    <center>
                        <a href="#myModal2" data-toggle="modal" class="btn btn-lg btn-login" type="submit">Save</a>
                        <button class="btn btn-lg btn-login" type="submit">Delete</button>
                    </center>
                </div>
            </div>
            <div class="col-md-2"></div>





            <!-- Modal -->
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">City Officials</h4>
                        </div>
                        <div class="modal-body">
                            Do you wish to save the new Official?

                        </div>
                        <div class="modal-footer">
                            <button data-dismiss="modal" class="btn btn-warning" type="button">Cancel</button>
                            <button class="btn btn-login" type="button">Yes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- modal -->

        </div>
    </div>
    <!--container end-->

    <div class="registration-bg">
        <div class="container">

            <div class="bs-example mar-b-30 wow fadeInUp">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered ">
                        <thead style="color: #48cfad">
                            <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Table cell</td>
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
