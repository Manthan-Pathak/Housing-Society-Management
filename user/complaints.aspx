<%@ Page Title="" Language="C#" MasterPageFile="~/User/usr_home.master" AutoEventWireup="true" CodeFile="complaints.aspx.cs" Inherits="User_complaints" %>

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
            <h5>Add Complaint</h5>
            <hr/>
            <div class="row">
                <div class="col-md-6">
                        <div class="form-group">
                                        <label for="exampleInputEmail1">Complaint Type</label>
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                                        <%--<asp:TextBox ID="txtsubject" class="form-control" placeholder="Enter name" runat="server"></asp:TextBox>--%>
                                        <asp:DropDownList ID="ddlagainst" class="form-control" runat="server" 
                                            AutoPostBack="True" onselectedindexchanged="ddlagainst_click">
                                            <asp:ListItem Selected="True">Select </asp:ListItem>
                                            <asp:ListItem Value="individual">Against Individual</asp:ListItem>
                                            <asp:ListItem Value="management">Against Society Management</asp:ListItem>
                                            <asp:ListItem Value="other">Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:Panel ID="Panel1" runat="server">
                                        <div class="form-group">
                                        <label>Select Wing</label>
                                        <asp:DropDownList ID="ddlwing" class="form-control" runat="server" DataSourceID="SqlDataSource1" 
                                                DataTextField="wname" DataValueField="wid">
                                            <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT [wid], [wname] FROM [wing_mstr]"></asp:SqlDataSource>
                                        </div>
                                        <div class="form-group">
                                        <label>Select Flat</label>
                                            <asp:DropDownList ID="ddlflat" class="form-control" runat="server" DataSourceID="SqlDataSource2" 
                                                DataTextField="fnum" DataValueField="fid"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT [fnum], [fid] FROM [flat_mstr]"></asp:SqlDataSource>
                                        </div>
                                        </asp:Panel>
                                       </div>
                                    
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Description</label>
                                        <%--<input type="name" class="form-control" id="Email1" aria-describedby="emailHelp" placeholder="Enter Name">--%>
                                        <asp:TextBox ID="txtdesc" class="form-control" aria-describedby="emailHelp" 
                                             placeholder="Enter Description" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                    </div>
                                    <br />

                                      <div class="form-group">
                                        <label>Date</label>
                                        <%--<input type="text" class="form-control" placeholder="Text">--%>
                                        <%--<asp:TextBox ID="txt_date_time" class="form-control"  runat="server" 
                                            TextMode="DateTime" ></asp:TextBox>--%>
                                            <asp:Calendar ID="Cdate" runat="server" BorderStyle="None" BorderWidth="0" Width="70%"
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
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                     </div>
                                <div class="form-group">
                                   <asp:Button ID="Button1" class="btn  btn-primary" runat="server" 
                                        Text="Submit" onclick="btn_Submit_Click" Visible="false"></asp:Button>
                                   <asp:Button ID="Button2" class="btn  btn-primary" runat="server" 
                                       Text="Submit" onclick="btn2_Submit_Click" Visible="false"></asp:Button>
                       
                                </div>
                                <asp:Label ID="lbluid" runat="server" Text="" Visible="false"></asp:Label>
                                </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
</asp:Content>

