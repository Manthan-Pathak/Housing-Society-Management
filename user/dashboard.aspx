<%@ Page Title="" Language="C#" MasterPageFile="~/user/usr_home.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Dashboard User</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard User</a></li>
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
                                <%--<i class="icon feather icon-book f-30 text-c-purple"></i>--%>
                                <i class="icon feather icon-users f-30 text-c-red"></i>
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
                                <%--<i class="icon feather icon-users f-30 text-c-red"></i>--%>
                                <i class="icon feather icon-book f-30 text-c-purple"></i>
                            </div>
                            <div class="col-auto">
                                <h6 class="text-muted m-b-10">Total Notices</h6>
                                <h2 class="m-b-0"><asp:Label ID="lbl_ntc" runat="server" Text=""></asp:Label></h2>
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
                                <h2 class="m-b-0">
                                    <asp:Label ID="lbl_cmplnt" runat="server" Text="Label"></asp:Label></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- customar project  end -->
            </div>

 <%-- ------------------------------------User List---------------------------------------------------------%>
        <div class="row">
            <!-- customar project  start -->
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        
                            <div class="col-sm-12">
                            <div>
                            <h6>Knock knock! You have new visitor at the door.  Allow or Deny from here!</h6>
                            </div>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                    GridLines="None" Width="100%" 
                                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                    AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                                    DataKeyNames="vid" EditRowStyle-BackColor="White" 
                                    SelectedRowStyle-BackColor="White" EditRowStyle-Wrap="False" 
                                    EmptyDataText="There is no one visiting right now">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="vid" HeaderText="vid" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="vid" />
                                        <asp:BoundField DataField="vname" HeaderText="vname" ReadOnly="True" SortExpression="vname" />
                                        <%--<asp:BoundField DataField="vfid" HeaderText="vfid" SortExpression="vfid" />
                                        <asp:BoundField DataField="wid" HeaderText="wid" SortExpression="wid" />--%>
                                        <asp:BoundField DataField="type" HeaderText="type" ReadOnly="True" SortExpression="type" />
                                        <asp:BoundField DataField="arr_datetime" ReadOnly="True" HeaderText="arr_datetime" 
                                            SortExpression="arr_datetime" />
                                        <%--<asp:BoundField DataField="dep_datetime" HeaderText="dep_datetime" 
                                            SortExpression="dep_datetime" />--%>
                                        <%--<asp:BoundField DataField="is_allowed" HeaderText="is_allowed" 
                                            SortExpression="is_allowed" />--%>
                                             <asp:TemplateField HeaderText="Allow/Deny">  
                                                    <ItemTemplate>  
                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("is_allowed") %>'></asp:Label>
                                                       
                                                    </ItemTemplate> 
                                                    <EditItemTemplate>
                                                       <asp:DropDownList ID="is_allowed" runat="server" class="form-control" text='<%#Bind("is_allowed")%>' > 
                                                        <asp:ListItem Value="0" Enabled="false">Select</asp:ListItem> 
                                                        <asp:ListItem Value="2">Deny</asp:ListItem>
                                                        <asp:ListItem Value="1">Allow</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate> 
                                                </asp:TemplateField>  
                                      
                                    </Columns>
                                    <EditRowStyle />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#963CFA" Font-Bold="True" ForeColor="White" 
                                        HorizontalAlign="Center" />
                                    <PagerStyle BackColor="#2461BF" BorderWidth="0px" ForeColor="White" 
                                        HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT * FROM [vstr_mstr] WHERE (([vfid] = @vfid) AND ([wid] = @wid) AND ([is_allowed] = '0'))"
                                    UpdateCommand="Update [vstr_mstr] set is_allowed=@is_allowed where vid=@vid"
                                    DeleteCommand="delete from [cat_mstr] where catid=@catid">
                                    
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblflat" Name="vfid" PropertyName="Text" 
                                            Type="Int32" />
                                        <asp:ControlParameter ControlID="lblwing" Name="wid" PropertyName="Text" 
                                            Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <br />
                                
                            </div>
                            <asp:Label ID="lblwing" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="lblflat" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="lbluid" runat="server" Text="" Visible="false"></asp:Label>
                        </div>
                        

                        <!-- Complaint -->
                        


                    </div>
                </div>
            </div>
            <!-- customar project  end -->

            <div class="row">
            <!-- customar project  start -->
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        
                            <div class="col-sm-12">
                            <div>
                            <h6>You have new Complaint Registered.  Hope you will look into it ..!</h6>
                            </div>
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                                GridLines="None" Width="100%"
                                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                AutoGenerateEditButton="true"
                                DataKeyNames="cid" >
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="cid" />
                                    <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" ReadOnly="True" />
                                    <asp:BoundField DataField="ctype" HeaderText="ctype" SortExpression="ctype" ReadOnly="True" />
                                    <asp:BoundField DataField="wid" HeaderText="wid" SortExpression="wid" ReadOnly="True" />
                                    <asp:BoundField DataField="fid" HeaderText="fid" SortExpression="fid" ReadOnly="True" />
                                    <asp:BoundField DataField="cdesc" HeaderText="cdesc" SortExpression="cdesc" ReadOnly="True" />
                                    <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" ReadOnly="True" />
                                    <%--<asp:BoundField DataField="status" HeaderText="status" 
                                        SortExpression="status" />--%>
                                        <asp:TemplateField HeaderText="Processed/Successful">  
                                                    <ItemTemplate>  
                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                       
                                                    </ItemTemplate> 
                                                    <EditItemTemplate>
                                                       <asp:DropDownList ID="status" runat="server" class="form-control" text='<%#Bind("status")%>' > 
                                                        <asp:ListItem Value="0" Enabled="false">Select</asp:ListItem> 
                                                        <asp:ListItem Value="Raised">Raised</asp:ListItem>
                                                        <asp:ListItem Value="Processing">Processing</asp:ListItem>
                                                        <%--<asp:ListItem Value="Completed">Completed</asp:ListItem>--%>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate> 
                                                </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="White" />
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
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [cmplnt_mstr] where (([fid]= @fid) AND ([wid] = @wid) AND ([status] != 'Completed' ))"
                                UpdateCommand="Update [cmplnt_mstr] set status=@status where cid=@cid">
                                <SelectParameters>
                                        <asp:ControlParameter ControlID="lblflat" Name="fid" PropertyName="Text" 
                                            Type="Int32" />
                                        <asp:ControlParameter ControlID="lblwing" Name="wid" PropertyName="Text" 
                                            Type="Int32" />
                                        
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                
                                
                                <br />
                                <br />
                                
                            </div>
                            <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="" Visible="false"></asp:Label>
                        </div>
                        

                        <!-- Complaint -->
                        


                    </div>
                </div>
            </div>

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

