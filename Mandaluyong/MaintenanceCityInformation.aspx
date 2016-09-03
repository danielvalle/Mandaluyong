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
            <div class="form-signin wow fadeInUp">
                <h2 class="form-signin-heading">City Information</h2>
                City Logo:<asp:Image ID="Image1" runat="server" /><asp:Button ID="btnUploadImage" Text="Upload Image" runat="server" OnClick="UploadButton_Click" />
                <asp:FileUpload ID="strCityImageFileUpload" runat="server" /><br />


                <asp:ListView ID="CityInformationListView" runat="server" DataKeyNames="intCityID" DataSourceID="CityInformationDataSource">
                    <EditItemTemplate>
                        City Name:
                        <asp:TextBox ID="strCityNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("strCityName") %>' />
                        <br />
                        City Mission:
                        <asp:TextBox ID="strCityMissionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("strCityMission") %>' />
                        <br />
                        City Vision:
                        <asp:TextBox ID="strCityVisionTextBox" CssClass="form-control" runat="server" Text='<%# Bind("strCityVision") %>' />
                        <br />
                        City History:
                        <asp:TextBox ID="strCityHistoryTextBox" CssClass="form-control" runat="server" Text='<%# Bind("strCityHistory") %>' />
                        <br />

                        <br />
                        <asp:Button ID="UpdateButton" runat="server" class="btn btn-lg btn-login" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" class="btn btn-lg btn-login" CommandName="Cancel" Text="Cancel" />
                        <br />
                        <br />

                    </EditItemTemplate>
                    <ItemTemplate>
                        City Name:
                        <asp:Label ID="strCityNameLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityName") %>' />
                        <br />
                        City Mission:
                        <asp:Label ID="strCityMissionLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityMission") %>' />
                        <br />
                        City Vision:
                        <asp:Label ID="strCityVisionLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityVision") %>' />
                        <br />
                        City History:
                        <asp:Label ID="strCityHistoryLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityHistory") %>' />
                        <br />
                        <asp:Button ID="EditButton" class="btn btn-lg btn-login" runat="server" CommandName="Edit" Text="Edit" />
                        <br />
                        <br />

                    </ItemTemplate>


                </asp:ListView>


            </div>
        </div>
    </div>
</asp:Content>
