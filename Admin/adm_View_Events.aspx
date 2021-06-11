<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_home.master" AutoEventWireup="true" CodeFile="adm_View_Events.aspx.cs" Inherits="Admin_adm_View_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Events</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard Admin</a></li>
                            <li class="breadcrumb-item"><a href="#!">View Events</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

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
                                <%--<asp:Button ID="btn_add_user" class="btn btn-success btn-sm btn-round has-ripple" runat="server" Text="Add New User" PostBackUrl="~/Admin/add_user.aspx" />
--%>                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                GridLines="None" Width="100%"
                                AutoGenerateEditButton="True"
                                DataKeyNames="event_id" >
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="event_id" HeaderText="event_id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="event_id" />
                                    <asp:BoundField DataField="u_id" HeaderText="u_id" SortExpression="u_id" />
                                    <asp:BoundField DataField="event_name" HeaderText="event_name" 
                                        SortExpression="event_name" />
                                    <asp:BoundField DataField="event_desc" HeaderText="event_desc" 
                                        SortExpression="event_desc" />
                                    <asp:BoundField DataField="DateTime" HeaderText="DateTime" 
                                        SortExpression="DateTime" />
                                    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                                    <%--<asp:BoundField DataField="status" HeaderText="status" 
                                        SortExpression="status" />--%>
                                    
                                        <asp:TemplateField HeaderText="Allow/Deny">  
                                                    <ItemTemplate>  
                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                       
                                                    </ItemTemplate> 
                                                    <EditItemTemplate>
                                                       <asp:DropDownList ID="status" runat="server" class="form-control" text='<%#Bind("status")%>' > 
                                                        <asp:ListItem Value="0" Enabled="false">Select</asp:ListItem> 
                                                        <asp:ListItem Value="2">Deny</asp:ListItem>
                                                        <asp:ListItem Value="1">Allow</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate> 
                                                </asp:TemplateField> 
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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [event_mstr]"
                                UpdateCommand="Update event_mstr set status=@status where event_id = @event_id"></asp:SqlDataSource>
                                          

                       
                        </div>
                    </div>
                </div>
            </div>
            <!-- customar project  end -->
        </div>
        <!-- [ Main Content ] end -->
    </div>
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

