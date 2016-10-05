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
    <asp:SqlDataSource ID="CityInformationDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" DeleteCommand="DELETE FROM [tblCity] WHERE [intCityID] = @original_intCityID AND (([strCityName] = @original_strCityName) OR ([strCityName] IS NULL AND @original_strCityName IS NULL)) AND (([strCityMission] = @original_strCityMission) OR ([strCityMission] IS NULL AND @original_strCityMission IS NULL)) AND (([strCityVision] = @original_strCityVision) OR ([strCityVision] IS NULL AND @original_strCityVision IS NULL)) AND (([strCityHistory] = @original_strCityHistory) OR ([strCityHistory] IS NULL AND @original_strCityHistory IS NULL)) AND (([strCityLogo] = @original_strCityLogo) OR ([strCityLogo] IS NULL AND @original_strCityLogo IS NULL)) AND (([strCityBanner] = @original_strCityBanner) OR ([strCityBanner] IS NULL AND @original_strCityBanner IS NULL))" InsertCommand="INSERT INTO [tblCity] ([strCityName], [strCityMission], [strCityVision], [strCityHistory], [strCityLogo], [strCityBanner]) VALUES (@strCityName, @strCityMission, @strCityVision, @strCityHistory, @strCityLogo, @strCityBanner)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblCity]" UpdateCommand="UPDATE [tblCity] SET [strCityName] = @strCityName, [strCityMission] = @strCityMission, [strCityVision] = @strCityVision, [strCityHistory] = @strCityHistory, [strCityLogo] = @strCityLogo, [strCityBanner] = @strCityBanner WHERE [intCityID] = @original_intCityID AND (([strCityName] = @original_strCityName) OR ([strCityName] IS NULL AND @original_strCityName IS NULL)) AND (([strCityMission] = @original_strCityMission) OR ([strCityMission] IS NULL AND @original_strCityMission IS NULL)) AND (([strCityVision] = @original_strCityVision) OR ([strCityVision] IS NULL AND @original_strCityVision IS NULL)) AND (([strCityHistory] = @original_strCityHistory) OR ([strCityHistory] IS NULL AND @original_strCityHistory IS NULL)) AND (([strCityLogo] = @original_strCityLogo) OR ([strCityLogo] IS NULL AND @original_strCityLogo IS NULL)) AND (([strCityBanner] = @original_strCityBanner) OR ([strCityBanner] IS NULL AND @original_strCityBanner IS NULL))">
        <UpdateParameters>
            <asp:Parameter Name="strCityName" Type="String" />
            <asp:Parameter Name="strCityMission" Type="String" />
            <asp:Parameter Name="strCityVision" Type="String" />
            <asp:Parameter Name="strCityHistory" Type="String" />
            <asp:Parameter Name="strCityLogo" Type="String" />
            <asp:Parameter Name="strCityBanner" Type="String" />
            <asp:Parameter Name="original_intCityID" Type="Int32" />
            <asp:Parameter Name="original_strCityName" Type="String" />
            <asp:Parameter Name="original_strCityMission" Type="String" />
            <asp:Parameter Name="original_strCityVision" Type="String" />
            <asp:Parameter Name="original_strCityHistory" Type="String" />
            <asp:Parameter Name="original_strCityLogo" Type="String" />
            <asp:Parameter Name="original_strCityBanner" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div id="itemPlaceholderContainer" runat="server" class="registration-bg">
        <div class="container">

            <div class="wow fadeInUp">
                <div class="col-lg-10 col-lg-offset-1"><br /><br />
                    <section class="panel" style="background-color: #ffffff; border-style: double; border-color: #48cfad;">
                        <header class="panel-heading" style="color: #ffffff">
                            <center><h4>City Information</h4></center>
                        </header>

                        <div class="panel-body"> <br />
                            <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;">
                                <center>
                                <div >
                                    <asp:Label font-size="24px" ID="strCityLogoLabel" runat="server" CssClass="control-label col-md-12 col-sm-12"  AssociatedControlID="CityLogo">City Logo: </asp:Label>
                       
                                </div>

                                    <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> <br />
                 
                                
                                    <asp:Image ID="CityLogo" runat="server" CssClass="img img-thumbnail img-responsive"/><br /><br />
                                    <asp:Button ID="btnUploadLogo" Text="Upload Image" CssClass="btn btn-success" runat="server" OnClick="UploadLogoButton_Click" />
                                    <asp:FileUpload ID="strCityLogoFileUpload" CssClass="btn btn-login btn-sm" runat="server" /><br />
                              
                                </center>
                            </div>

                            <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;">
                                <center>
                                <div><br /><br />
                                    <asp:Label font-size="24px" ID="strCityBannerLabel" runat="server" CssClass="control-label" AssociatedControlID="strCityBannerLabel">City Banner: </asp:Label>
                                </div>

                                    <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /><br />

                                    <asp:Image ID="CityBanner" runat="server" CssClass="img img-thumbnail img-responsive"/><br /><br />
                                    <asp:Button ID="btnUploadBanner" Text="Upload Image" CssClass="btn btn-success" runat="server" OnClick="UploadBannerButton_Click" />
                                    <asp:FileUpload ID="strCityBannerFileUpload" CssClass="btn btn-login btn-sm" runat="server" /><br />
                                </center>
                            </div>


       <asp:ListView ID="CityInformationListView" runat="server" DataKeyNames="intCityID" DataSourceID="CityInformationDataSource">
          <EditItemTemplate>

            

             <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                  <center>
                      <asp:Label font-size="24px" ID="strCityMissionEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityMissionEditTextBox">City Mission: </asp:Label>
                            
                          <img class="img img-responsive" style="width: 30%; margin: auto" src="img/divider.png" />
                           
                       <div class="col-md-12 col-sm-12"><br />
                           <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" ID="strCityMissionEditTextBox" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server" Text='<%# Bind("strCityMission") %>' /><br />
                        </div>
                  </center> <br />                    
             </div>

             <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                 <center>
                     <asp:Label font-size="24px" ID="strCityVisionEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityVisionEditTextBox">City Vision: </asp:Label><br />

                         <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" />
                             
                      <div class="col-md-12 col-sm-12"><br />
                          <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" ID="strCityVisionEditTextBox" TextMode="MultiLine" Columns="70" Rows="5" CssClass="form-control" runat="server" Text='<%# Bind("strCityVision") %>' /><br />
                      </div>
                  </center>  <br />
            </div>

             <div class="col-lg-10 col-lg-offset-1" style="border-bottom: thick double #cec9c9;"><br /><br />
                 <center>
                     <asp:Label font-size="24px" ID="strCityHistoryEditLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityHistoryEditTextBox">City History: </asp:Label><br />

                         <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" /> 

                     <div class="col-md-12 col-sm-12"> <br />
                          <asp:TextBox style="overflow-y:scroll; min-height:150px; max-height:100%; max-width:100%" ID="strCityHistoryEditTextBox" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server" Text='<%# Bind("strCityHistory") %>' /><br />
                      </div>
                  </center> <br />
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
                            <asp:Label font-size="24px" ID="strCityNameItemLabel" runat="server" CssClass="control-label col-md-12 col-sm-12" AssociatedControlID="strCityNamePreview">City Name: </asp:Label><br />

                            <img class="img img-responsive " style="width: 30%; margin: auto" src="img/divider.png" />

                            <div class="col-md-12 col-sm-12"><br />
                                <asp:TextBox ID="strCityNamePreview" ReadOnly="true" CssClass="form-control" runat="server" Text='<%# Eval("strCityName") %>' /><br />
                            </div>
                        </center> <br />
                   </div>

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
                        </center>  <br />            
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
                            <asp:Button ID="EditButton" class="btn btn-lg btn-login" runat="server" CommandName="Edit" Text="Edit" /></center><br /><br />
                    </div>
           </ItemTemplate>
       </asp:ListView>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
