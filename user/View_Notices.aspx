<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_Master.master" AutoEventWireup="true" CodeFile="View_Notices.aspx.cs" Inherits="User_View_Notices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-sm-12">
    <div class="card">
        <div class="card-body">
            <h5>View Visitors</h5>
            <hr/>
            <div class="row">
                <div class="col-md-6">
                   <asp:GridView ID="gv_Notices" runat="server" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" Width="200%">
                        <AlternatingRowStyle BackColor="White" />
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
</div>
    <%--<div class="col-xl-30">
                <div class="card">
    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <div class="col-sm-15">
                            </div>
                            </div>
                            <br />
    <div class="table-responsive">
    <asp:GridView ID="gv_Notices1" runat="server" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Width="242px">
        <AlternatingRowStyle BackColor="White" />
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
    </asp:GridView>--%>
                            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                GridLines="None" Width="100%">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="sub" HeaderText="sub" SortExpression="sub" />
                                     <asp:BoundField DataField="dec" HeaderText="dec" SortExpression="dec" />
                                     <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                     <asp:BoundField DataField="nid" HeaderText="nid" InsertVisible="False" 
                                         ReadOnly="True" SortExpression="nid" />
                                     <asp:BoundField DataField="nfile" HeaderText="nfile" SortExpression="nfile" />
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
                                
                                SelectCommand="SELECT [sub], [dec], [date], [nid], [nfile] FROM [ntc_mstr]"></asp:SqlDataSource>--%>
    <%--</div>
    </div>
    </div>
    </div>--%>
    
</asp:Content>

