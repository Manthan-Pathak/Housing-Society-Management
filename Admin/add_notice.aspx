<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_home.master" AutoEventWireup="true" CodeFile="add_notice.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Add user</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard Admin</a></li>
                            <li class="breadcrumb-item"><a href="#!">Add Notice</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Add Notice</h5>
                    </div>
                    <div class="card-body">
                        <h5>Add Notice details</h5>
                        <hr>
                        <div class="row">
                            <div class="col-md-6">
                            
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Subject</label>
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                                        <asp:TextBox ID="txtsubject" class="form-control" placeholder="Enter name" runat="server"></asp:TextBox>
                                    </div>
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Description</label>
                                        <%--<input type="name" class="form-control" id="Email1" aria-describedby="emailHelp" placeholder="Enter Name">--%>
                                        <asp:TextBox ID="txtdesc" class="form-control" aria-describedby="emailHelp" 
                                             placeholder="Enter Description" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                    </div>
                                    <br />

                                      <div class="form-group">
                                        <label>Notice Date</label>
                                        <%--<input type="text" class="form-control" placeholder="Text">--%>
                                        <%--<asp:TextBox ID="txt_date_time" class="form-control"  runat="server" 
                                            TextMode="DateTime" ></asp:TextBox>--%>
                                            <asp:Calendar ID="caldate" runat="server" BorderStyle="None" BorderWidth="0" Width="70%"
                                            NextPrevFormat="ShortMonth" NextPrevStyle-BackColor="#333333" DayHeaderStyle-BackColor="#3366FF" 
                                            DayHeaderStyle-ForeColor="White" DayStyle-BackColor="White" DayStyle-ForeColor="Black" 
                                            NextPrevStyle-ForeColor="White" OtherMonthDayStyle-BackColor="#CCCCCC" 
                                            OtherMonthDayStyle-ForeColor="White" SelectedDayStyle-BackColor="#3366FF" 
                                            SelectedDayStyle-ForeColor="White" TitleStyle-BackColor="#333333" TitleStyle-ForeColor="White" 
                                            NextPrevStyle-BorderStyle="None" TodayDayStyle-ForeColor="#3366FF" CellPadding="5" CellSpacing="5">
                                            </asp:Calendar>
                                            <br />
                                            <br />
                                    </div>
                                     <div class="form-group">
                                        <label>Notice File</label>
                                        <asp:FileUpload ID="txt_nfile" runat="server"></asp:FileUpload>
                                        </div>

                                         <div class="form-group">

                                    <%--<button type="submit" class="btn  btn-primary">Submit</button>--%>
                                    <asp:Button ID="btnsub" class="btn  btn-primary" runat="server" Text="Submit" 
                                        OnClientClick="btnsub_click" onclick="btnsub_Click"></asp:Button>
                                     
                                     <div>
                                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                     </div>
                              
                            </div
                            </div>
                        </div>
                        
                      
                        </div>
                    </div>
                </div>
    </div>
</section>
</asp:Content>

