<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_home.master" AutoEventWireup="true" CodeFile="maintenance.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Dashboard Admin</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">View Maintainance</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->

 <%-- ------------------------------------User List---------------------------------------------------------%>

        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class = "card-body">
                        <div class="col-sm-12">
                             <div class="form-group">
                       <label class="form-control" style="font-weight:bold" for="">Select Year</label>
                        <asp:DropDownList ID="ddl_year" class="form-control" runat="server">
                        <asp:ListItem Value="" Enabled="false">Select Year</asp:ListItem>
                        <asp:ListItem Value="2018">2018</asp:ListItem>
                        <asp:ListItem Value="2019">2019</asp:ListItem>
                        <asp:ListItem Value="2020">2020</asp:ListItem>
                        <asp:ListItem Value="2021">2021</asp:ListItem>
                        <asp:ListItem Value="2022">2022</asp:ListItem>
                        <asp:ListItem Value="2023">2023</asp:ListItem>
                        <asp:ListItem Value="2024">2024</asp:ListItem>
                        </asp:DropDownList>
                        <%--<asp:TextBox ID="TextBox1" class="form-control" aria-describedby="emailHelp" placeholder="Enter Amount" runat="server"></asp:TextBox>--%>
                      </div>
                      <br />
                      <div class="form-group">
                       <label class="form-control" style="font-weight:bold" for="">Select Month</label>
                        <asp:DropDownList ID="ddlmonth" class="form-control" runat="server" >
                        <asp:ListItem Value="" Enabled="false">Select Month</asp:ListItem>
                        <asp:ListItem Value="Jan">Jan</asp:ListItem>
                        <asp:ListItem Value="Feb">Feb</asp:ListItem>
                        <asp:ListItem Value="Mar">Mar</asp:ListItem>
                        <asp:ListItem Value="Apr">Apr</asp:ListItem>
                        <asp:ListItem Value="May">May</asp:ListItem>
                        <asp:ListItem Value="Jun">Jun</asp:ListItem>
                        <asp:ListItem Value="Jul">Jul</asp:ListItem>
                        <asp:ListItem Value="Aug">Aug</asp:ListItem>
                        <asp:ListItem Value="Sep">Sep</asp:ListItem>
                        <asp:ListItem Value="Oct">Oct</asp:ListItem>
                        <asp:ListItem Value="Nov">Nov</asp:ListItem>
                        <asp:ListItem Value="Dec">Dec</asp:ListItem>


                        </asp:DropDownList>

                        <%--<asp:TextBox ID="TextBox1" class="form-control" aria-describedby="emailHelp" placeholder="Enter Amount" runat="server"></asp:TextBox>--%>
                      </div>
                      <br />
                      <div class="form-group">
                          <asp:Button ID="btn_submit" class="btn  btn-primary" runat="server" Text="Show" 
                              onclick="btn_submit_Click" />
                      </div>
                      <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <!-- customar project  start -->
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        
                            <div class="col-sm-12">
                            <div>
                            <h6>Maintenance Paid</h6>
                            </div>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                                    <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField Datafield="mid" HeaderText="ID" />
                                    <asp:BoundField Datafield="uid" HeaderText="User ID" />
                                    <asp:BoundField Datafield="year" HeaderText="Year" />
                                    <asp:BoundField Datafield="month" HeaderText="Month" />
                                    <asp:BoundField Datafield="amt" HeaderText="Amount" />
                                    <asp:BoundField Datafield="note" HeaderText="Note" />
                                    
                                </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                        </div>
  

                    </div>
                </div>
            </div>
       

            <div class="row">
            <!-- customar project  start -->
            <div class="col-xl-12">
                </div>
            </div>

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

