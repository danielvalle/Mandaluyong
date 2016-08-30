<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adevent.aspx.cs" Inherits="Mandaluyong.adevent" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Maintenance - Events</h1>
                </div>
            </div>
        </div>
    </div>

    <!--container start-->

    <div class="registration-bg">
        <div class="container">

            <div class="form-signin wow fadeInUp">
                <h2 class="form-signin-heading">Events</h2>
                <div class="login-wrap">
                    <p>Enter Event Information</p>


                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Event Name"></asp:TextBox>
                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Event Description"></asp:TextBox><br />
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Start Date"></asp:TextBox>
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="End Date"></asp:TextBox>
                    <br />
                    <br />
                    <center><button class="btn btn-lg btn-login type="submit">Add</button>
                    <button class="btn btn-lg btn-login type="submit">Save</button></center>


                </div>
            </div>

        </div>
    </div>
    <!--container end-->

</asp:Content>
