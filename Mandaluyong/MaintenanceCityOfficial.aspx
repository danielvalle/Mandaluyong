<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceCityOfficial.aspx.cs" Inherits="Mandaluyong.MaintenanceCityOfficial" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


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


        <!--container start-->

        <div class="container">
            <div class="wow fadeInUp">
                <div class="col-lg-8 col-lg-offset-2">
                    <br />
                    <br />
                    <section class="panel" style="background-color: #ffffff; border-style: double; border-color: #48cfad;">
                        <header class="panel-heading" style="color: #ffffff">
                            <center><h4>City Official</h4></center>
                        </header>
                        <div class="panel-body">


                            <br />

                            <div class="col-lg-10 col-lg-offset-1">
                                <center>
                     <asp:Label font-size="24px" ID="strCityLogoLabel" runat="server" CssClass="control-label col-md-12 col-sm-12 center">Official's Photo </asp:Label><br />

                        <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" /> 

                    <br />
                    <asp:Image runat="server" CssClass="img img-thumbnail img-responsive"/><br /><br />
                    <asp:Button Text="Upload Image" CssClass="btn btn-success" runat="server" />
                    <asp:FileUpload CssClass="btn btn-login btn-sm" runat="server" /><br />
                </center>
                            </div>



                            <br />
                            <br />
                            <br />

                            <div class="form-group">
                                <asp:Label Font-Size="20px" ID="strOfficialFNameLabel" runat="server" CssClass="control-label col-md-4 col-sm-12 text-center" AssociatedControlID="strOfficialFNameTextBox">First Name: </asp:Label>
                                <div class="col-md-8 col-sm-12" style="text-align: center;">
                                    <asp:TextBox ID="strOfficialFNameTextBox" CssClass="form-control" runat="server" /><br />
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <asp:Label Font-Size="20px" ID="strOfficiaMNameLabel" runat="server" CssClass="control-label col-md-4 col-sm-12 text-center" AssociatedControlID="strOfficiaMNameTextBox">Middle Name: </asp:Label>
                                <div class="col-md-8 col-sm-12" style="text-align: center;">
                                    <asp:TextBox ID="strOfficiaMNameTextBox" CssClass="form-control" runat="server" /><br />
                                </div>
                            </div>
                            
                            <div class="form-group">                               
                                <asp:Label  font-size="20px" ID="strOfficiaLNameLabel" runat="server" CssClass="control-label col-md-4 col-sm-12 text-center" AssociatedControlID="strOfficialLNameTextBox">Last Name: </asp:Label>
                                <div class="col-md-8 col-sm-12" style="text-align: center;">
                                    <asp:TextBox ID="strOfficialLNameTextBox" CssClass="form-control" runat="server" /><br />
                                </div>                      
                            </div>
                            
                            <asp:SqlDataSource ID="OfficialPositionsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT * FROM [tblPosition]"></asp:SqlDataSource>
                            
                            <div class="form-group">                           
                                <asp:Label font-size="20px" ID="strOfficialPosition" runat="server" CssClass="control-label col-md-4 col-sm-12 text-center" AssociatedControlID="strOfficialLNameTextBox">Position: </asp:Label>
                                <div class="input-group margin">
                                        <div class="input-group-btn">
                                            <asp:DropDownList ID="OfficialPositionsDropDown" runat="server" DataSourceID="OfficialPositionsDataSource" DataTextField="strPositionName" DataValueField="intPositionID"></asp:DropDownList>
                                            <!--<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="fa fa-caret-down"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Action</a></li>
                                                <li><a href="#">Another action</a></li>
                                                <li><a href="#">Something else here</a></li>
                                            </ul>-->
                                        </div><!-- /btn-group -->
                                </div><!-- /input-group -->
                            </div>
                            <!-- /btn-group -->

                            <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;">
                                <center><br />
                        <asp:Label font-size="20px" ID="strOfficialDescLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strOfficialDescTextBox">Description: </asp:Label><br />

                        <img class="img img-responsive wow fadeInRight" style="width: 30%; margin: auto" src="img/divider.png" /> 

                        <asp:TextBox ID="strOfficialDescTextBox" Style="overflow-y: scroll; min-height: 150px; max-height: 100%; max-width: 100%" runat="server" TextMode="MultiLine" CssClass="form-control" ></asp:TextBox>
                        </center>
                                <br />
                            </div>
                            <br />
                            <br />

                            <div class="col-lg-10 col-lg-offset-1">
                                <br />
                                <br />
                                <center>
                        <asp:Button runat="server" class="btn btn-lg btn-login" Text="Add" /> <br /><br />
                    </center>
                            </div>


                            <!-- ALISIN KO MUNA YUNG MODAL NA GAWA NI ZYLAH
                    <center>
                        <a href="#myModal2" data-toggle="modal" class="btn btn-lg btn-login" type="submit">Save</a>
                        <button class="btn btn-lg btn-login" type="submit">Delete</button>
                    </center>

                        -->

                        </div>
                    </section>
                </div>
            </div>
            <br />
            <br />





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
        <br />
        <br />
        <!--container end-->


        <asp:SqlDataSource ID="OfficialsDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" DeleteCommand="DELETE FROM [tblOfficial] WHERE [intOfficialID] = @original_intOfficialID AND (([strOfficialFirstName] = @original_strOfficialFirstName) OR ([strOfficialFirstName] IS NULL AND @original_strOfficialFirstName IS NULL)) AND (([strOfficialLastName] = @original_strOfficialLastName) OR ([strOfficialLastName] IS NULL AND @original_strOfficialLastName IS NULL)) AND (([strOfficialMiddleName] = @original_strOfficialMiddleName) OR ([strOfficialMiddleName] IS NULL AND @original_strOfficialMiddleName IS NULL)) AND (([strOfficialDescription] = @original_strOfficialDescription) OR ([strOfficialDescription] IS NULL AND @original_strOfficialDescription IS NULL)) AND [intPositionIDFK] = @original_intPositionIDFK" OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT a.*, b.* from tblOfficial a JOIN tblPosition b ON a.intPositionIDFK = b.intPositionID" 
            UpdateCommand="UPDATE [tblOfficial] SET [strOfficialFirstName] = @strOfficialFirstName, [strOfficialLastName] = @strOfficialLastName, [strOfficialMiddleName] = @strOfficialMiddleName, [strOfficialDescription] = @strOfficialDescription, [intPositionIDFK] = @intPositionIDFK WHERE [intOfficialID] = @original_intOfficialID AND (([strOfficialFirstName] = @original_strOfficialFirstName) OR ([strOfficialFirstName] IS NULL AND @original_strOfficialFirstName IS NULL)) AND (([strOfficialLastName] = @original_strOfficialLastName) OR ([strOfficialLastName] IS NULL AND @original_strOfficialLastName IS NULL)) AND (([strOfficialMiddleName] = @original_strOfficialMiddleName) OR ([strOfficialMiddleName] IS NULL AND @original_strOfficialMiddleName IS NULL)) AND (([strOfficialDescription] = @original_strOfficialDescription) OR ([strOfficialDescription] IS NULL AND @original_strOfficialDescription IS NULL)) AND [intPositionIDFK] = @original_intPositionIDFK">
            <DeleteParameters>
                <asp:Parameter Name="original_intOfficialID" Type="Int32" />
                <asp:Parameter Name="original_strOfficialFirstName" Type="String" />
                <asp:Parameter Name="original_strOfficialLastName" Type="String" />
                <asp:Parameter Name="original_strOfficialMiddleName" Type="String" />
                <asp:Parameter Name="original_strOfficialDescription" Type="String" />
                <asp:Parameter Name="original_intPositionIDFK" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="strOfficialFirstName" Type="String" />
                <asp:Parameter Name="strOfficialLastName" Type="String" />
                <asp:Parameter Name="strOfficialMiddleName" Type="String" />
                <asp:Parameter Name="strOfficialDescription" Type="String" />
                <asp:Parameter Name="intPositionIDFK" Type="Int32" />
                <asp:Parameter Name="original_intOfficialID" Type="Int32" />
                <asp:Parameter Name="original_strOfficialFirstName" Type="String" />
                <asp:Parameter Name="original_strOfficialLastName" Type="String" />
                <asp:Parameter Name="original_strOfficialMiddleName" Type="String" />
                <asp:Parameter Name="original_strOfficialDescription" Type="String" />
                <asp:Parameter Name="original_intPositionIDFK" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="OfficialsListView" runat="server" DataSourceID="OfficialsDataSource" DataKeyNames="intOfficialID,intPositionID">
            <EditItemTemplate>
                <tr style="">

                    <td>
                        <asp:TextBox ID="strOfficialFirstNameTextBox" runat="server" Text='<%# Bind("strOfficialFirstName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="strOfficialLastNameTextBox" runat="server" Text='<%# Bind("strOfficialLastName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="strOfficialMiddleNameTextBox" runat="server" Text='<%# Bind("strOfficialMiddleName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="strPositionNameTextBox" runat="server" Text='<%# Bind("strPositionName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="strOfficialDescriptionTextBox" runat="server" Text='<%# Bind("strOfficialDescription") %>' />
                    </td>
                    <td>
                        <asp:Button class="btn btn-info btn-sm" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button class="btn btn-danger btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
            </EmptyDataTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="strOfficialFirstNameLabel" runat="server" Text='<%# Eval("strOfficialFirstName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="strOfficialLastNameLabel" runat="server" Text='<%# Eval("strOfficialLastName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="strOfficialMiddleNameLabel" runat="server" Text='<%# Eval("strOfficialMiddleName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="strPositionNameLabel" runat="server" Text='<%# Eval("strPositionName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="strOfficialDescriptionLabel" runat="server" Text='<%# Eval("strOfficialDescription") %>' />
                    </td>

                    <td>
                        <asp:Button class="btn btn-info btn-sm" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button class="btn btn-danger btn-sm" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
            <div class="container">
                <div class="bs-example mar-b-30 wow fadeInUp">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered ">
                            <thead style="color: #48cfad">
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Middle Name</th>
                                    <th>Position</th>
                                    <th>Description</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
            </LayoutTemplate>
        </asp:ListView>

    </div>

</asp:Content>
