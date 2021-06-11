<%@ Page Title="" Language="C#" MasterPageFile="~/user/usr_home.master" AutoEventWireup="true" CodeFile="viewmaintainance.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">View Paid Maintainance</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">View Paid maintainance</a></li>
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
                            <%--<div class="col-auto">
                                <i class="icon feather icon-book f-30 text-c-purple"></i>
                            </div>--%>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10">Total Maintainance Paid</h6>
                                <h3 class="m-b-0">
                                    <asp:Label ID="lbl_ttlamt" runat="server" Text=""></asp:Label></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <%--<div class="col-auto">
                                <i class="icon feather icon-navigation-2 f-30 text-c-green"></i>
                            </div>--%>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10">Total Months</h6>
                                <h3 class="m-b-0"><asp:Label ID="lbl_ttlmnts" runat="server" Text=""></asp:Label></h3>
                                
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
                                <i class="icon feather icon-award f-30 text-c-blue"></i>
                            </div>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10">Total Complaints</h6>
                                <h2 class="m-b-0"><asp:Label ID="lbl_ttlcmplnts" runat="server" Text=""></asp:Label></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <%--<div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <div class="col-auto">
                                <i class="icon feather icon-users f-30 text-c-red"></i>
                            </div>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10"></h6>
                                <h2 class="m-b-0"></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!-- customar project  end -->
            </div>


            <div class="row">
            <!-- customar project  start -->
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                            ForeColor="#333333" GridLines="None" Width="100%">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="mid" HeaderText="ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="mid" />
                                <%--<asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />--%>
                                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                                <asp:BoundField DataField="month" HeaderText="Month" SortExpression="month" />
                                <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
                                <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
                               <%-- <asp:BoundField DataField="status" HeaderText="status" 
                                    SortExpression="status" />--%>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#963CFA" Font-Bold="True" ForeColor="White" />
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
                            SelectCommand="SELECT * FROM [mntnc_mstr] WHERE ([uid] = @uid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lbluid" Name="uid" PropertyName="Text" 
                                    Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>        
                </div>
            </div>
            </div>
        <asp:Label ID="lbluid" runat="server" Text="" Visible="false"></asp:Label>
            <!-- customar project  end -->
      </div>
        <!-- [ Main Content ] end -->
</div>


  <script src="assets/js/vendor-all.min.js"></script>
    <script src="assets/js/plugins/bootstrap.min.js"></script>
    <script src="assets/js/ripple.js"></script>
    <script src="assets/js/pcoded.min.js"></script>
	<script src="assets/js/menu-setting.min.js"></script>

<script src="assets/js/plugins/jquery.dataTables.min.js"></script>
<script src="assets/js/plugins/dataTables.bootstrap4.min.js"></script>
<!-- Apex Chart -->
<script src="assets/js/plugins/apexcharts.min.js"></script>
<script>
    // DataTable start
    $('#report-table').DataTable();
    // DataTable end
</script>
</asp:Content>

