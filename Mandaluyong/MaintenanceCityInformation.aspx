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
    <asp:SqlDataSource ID="CityInformationDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" DeleteCommand="DELETE FROM [tblCity] WHERE [intCityID] = @original_intCityID AND (([strCityName] = @original_strCityName) OR ([strCityName] IS NULL AND @original_strCityName IS NULL)) AND (([strCityMission] = @original_strCityMission) OR ([strCityMission] IS NULL AND @original_strCityMission IS NULL)) AND (([strCityVision] = @original_strCityVision) OR ([strCityVision] IS NULL AND @original_strCityVision IS NULL)) AND (([strCityHistory] = @original_strCityHistory) OR ([strCityHistory] IS NULL AND @original_strCityHistory IS NULL)) AND (([strCityImage] = @original_strCityImage) OR ([strCityImage] IS NULL AND @original_strCityImage IS NULL))" InsertCommand="INSERT INTO [tblCity] ([strCityName], [strCityMission], [strCityVision], [strCityHistory], [strCityImage]) VALUES (@strCityName, @strCityMission, @strCityVision, @strCityHistory, @strCityImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblCity]" UpdateCommand="UPDATE [tblCity] SET [strCityName] = @strCityName, [strCityMission] = @strCityMission, [strCityVision] = @strCityVision, [strCityHistory] = @strCityHistory, [strCityImage] = @strCityImage WHERE [intCityID] = @original_intCityID AND (([strCityName] = @original_strCityName) OR ([strCityName] IS NULL AND @original_strCityName IS NULL)) AND (([strCityMission] = @original_strCityMission) OR ([strCityMission] IS NULL AND @original_strCityMission IS NULL)) AND (([strCityVision] = @original_strCityVision) OR ([strCityVision] IS NULL AND @original_strCityVision IS NULL)) AND (([strCityHistory] = @original_strCityHistory) OR ([strCityHistory] IS NULL AND @original_strCityHistory IS NULL)) AND (([strCityImage] = @original_strCityImage) OR ([strCityImage] IS NULL AND @original_strCityImage IS NULL))">
        <UpdateParameters>
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

    <asp:ListView ID="CityInformationListView" runat="server" DataKeyNames="intCityID" DataSourceID="CityInformationDataSource">
        <EditItemTemplate>
            <span color: #000000;">
            
            City Name: <asp:TextBox ID="strCityNameLabel" CssClass="form-control" runat="server" Text='<%# Bind("strCityName") %>' />
                <br />
            City Mission: <asp:TextBox ID="strCityMissionLabel" CssClass="form-control" runat="server" Text='<%# Bind("strCityMission") %>' />
                <br />
            City Vision: <asp:TextBox ID="strCityVisionLabel" CssClass="form-control" runat="server" Text='<%# Bind("strCityVision") %>' />
                <br />
            City History: <asp:TextBox ID="strCityHistoryLabel" CssClass="form-control" runat="server" Text='<%# Bind("strCityHistory") %>' />
                <br />
            City Logo: <asp:TextBox ID="strCityImageLabel" CssClass="form-control" runat="server" Text='<%# Bind("strCityImage") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" class="btn btn-lg btn-login" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" class="btn btn-lg btn-login" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
            </span>
        </EditItemTemplate>
        <ItemTemplate>
            <span color: #000000;">
            
            City Name: <asp:Label ID="strCityNameLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityName") %>' />
                <br />
            City Mission: <asp:Label ID="strCityMissionLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityMission") %>' />
                <br />
            City Vision: <asp:Label ID="strCityVisionLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityVision") %>' />
                <br />
            City History: <asp:Label ID="strCityHistoryLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityHistory") %>' />
                <br />
            City Logo: <asp:Label ID="strCityImageLabel" CssClass="form-control" runat="server" Text='<%# Eval("strCityImage") %>' />
                <br />
                <asp:Button ID="EditButton" class="btn btn-lg btn-login" runat="server" CommandName="Edit" Text="Edit" />
                <br />
                <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" class="registration-bg">
                <div class="container">
                    <div class="form-signin wow fadeInUp">
                        <h2 class="form-signin-heading">City Information</h2>
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                </div>
            </div>
        </LayoutTemplate>

    </asp:ListView>
</asp:Content>
