<%@ Page Title="" Language="C#" MasterPageFile="~/Security/Security_master.master" AutoEventWireup="true" CodeFile="Add_Visitor.aspx.cs" Inherits="Security_Add_Visitor" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--<h4>Add Details of Visitor</h4>-->
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
                    <%--<div class="card-header">
                        <h5>Add Visitor</h5>
                    </div>--%>
                    <div class="card-body">
                        <h5>Add Visitor details</h5>
                        <hr>
                        <div class="row"> 
                            <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Visitor Name</label>
                                        <asp:TextBox ID="txtvname" class="form-control" placeholder="Enter name" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Select Wing No</label>
                                        <asp:DropDownList ID="ddl_wing" class="form-control" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="wname" DataValueField="wid">

                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [wid], [wname] FROM [wing_mstr]"></asp:SqlDataSource>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Select Flat Number</label>
                                        <asp:DropDownList ID="ddl_flat_no" class="form-control" runat="server" 
                                            DataSourceID="SqlDataSource2" DataTextField="fnum" DataValueField="fid">
                                            <asp:ListItem Value="">None</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [fid], [fnum] FROM [flat_mstr]"></asp:SqlDataSource>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Select Visiot Type</label>
                                        <asp:DropDownList ID="ddl_type" class="form-control" runat="server">
                                            <asp:ListItem Value="">Select</asp:ListItem>
                                             <asp:ListItem Value="Relatives">Relatives</asp:ListItem>
                                             <asp:ListItem Value="Service Person">Service Person</asp:ListItem>
                                             <asp:ListItem Value="Delivery Person">Delivery Person</asp:ListItem>
                                             <asp:ListItem Value="Other">Other</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Arrival Date and Time</label><br />
                                            <asp:Calendar ID="arrdatetime" runat="server" BorderStyle="None" BorderWidth="0" Width="70%"
                                            NextPrevFormat="ShortMonth" NextPrevStyle-BackColor="#333333" DayHeaderStyle-BackColor="#10B0C8" 
                                            DayHeaderStyle-ForeColor="White" DayStyle-BackColor="White" DayStyle-ForeColor="Black" 
                                            NextPrevStyle-ForeColor="White" OtherMonthDayStyle-BackColor="#CCCCCC" 
                                            OtherMonthDayStyle-ForeColor="White" SelectedDayStyle-BackColor="#3366FF" 
                                            SelectedDayStyle-ForeColor="White" TitleStyle-BackColor="#333333" TitleStyle-ForeColor="White" 
                                            NextPrevStyle-BorderStyle="None" TodayDayStyle-ForeColor="#3366FF" CellPadding="5" CellSpacing="5">
                                            </asp:Calendar>
                                    </div><br />
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Departure Date and Time</label><br />
                                            <asp:Calendar ID="depdatetime" runat="server" BorderStyle="None" BorderWidth="0" Width="70%"
                                            NextPrevFormat="ShortMonth" NextPrevStyle-BackColor="#333333" DayHeaderStyle-BackColor="#10B0C8" 
                                            DayHeaderStyle-ForeColor="White" DayStyle-BackColor="White" DayStyle-ForeColor="Black" 
                                            NextPrevStyle-ForeColor="White" OtherMonthDayStyle-BackColor="#CCCCCC" 
                                            OtherMonthDayStyle-ForeColor="White" SelectedDayStyle-BackColor="#3366FF" 
                                            SelectedDayStyle-ForeColor="White" TitleStyle-BackColor="#333333" TitleStyle-ForeColor="White" 
                                            NextPrevStyle-BorderStyle="None" TodayDayStyle-ForeColor="#3366FF" CellPadding="5" CellSpacing="5">
                                            </asp:Calendar>
                                    </div>
                                    <div class="form-group">
                                            <asp:Button ID="btn_Submit" class="btn  btn-primary" runat="server" 
                                                Text="Submit" onclick="btnsub"></asp:Button>
                                    </div>
                                    <asp:Label ID="usremail" runat="server" Text="" Visible="false"></asp:Label>
                                    <asp:Label ID="username" runat="server" Text="" Visible="false"></asp:Label>
                              </div>
                        </div>
                        
                      
                        </div>
                    </div>
                </div>
    </div>
</section>
</asp:Content>

