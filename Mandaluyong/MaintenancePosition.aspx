<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MaintenancePosition.aspx.cs" Inherits="Mandaluyong.MaintenancePosition" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>
        .no-gutter [class*="col-"] {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }
    </style>

    <div style="background-image: url('image/citylandscape1.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center;">


        <div class="breadcrumbs">
            <div class="container">
                <div class="row">
                    <div>
                        <h1>Maintenance - City Officials</h1>
                    </div>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="wow fadeInUp">
                <div class="col-lg-8 col-lg-offset-2">
                    <section class="panel" style="background-color: #ffffff; border-style: double; border-color: #48cfad;">
                         <header class="panel-heading" style="color: #ffffff">
                            <center><h4>City Official</h4></center>
                        </header>
                        <div class="panel-body">

                             <div class="form-group">
                                <asp:Label Font-Size="20px" ID="strPositionNameLabel" runat="server" CssClass="control-label col-md-4 col-sm-12 text-center" AssociatedControlID="txtPositionName">Position Name: </asp:Label>
                                <div class="col-md-8 col-sm-12" style="text-align: center;">
                                    <asp:TextBox ID="txtPositionName" CssClass="form-control" runat="server" /><br />
                                </div>
                            </div>

                            <div class="col-lg-10 col-lg-offset-1">
                                <br />
                                <br />
                                <center>
                                <asp:Button ID="btnSubmit" runat="server" class="btn btn-lg btn-login" Text="Add" OnClick="btnSubmit_Click" /> <br /><br />
                                </center>
                            </div>

                    </section>

                </div>
            </div>
        </div>

        <asp:SqlDataSource ID="OfficialPositionsDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbwebprog %>" DeleteCommand="DELETE FROM [tblPosition] WHERE [intPositionID] = @original_intPositionID AND (([strPositionName] = @original_strPositionName) OR ([strPositionName] IS NULL AND @original_strPositionName IS NULL))" InsertCommand="INSERT INTO [tblPosition] ([strPositionName]) VALUES (@strPositionName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblPosition]" UpdateCommand="UPDATE [tblPosition] SET [strPositionName] = @strPositionName WHERE [intPositionID] = @original_intPositionID AND (([strPositionName] = @original_strPositionName) OR ([strPositionName] IS NULL AND @original_strPositionName IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_intPositionID" Type="Int32" />
                <asp:Parameter Name="original_strPositionName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="strPositionName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="strPositionName" Type="String" />
                <asp:Parameter Name="original_intPositionID" Type="Int32" />
                <asp:Parameter Name="original_strPositionName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:ListView ID="OfficialPositionsListView" runat="server" DataKeyNames="intPositionID" DataSourceID="OfficialPositionsDataSource">
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:TextBox ID="strPositionNameTextBox" runat="server" Text='<%# Bind("strPositionName") %>' />
                    </td>
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" class="btn btn-danger btn-sm" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" class="btn btn-info btn-sm" />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="strPositionNameLabel" runat="server" Text='<%# Eval("strPositionName") %>' />
                    </td>                         
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" class="btn btn-danger btn-sm" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" class="btn btn-info btn-sm" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <div class="container">
                    <div class="bs-example mar-b-30 wow fadeInUp">
                        <div class="table-responsive">
                            <table class="table table-hover table-bordered ">
                                <thead style="color: #48cfad">
                                    <tr>
                                        <th>Position Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </LayoutTemplate>
        </asp:ListView>


    </div>



</asp:Content>
