<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adinfo.aspx.cs" Inherits="Mandaluyong.adinfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Maintenance - City Informations</h1>
                </div>
            </div>
        </div>
    </div>

    <!--container start-->

    <div class="registration-bg">
        <div class="container">

            <div class="form-signin wow fadeInUp">
                <h2 class="form-signin-heading">City Information</h2>
                <div class="login-wrap">
                    <p>Enter City Information</p>

                    <asp:Label ID="LogoLabel" runat="server">Logo:</asp:Label>
                    <input type="file" runat="server"/><br />
                    <asp:Label ID="BannerLabel" runat="server">Banner:</asp:Label>
                    <input type="file" runat="server"/><br />
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="City Name"></asp:TextBox>
                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="History"></asp:TextBox><br />
                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Vision"></asp:TextBox><br />
                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Mission"></asp:TextBox>

                    <br />
                    <br />
                    <center><button class="btn btn-lg btn-login type="submit">Save</button>
                    <button class="btn btn-lg btn-login" type="submit">Delete</button></center>


                </div>
            </div>

        </div>
    </div>
    <!--container end-->

</asp:Content>
