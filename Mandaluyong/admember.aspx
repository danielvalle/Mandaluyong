<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="admember.aspx.cs" Inherits="Mandaluyong.admember" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Maintenance - Members</h1>
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
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                   
                    

                    <br />
                    <br />
                    <center><button class="btn btn-lg btn-login" type="submit">Save</button>
                    <button class="btn btn-lg btn-login" type="submit">Delete</button></center>


                </div>
            </div>

        </div>
    </div>
    <!--container end-->

</asp:Content>
