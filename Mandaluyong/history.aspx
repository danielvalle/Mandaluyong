<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Mandaluyong.History" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:SqlDataSource ID="CityHistoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT [strCityHistory] FROM [tblCity]"></asp:SqlDataSource>
    <!--breadcrumbs start-->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Mandaluyong City - History</h1>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs end-->
    
    <div class="container" style="padding-bottom: 2em">

        <asp:FormView ID="CityHistoryFormView" runat="server" DataSourceID="CityHistoryDataSource">
            <ItemTemplate>
                <asp:Label ID="strCityHistoryLabel" runat="server" Text='<%# Bind("strCityHistory") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>

    </div>

</asp:Content>
