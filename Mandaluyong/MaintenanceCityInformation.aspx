<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceCityInformation.aspx.cs" Inherits="Mandaluyong.MaintenanceCityInformation" %>



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
                        <h1>Maintenance - City Information</h1>
                    </div>
                </div>
            </div>
        </div>

        <!--container start-->
        <asp:SqlDataSource ID="CityInformationDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityMission], [strCityVision], [strCityHistory], [intCityID] FROM [tblCity]"
            UpdateCommand="UPDATE [tblCity] SET [strCityMission] = @strCityMission, [strCityVision] = @strCityVision, [strCityHistory] = @strCityHistory WHERE [intCityID] = @original_intCityID AND (([strCityMission] = @original_strCityMission) OR ([strCityMission] IS NULL AND @original_strCityMission IS NULL)) AND (([strCityVision] = @original_strCityVision) OR ([strCityVision] IS NULL AND @original_strCityVision IS NULL)) AND (([strCityHistory] = @original_strCityHistory) OR ([strCityHistory] IS NULL AND @original_strCityHistory IS NULL))" DeleteCommand="DELETE FROM [tblCity] WHERE [intCityID] = @original_intCityID AND (([strCityMission] = @original_strCityMission) OR ([strCityMission] IS NULL AND @original_strCityMission IS NULL)) AND (([strCityVision] = @original_strCityVision) OR ([strCityVision] IS NULL AND @original_strCityVision IS NULL)) AND (([strCityHistory] = @original_strCityHistory) OR ([strCityHistory] IS NULL AND @original_strCityHistory IS NULL))" InsertCommand="INSERT INTO [tblCity] ([strCityMission], [strCityVision], [strCityHistory]) VALUES (@strCityMission, @strCityVision, @strCityHistory)" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_intCityID" Type="Int32" />
                <asp:Parameter Name="original_strCityMission" Type="String" />
                <asp:Parameter Name="original_strCityVision" Type="String" />
                <asp:Parameter Name="original_strCityHistory" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="strCityMission" Type="String" />
                <asp:Parameter Name="strCityVision" Type="String" />
                <asp:Parameter Name="strCityHistory" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="strCityMission" Type="String" />
                <asp:Parameter Name="strCityVision" Type="String" />
                <asp:Parameter Name="strCityHistory" Type="String" />
                <asp:Parameter Name="original_intCityID" Type="Int32" />
                <asp:Parameter Name="original_strCityMission" Type="String" />
                <asp:Parameter Name="original_strCityVision" Type="String" />
                <asp:Parameter Name="original_strCityHistory" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div id="itemPlaceholderContainer" runat="server">
            <div class="container">

                <div class="wow fadeInUp">
                    <div class="col-lg-10 col-lg-offset-1">
                        <br />
                        <br />
                        <section class="panel" style="background-color: #ffffff; border-style: double; border-color: #48cfad;">
                            <header class="panel-heading" style="color: #ffffff">
                                <center><h4>City Information</h4></center>
                            </header>

                            <div class="panel-body"><br />

                            <asp:ListView ID="CityInformationListView" runat="server" DataKeyNames="intCityID" DataSourceID="CityInformationDataSource">
                            <EditItemTemplate>
                                <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                                <center>
                                    <asp:Label font-size="24px" ID="strCityMissionEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityMission">City Mission: </asp:Label>
                                    <img class="img img-responsive" style="width: 30%; margin: auto" src="img/divider.png" />                     
                                    <div class="col-md-12 col-sm-12"><br />
                                       <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" ID="strCityMission" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server" Text='<%# Bind("strCityMission") %>' /><br />
                                    </div>
                                </center><br />
                                </div>

                                <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                                <center>
                                    <asp:Label font-size="24px" ID="strCityVisionEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityVision">City Vision: </asp:Label><br />
                                    <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" />                  
                                    <div class="col-md-12 col-sm-12"><br />
                                        <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" ID="strCityVision" TextMode="MultiLine" Columns="70" Rows="5" CssClass="form-control" runat="server" Text='<%# Bind("strCityVision") %>' /><br />
                                    </div>
                                </center><br />
                                </div>

                                        <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                                        <center>
                                            <asp:Label font-size="24px" ID="strCityHistoryEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityHistory">City History: </asp:Label><br />
                                            <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 
                                             <div class="col-md-12 col-sm-12"> <br />
                                                  <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" ID="strCityHistory" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server" Text='<%# Bind("strCityHistory") %>' /><br />
                                             </div>
                                        </center><br />
                                        </div>

                                        <div class="col-lg-10 col-lg-offset-1"><br /><br />
                                        <center>
                                            <asp:Button ID="UpdateButton" runat="server" class="btn btn-lg btn-login" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" class="btn btn-lg btn-login" CommandName="Cancel" Text="Cancel" />
                                        </center>
                                        </div>

                                </EditItemTemplate>
                                <ItemTemplate>
                                        <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                                        <center>
                                            <asp:Label  font-size="24px" ID="strCityMissionItemLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityMissionPreview">City Mission: </asp:Label><br />
                                            <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" />
                                            <div class="col-md-12 col-sm-12"><br />
                                                <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" TextMode="MultiLine" ReadOnly = "true" ID="strCityMissionPreview" CssClass="form-control" runat="server" Text='<%# Eval("strCityMission") %>' /><br />
                                            </div
                                        </center><br />
                                        </div>

                                        <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                                        <center>
                                            <asp:Label  font-size="24px" ID="strCityVisionItemLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityVisionPreview">City Vision: </asp:Label><br />
                                            <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" />
                                            <div class="col-md-12 col-sm-12"><br />
                                                <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" ID="strCityVisionPreview" ReadOnly="true" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server" Text='<%# Eval("strCityVision") %>' /><br />
                                            </div>
                                        </center><br />
                                        </div>

                                        <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                                        <center>
                                            <asp:Label  font-size="24px" ID="strCityHistoryItemLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityHistoryPreview">City History: </asp:Label><br />
                                            <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 
                                            <div class="col-md-12 col-sm-12"><br />
                                                <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" ID="strCityHistoryPreview" ReadOnly="true" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server" Text='<%# Eval("strCityHistory") %>' /><br />
                                            </div>
                                        </center><br />
                                        </div><br />

                                        <div class="col-lg-10 col-lg-offset-1"><br /><br />
                                        <center>
                                            <asp:Button ID="EditButton" class="btn btn-lg btn-login" runat="server" CommandName="Edit" Text="Edit" />
                                        </center><br /><br />
                                        </div>
                                    </ItemTemplate>
                                </asp:ListView>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
