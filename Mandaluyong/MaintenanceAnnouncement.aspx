<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenanceAnnouncement.aspx.cs" Inherits="Mandaluyong.MaintenanceAnnouncement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div>
                    <h1>Maintenance - Announcements</h1>
                </div>
            </div>
        </div>
    </div>


    <!--container start-->

    <div class="registration-bg">
        <div class="container">

            <div class="form-signin wow fadeInUp">
                <h2 class="form-signin-heading">Announcement</h2>
                <div class="login-wrap">
                    <p>Enter Announcement Information</p>

                  
                    <asp:TextBox id="txtAnnouncementName" runat="server" CssClass="form-control" placeholder="Announcement Name"></asp:TextBox>
                    <asp:TextBox id="txtAnnouncementDetail" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Announcement Description"></asp:TextBox><br />
              <!--      <asp:Label ID="lblAnnouncementEnd" runat="server" CssClass="control-label col-md-12 col-sm-12">End Date: </asp:Label><br />
                    <asp:TextBox runat="server" id="dtmAnnouncementEnd" CssClass="datetimepicker form-control" type="text" />  -->

                    <br />
                    <br />
                    <center>
                        <asp:Button id="btnAddAnnouncement" runat="server" class="btn btn-lg btn-login" type="submit" Text="Add" OnClick="AddAnnouncementButton_Click"/>
                    </center>

                    <script>
                        jQuery('.datetimepicker').datetimepicker();
                    </script>


                </div>
            </div>

        </div>
    </div>
    <asp:SqlDataSource ID="AnnouncementDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" 
        DeleteCommand="UPDATE [tblAnnouncement] SET [intBoolIsActive] = 0 WHERE [intAnnouncementID] = @original_intAnnouncementID"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblAnnouncement] WHERE [intBoolIsActive] = 1 " UpdateCommand="UPDATE [tblAnnouncement] SET [strAnnouncementName] = @strAnnouncementName, [strAnnouncementDetail] = @strAnnouncementDetail WHERE [intAnnouncementID] = @original_intAnnouncementID">
        <DeleteParameters>
            <asp:Parameter Name="original_intAnnouncementID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="strAnnouncementName" Type="String" />
            <asp:Parameter Name="strAnnouncementDetail" Type="String" />
            <asp:Parameter Name="original_intAnnouncementID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="AnnouncementListView" runat="server" DataKeyNames="intAnnouncementID" DataSourceID="AnnouncementDataSource">
        <EditItemTemplate>
            <tr>
                <td>
                    <asp:TextBox ID="strAnnouncementNameLabel" runat="server" Text='<%# Bind("strAnnouncementName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="strAnnouncementDetailLabel" runat="server" Text='<%# Bind("strAnnouncementDetail") %>' />
                </td>   
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-info btn-sm" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-danger btn-sm" CommandName="Cancel" Text="Cancel" />              
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <div class="registration-bg">
                <div class="container">

                    <div class="bs-example mar-b-30 wow fadeInUp">
                        <div class="table-responsive">
                            <table runat="server" class="table table-hover table-bordered ">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr>
                                                <td>No data was returned.</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </EmptyDataTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="strAnnouncementNameLabel" runat="server" Text='<%# Eval("strAnnouncementName") %>' />
                </td>
                <td>
                    <asp:Label ID="strAnnouncementDetailLabel" runat="server" Text='<%# Eval("strAnnouncementDetail") %>' />
                </td>
                <td>
                    <asp:Button ID="EditButton" runat="server" CssClass="btn btn-info btn-sm" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CssClass="btn btn-danger btn-sm" CommandName="Delete" Text="Delete" /> 
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <center>
            <div class="registration-bg">
                <div class="container">

                    <div class="bs-example mar-b-30 wow fadeInUp">
                        <div class="table-responsive">
                            <table runat="server" class="table table-hover table-bordered ">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <thead style="color: #48cfad">
                                                <tr>
                                                    <th>Announcement Name</th>
                                                    <th>Description</th>
                                                    <th>Action</th>
                                                </tr>
                                                <tbody>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </tbody>
                                            </thead>
                                            <tr>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            </center>
        </LayoutTemplate>
        </asp:ListView>
<!--container end-->

</asp:Content>
