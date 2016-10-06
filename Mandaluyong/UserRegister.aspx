<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="Mandaluyong.UserRegister" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--container start-->
    <div style="background-image: url('image/citylandscape1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;">
        <div class="container">
            <div class="form-wrapper">
                <div class="form-signin wow fadeInUp" style="max-width: 450px!important">
                    <h2 class="form-signin-heading">Register Now</h2>
                    <div class="login-wrap">


                        <center><b>First Name</b></center>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox><br />
                        <center><b>Middle Name</b></center>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox><br />
                        <center><b>Last Name</b></center>
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox><br />
                        <center><b>Email</b></center>
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox><br />
                        <center><b>Password</b></center>
                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox><br />



                        <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-login btn-block " CommandName="Submit" Text="Submit" />


                        <div class="registration">
                            Already Registered?
                        <a class="" href="UserLogin.aspx">Login
                        </a>
                        </div>

                    </div>



                </div>
            </div>
        </div>
        <div style="height: 120px"></div>
    </div>


    <!--container end-->

</asp:Content>
