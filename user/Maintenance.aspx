<%@ Page Title="" Language="C#" MasterPageFile="~/user/usr_home.master" AutoEventWireup="true" CodeFile="Maintenance.aspx.cs" Inherits="User_Maintenance" %>

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

<div class="col-sm-12">
    <div class="card">
        <div class="card-body">
            <h5>Maintenance</h5>
            <hr/>
            <div class="row">
                <div class="col-md-6">
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
                        <asp:DropDownList ID="ddlmonth" class="form-control" runat="server">
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
                                        <%--<label>Date</label>
                                            <asp:Calendar ID="Calendar1" runat="server" BorderStyle="None" 
                                            BorderWidth="0" Width="45%"
                                            NextPrevFormat="ShortMonth" NextPrevStyle-BackColor="#333333" DayHeaderStyle-BackColor="#3366FF" 
                                            DayHeaderStyle-ForeColor="White" DayStyle-BackColor="White" DayStyle-ForeColor="Black" 
                                            NextPrevStyle-ForeColor="White" OtherMonthDayStyle-BackColor="#CCCCCC" 
                                            OtherMonthDayStyle-ForeColor="White" SelectedDayStyle-BackColor="#3366FF" 
                                            SelectedDayStyle-ForeColor="White" TitleStyle-BackColor="#333333" TitleStyle-ForeColor="White" 
                                            NextPrevStyle-BorderStyle="None" TodayDayStyle-ForeColor="#3366FF" 
                                            CellPadding="5" CellSpacing="5">
                                            </asp:Calendar>
                                            <br />
                                            <br />--%>
                                            <label class="form-control" style="font-weight:bold" for="">Amount To Be Paid</label>
                                            <asp:TextBox ID="txtamt" class="form-control" Text="1,422.00 Rs/-" ReadOnly="true" runat="server"></asp:TextBox>
                                            <asp:Label ID="lblerr" runat="server" class="form-control" style="font-weight:bold; color:Red" text=""></asp:Label>
                       </div>
                       <br />
                       <div class="form-group">
                        <label class="form-control" for="" style="font-weight:bold">Note</label>
                        <asp:TextBox ID="txtnote" class="form-control" TextMode="MultiLine" Rows="3" Columns="30" runat="server"></asp:TextBox>
                       </div>
                       <br />
                     <asp:Button ID="btnsub" class="btn  btn-primary" runat="server" Text="Submit" 
                        onclick="btnsub_Click" ></asp:Button>
                    <asp:Label ID="lbluid" runat="server" Text="" Visible="false"></asp:Label>
                    <asp:Label ID="lbluname" runat="server" Text="" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</asp:Content>

