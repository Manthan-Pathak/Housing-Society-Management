<%@ Page Title="" Language="C#" MasterPageFile="~/user/usr_home.master" AutoEventWireup="true" CodeFile="notice_master.aspx.cs" Inherits="user_notice_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--<h1>Notice Details </h1>-->    
    <%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">--%>

<section class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Notice</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard Users</a></li>
                            <li class="breadcrumb-item"><a href="#!">Notice</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
        <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Notice Details</h5>
                    </div>
                    <br />
                    <div class="table-responsive">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                GridLines="None" Width="97%" CellSpacing="2" HorizontalAlign="Center" 
                                DataKeyNames="nfile" 
                                onselectedindexchanged="GridView2_SelectedIndexChanged" 
                                onrowcommand="GridView2_RowCommand">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                     <asp:BoundField DataField="sub" HeaderText="sub" SortExpression="sub" />
                                     <asp:BoundField DataField="dec" HeaderText="dec" SortExpression="dec" />
                                     <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                     <asp:BoundField DataField="nid" HeaderText="nid" InsertVisible="False" 
                                         ReadOnly="True" SortExpression="nid" />
                                         <asp:TemplateField>
                                         <ItemTemplate>
                                     <%--<asp:BoundField DataField="nfile" HeaderText="nfile" SortExpression="nfile" />--%>
                                     <asp:LinkButton ID="lnkbtn" Text='<%#Eval("nfile") %>' 
                                                 CommandArgument='<%#Eval("nfile") %>' runat="server" OnClick="lnkbtn_click" 
                                                 CommandName="download"></asp:LinkButton>
                                     </ItemTemplate>
                                     </asp:TemplateField>
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
                                
                                SelectCommand="SELECT [sub], [dec], [date], [nid], [nfile] FROM [ntc_mstr]"></asp:SqlDataSource>
                        </div>
                    <br />
                     <div class="table-responsive">
                     </div>
                </div>
    </div>
    </div>
    </div>
</section>
</asp:Content>

