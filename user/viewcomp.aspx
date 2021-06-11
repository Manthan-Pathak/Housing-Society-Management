<%@ Page Title="" Language="C#" MasterPageFile="~/user/usr_home.master" AutoEventWireup="true" CodeFile="viewcomp.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Complaints</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href=""><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard Complaints</a></li>
                            <li class="breadcrumb-item"><a href="#!">View Complaints</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

<div class="col-sm-12">
    <div class="card">
        <div class="card-body">
            <h5>View Complaints</h5>
            <hr/>
            <div class="row">
                <div class="col-md-12">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        Width="100%" AutoGenerateEditButton="true" DataKeyNames="cid">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" 
                               ReadOnly="True" SortExpression="cid" />
                           <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" ReadOnly="True"/>
                           <asp:BoundField DataField="ctype" HeaderText="ctype" SortExpression="ctype" ReadOnly="True"/>
                           <asp:BoundField DataField="wid" HeaderText="wid" SortExpression="wid" ReadOnly="True"/>
                           <asp:BoundField DataField="fid" HeaderText="fid" SortExpression="fid" ReadOnly="True"/>
                           <asp:BoundField DataField="cdesc" HeaderText="cdesc" SortExpression="cdesc" ReadOnly="True"/>
                           <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" ReadOnly="True"/>
                           <%--<asp:BoundField DataField="status" HeaderText="status" 
                               SortExpression="status" />--%>
                               <asp:TemplateField HeaderText="Processed/Successful">  
                                                    <ItemTemplate>  
                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                       
                                                    </ItemTemplate> 
                                                    <EditItemTemplate>
                                                       <asp:DropDownList ID="status" runat="server" class="form-control" text='<%#Bind("status")%>' > 
                                                        <asp:ListItem Value="Processing" Enabled="false">Processing</asp:ListItem> 
                                                        <asp:ListItem Value="Raised">Raised</asp:ListItem>
                                                        <asp:ListItem Value="Completed">Completed</asp:ListItem>
                                                        <%--<asp:ListItem Value="Completed">Completed</asp:ListItem>--%>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate> 
                                                </asp:TemplateField>
                       </Columns>
                       <EditRowStyle BackColor="White" />
                       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#963CFA" Font-Bold="True" ForeColor="White" 
                           HorizontalAlign="Center" />
                       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                       <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F5F7FB" />
                       <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                       <SortedDescendingCellStyle BackColor="#E9EBEF" />
                       <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [cmplnt_mstr] WHERE ([uid] = @uid)"
                        UpdateCommand="UPDATE [cmplnt_mstr] set status = @status where cid = @cid">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbluid" Name="uid" PropertyName="Text" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <asp:Label ID="lbluid" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div>
    </div>
</div>
</div>
</section>
</asp:Content>

