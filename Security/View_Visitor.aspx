<%@ Page Title="" Language="C#" MasterPageFile="~/Security/Security_master.master" AutoEventWireup="true" CodeFile="View_Visitor.aspx.cs" Inherits="Security_View_Visitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Add Visitor</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href=""><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard Security Person</a></li>
                            <li class="breadcrumb-item"><a href="#!">Add Visitor</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

<div class="col-sm-12">
    <div class="card">
        <div class="card-body">
            <h5>View Visitors</h5>
            <hr/>
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView runat="server" ID="gv_view_visitors" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                        GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="vid" HeaderText="vid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="vid" />
                            <asp:BoundField DataField="vname" HeaderText="vname" SortExpression="vname" />
                            <asp:BoundField DataField="vfid" HeaderText="vfid" SortExpression="vfid" />
                            <asp:BoundField DataField="wid" HeaderText="wid" SortExpression="wid" />
                            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                            <asp:BoundField DataField="arr_datetime" HeaderText="arr_datetime" 
                                SortExpression="arr_datetime" />
                            <asp:BoundField DataField="dep_datetime" HeaderText="dep_datetime" 
                                SortExpression="dep_datetime" />
                            <asp:BoundField DataField="is_allowed" HeaderText="is_allowed" 
                                SortExpression="is_allowed" />
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
                        SelectCommand="SELECT * FROM [vstr_mstr]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</section>
</asp:Content>

