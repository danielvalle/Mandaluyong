<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceCityOfficial.aspx.cs" Inherits="Mandaluyong.MaintenanceCityOfficial" %>


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

            <div class="form-signin wow fadeInUp">
                <h2 class="form-signin-heading">Officials Information</h2>
                    <div class="login-wrap">
                    <p>Enter Official Information</p>

                    <asp:Label ID="LogoLabel" runat="server">Official Profile:</asp:Label>
                    <input type="file" runat="server"/><br />
                    
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Middle Name"></asp:TextBox>
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                    <asp:SqlDataSource ID="OfficialPositionsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" SelectCommand="SELECT * FROM [tblPosition]"></asp:SqlDataSource>
                        <asp:DropDownList ID="OfficialPositionsDropDownList" runat="server" DataSourceID="OfficialPositionsDataSource" DataTextField="strPositionName" DataValueField="intPositionID">
                        </asp:DropDownList>
                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Description"></asp:TextBox>
                    

                    <br />
                    <br />
                    <center><button class="btn btn-lg btn-login type="submit">Save</button>
                    <button class="btn btn-lg btn-login type="submit">Delete</button></center>


                </div>
            </div>

        </div>
    </div>
    <!--container end-->

</asp:Content>
