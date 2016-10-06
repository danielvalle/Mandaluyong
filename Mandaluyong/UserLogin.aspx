<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Mandaluyong.UserLogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
												
	
	
    <!--container start-->

        <div style="background-image: url('image/citylandscape1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;">

    
        <div class="container">



            <div class="form-wrapper">
            <div class="form-signin wow fadeInUp" style="max-width: 450px!important">
            <h2 class="form-signin-heading">Sign in Now</h2>
            <div class="login-wrap">
               
				<center><b>EMAIL:</b></center>
				<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox><br/>
                <center><b>PASSWORD:</b></center>
				<asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password" ></asp:TextBox><br/>
               
               
				<asp:Button ID="Button1" runat="server" class="btn btn-lg btn-login btn-block " CommandName="Sign In" Text="Sign In" />
                

                <div class="registration">
                    Don't have an account yet?
                    <a class="" href="UserRegister.aspx">
                        Create an account
                    </a>
                </div>

            </div>

      

          </div>
          </div>
        </div>
		<div style="height:120px"></div>
    </div>
	
	
    <!--container end-->

</asp:Content>
