<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Mandaluyong.UserLogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!--breadcrumbs start-->
    <div class="breadcrumbs" >
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-sm-4">
                    <h1>Login</h1>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs end-->

												
	
	
    <!--container start-->
    <div class="login-bg" style="background-image: url('image/bg.jpg'); background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;">
        <div class="container">
            <div class="form-wrapper">
            <form class="form-signin wow fadeInUp" style="max-width: 450px!important">
            <h2 class="form-signin-heading">Sign in Now</h2>
            <div class="login-wrap">
               
				
				<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Email" /></asp:TextBox><br>
				<asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox><br>
               
               
				<asp:Button ID="Button1" runat="server" class="btn btn-lg btn-login btn-block " CommandName="Sign In" Text="Sign In" />
                

                <div class="registration">
                    Don't have an account yet?
                    <a class="" href="UserRegister.aspx">
                        Create an account
                    </a>
                </div>

            </div>

      

          </form>
          </div>
        </div>
		<div style="height:120px"></div>
    </div>
	
	
    <!--container end-->

</asp:Content>
