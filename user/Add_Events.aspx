<%@ Page Title="" Language="C#" MasterPageFile="~/user/usr_home.master" AutoEventWireup="true" CodeFile="Add_Events.aspx.cs" Inherits="user_Add_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="pcoded-main-container">
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
                            <li class="breadcrumb-item"><a href=""><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard Events</a></li>
                            <li class="breadcrumb-item"><a href="#!">Add Events</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

<div class="col-sm-12">
    <div class="card">
        <div class="card-body">
            <h5>Event Details</h5>
            <hr/>
            <div class="row">
                <div class="col-md-12">
                   <div class="form-group">
                                        <label for="exampleInputEmail1">Event Name</label>
                                        <asp:TextBox ID="txt_event_name" class="form-control" placeholder="Event name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                                        <label for="exampleInputEmail1">Event Description</label>
                                        <asp:TextBox ID="txt_event_desc" class="form-control" placeholder="Event Description" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Event Date and Time</label><br />
                                            <asp:Calendar ID="eventdatetime" runat="server" BorderStyle="None" BorderWidth="0" Width="35%"
                                            NextPrevFormat="ShortMonth" NextPrevStyle-BackColor="#333333" DayHeaderStyle-BackColor="#10B0C8" 
                                            DayHeaderStyle-ForeColor="White" DayStyle-BackColor="White" DayStyle-ForeColor="Black" 
                                            NextPrevStyle-ForeColor="White" OtherMonthDayStyle-BackColor="#CCCCCC" 
                                            OtherMonthDayStyle-ForeColor="White" SelectedDayStyle-BackColor="#3366FF" 
                                            SelectedDayStyle-ForeColor="White" TitleStyle-BackColor="#333333" TitleStyle-ForeColor="White" 
                                            NextPrevStyle-BorderStyle="None" TodayDayStyle-ForeColor="#3366FF" CellPadding="5" CellSpacing="5">
                                            </asp:Calendar>
                                    </div><br />
                </div>
                <div class="form-group">
                                        <label for="exampleInputEmail1">Upload Image</label>
                                        <asp:TextBox ID="TextBox1" class="form-control" placeholder="Event Description" runat="server"></asp:TextBox>
                                        <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                    </div><br />
                <div class="form-group">
                                            <asp:Button ID="btn_Submit" class="btn  btn-primary" runat="server" 
                                                Text="Submit" onclick="btn_Submit_Click"></asp:Button>
                                    </div>
                <asp:Label ID="lbluid" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div>
    </div>
</div>
</div>
</section>
</asp:Content>

