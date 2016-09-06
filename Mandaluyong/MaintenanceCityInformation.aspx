<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceCityInformation.aspx.cs" Inherits="Mandaluyong.MaintenanceCityInformation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Maintenance - City Information</h1>
                </div>
            </div>
        </div>
    </div>

    <!--container start-->
    <asp:SqlDataSource ID="CityInformationDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbwebprog %>"
        InsertCommand="INSERT INTO [tblCity] ([strCityName], [strCityMission], [strCityVision], [strCityHistory], [strCityImage]) VALUES (@strCityName, @strCityMission, @strCityVision, @strCityHistory, @strCityImage)" OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT * FROM [tblCity]" UpdateCommand="UPDATE [tblCity] SET [strCityName] = @strCityName, [strCityMission] = @strCityMission, [strCityVision] = @strCityVision, [strCityHistory] = @strCityHistory, [strCityImage] = @strCityImage WHERE [intCityID] = @original_intCityID AND (([strCityName] = @original_strCityName) OR ([strCityName] IS NULL AND @original_strCityName IS NULL)) AND (([strCityMission] = @original_strCityMission) OR ([strCityMission] IS NULL AND @original_strCityMission IS NULL)) AND (([strCityVision] = @original_strCityVision) OR ([strCityVision] IS NULL AND @original_strCityVision IS NULL)) AND (([strCityHistory] = @original_strCityHistory) OR ([strCityHistory] IS NULL AND @original_strCityHistory IS NULL)) AND (([strCityImage] = @original_strCityImage) OR ([strCityImage] IS NULL AND @original_strCityImage IS NULL))">
        <UpdateParameters>
            <asp:Parameter Name="intCityID" Type="Int32" />
            <asp:Parameter Name="strCityName" Type="String" />
            <asp:Parameter Name="strCityMission" Type="String" />
            <asp:Parameter Name="strCityVision" Type="String" />
            <asp:Parameter Name="strCityHistory" Type="String" />
            <asp:Parameter Name="strCityImage" Type="String" />
            <asp:Parameter Name="original_intCityID" Type="Int32" />
            <asp:Parameter Name="original_strCityName" Type="String" />
            <asp:Parameter Name="original_strCityMission" Type="String" />
            <asp:Parameter Name="original_strCityVision" Type="String" />
            <asp:Parameter Name="original_strCityHistory" Type="String" />
            <asp:Parameter Name="original_strCityImage" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div id="itemPlaceholderContainer" runat="server" class="registration-bg">
        <div class="container">
            <div class="col-md-2"></div>
            <div class="form-signin wow fadeInUp col-md-8">

                
                <h2 class="form-signin-heading">City Information</h2>


                <br /><br />
                <center>
                <asp:Label ID="strCityLogoEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="Image1">City Logo: </asp:Label><br />
                    <br />
                <asp:Image ID="Image1" runat="server" CssClass="img img-thumbnail img-responsive"/><br /><br />
                <asp:Button ID="btnUploadImage" Text="Upload Image" CssClass="btn btn-login" runat="server" OnClick="UploadButton_Click" />
                <asp:FileUpload ID="strCityImageFileUpload" CssClass="btn btn-login btn-sm" runat="server" /><br />
                </center>


                <asp:ListView ID="CityInformationListView" runat="server" DataKeyNames="intCityID" DataSourceID="CityInformationDataSource">
                    <EditItemTemplate>

                        <div class="form-group">
                            <asp:Label ID="strCityNameEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityNameEditTextBox">City Name: </asp:Label><br />
                            <div class="col-md-12 col-sm-12" style="text-align: center;">
                                <asp:TextBox ID="strCityNameEditTextBox" CssClass="form-control" runat="server" Text='<%# Bind("strCityName") %>' /><br />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="strCityMissionEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityMissionEditTextBox">City Mission: </asp:Label><br />
                            <div class="col-md-12 col-sm-12">
                                <asp:TextBox ID="strCityMissionEditTextBox" CssClass="form-control" runat="server" Text='<%# Bind("strCityMission") %>' /><br />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="strCityVisionEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityVisionEditTextBox">City Vision: </asp:Label><br />
                            <div class="col-md-12 col-sm-12">
                                <asp:TextBox ID="strCityVisionEditTextBox" CssClass="form-control" runat="server" Text='<%# Bind("strCityVision") %>' /><br />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="strCityHistoryEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityHistoryEditTextBox">City Mission: </asp:Label><br />
                            <div class="col-md-12 col-sm-12">
                                <asp:TextBox ID="strCityHistoryEditTextBox" CssClass="form-control" runat="server" Text='<%# Bind("strCityHistory") %>' /><br />
                            </div>
                        </div>
                        <br />

                        
                        <asp:Button ID="UpdateButton" runat="server" class="btn btn-lg btn-login pull-left" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" class="btn btn-lg btn-login pull-right" CommandName="Cancel" Text="Cancel" />
                        

                    </EditItemTemplate>

                    <ItemTemplate>

                        <div class="form-group">
                            <asp:Label ID="strCityNameItemLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityNamePreview">City Name: </asp:Label><br />
                            <div class="col-md-12 col-sm-12">
                                <asp:Label ID="strCityNamePreview" CssClass="form-control" runat="server" Text='<%# Eval("strCityName") %>' /><br />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="strCityMissionItemLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityMissionPreview">City Mission: </asp:Label><br />
                            <div class="col-md-12 col-sm-12">
                                <asp:Label ID="strCityMissionPreview" CssClass="form-control" runat="server" Text='<%# Eval("strCityMission") %>' /><br />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="strCityVisionItemLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityVisionPreview">City Vision: </asp:Label><br />
                            <div class="col-md-12 col-sm-12">
                                <asp:Label ID="strCityVisionPreview" CssClass="form-control" runat="server" Text='<%# Eval("strCityVision") %>' /><br />
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="strCityHistoryItemLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityHistoryPreview">City History: </asp:Label><br />
                            <div class="col-md-12 col-sm-12">
                                <asp:Label ID="strCityHistoryPreview" CssClass="form-control" runat="server" Text='<%# Eval("strCityHistory") %>' /><br />
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />

                        
                            <asp:Button ID="EditButton" class="btn btn-lg btn-login pull-right" runat="server" CommandName="Edit" Text="Edit" />
                        

                    </ItemTemplate>


                </asp:ListView>


            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</asp:Content>
