<%@ Page Title="" Language="C#" MasterPageFile="~/Security/Security_master.master" AutoEventWireup="true" CodeFile="Security_Dashboard.aspx.cs" Inherits="Security_Security_Dashboard" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Security Person Dashboard</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard Security</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <!-- customar project  start -->
            <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <div class="col-auto">
                                <i class="icon feather icon-book f-30 text-c-purple"></i>
                            </div>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10">Total Users</h6>
                                <h2 class="m-b-0">
                                    <asp:Label ID="lbl_ttlusr" runat="server" Text=""></asp:Label></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <div class="col-auto">
                                <i class="icon feather icon-navigation-2 f-30 text-c-green"></i>
                            </div>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10">Total Visitors</h6>
                                <h2 class="m-b-0">
                                    <asp:Label ID="lbl_txtvstr" runat="server" Text=""></asp:Label></h2>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           <%-- <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <div class="col-auto">
                                <i class="icon feather icon-users f-30 text-c-red"></i>
                            </div>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10">Total Flats</h6>
                                <h2 class="m-b-0"><asp:Label ID="lbl_ttlflat" runat="server" Text=""></asp:Label></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <div class="col-auto">
                                <i class="icon feather icon-award f-30 text-c-blue"></i>
                            </div>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10">Total Complaints</h6>
                                <h2 class="m-b-0">25</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!-- customar project  end -->
            </div>

            <%-- ------------------------------------User List---------------------------------------------------------%>
        <div class="row">
            <!-- customar project  start -->
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <div class="col-sm-6">
                            </div>
                            <div class="col-sm-6 text-right">
                                <%--<button class="btn btn-success btn-sm btn-round has-ripple" data-toggle="modal" data-target="#modal-report"><i class="feather icon-plus"></i> Customers</button>--%>
                                <%--<asp:Button ID="btn_add_user" class="btn btn-success btn-sm btn-round has-ripple" runat="server" Text="Add New User" PostBackUrl="~/Admin/add_user.aspx" />--%>
                            </div>
                        </div>
                        
                        
                        <div class="table-responsive">
                        
                        <h6>List of Society members.</h6>
                        <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                GridLines="None" Width="100%" DataKeyNames="uid" BackColor="#10B0C8">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="uid" HeaderText="uid" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="uid" />
                                    <asp:BoundField DataField="fid" HeaderText="fid" SortExpression="fid" />
                                    <asp:BoundField DataField="wid" HeaderText="wid" SortExpression="wid" />
                                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                    <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    <%--<asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />--%>
                                    <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
                                    <asp:BoundField DataField="isactive" HeaderText="isactive" 
                                        SortExpression="isactive" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#10B0C8" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>


                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [usr_mstr]" UpdateCommand= "Update [usr_mstr] set fid=@fid , wid=@wid, type=@type , uname=@uname, email=@email, mobno=@mobno, isactive=@isactive where uid=@uid" 
                                DeleteCommand="DELETE FROM [usr_mstr] WHERE uid=@uid"></asp:SqlDataSource>

                        </div>
                    </div>
                </div>
            </div>
            <!-- customar project  end -->
        </div>



         </div>
</div>
           
</asp:Content>

