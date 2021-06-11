<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_home.master" AutoEventWireup="true" CodeFile="add_user.aspx.cs" Inherits="Admin_Default" %>

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
                            <li class="breadcrumb-item"><a href="#!">Add User</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Add New User</h5>
                    </div>
                    <div class="card-body">
                        <h5>Add user details</h5>
                        <hr>
                        <div class="row">
                            <div class="col-md-6">
                            
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                                        <asp:TextBox ID="txtemail" class="form-control" aria-describedby="emailHelp" placeholder="Enter email" runat="server"></asp:TextBox>
                                    </div>
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Name</label>
                                        <%--<input type="name" class="form-control" id="Email1" aria-describedby="emailHelp" placeholder="Enter Name">--%>
                                        <asp:TextBox ID="txtname" class="form-control" aria-describedby="emailHelp" placeholder="Enter Name" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Select Wing</label>
                                        <%--<select class="form-control" id="Select1">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>--%>
                                        <asp:DropDownList ID="ddl_wing" class="form-control" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="wname" DataValueField="wid">
                                            
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [wname], [wid] FROM [wing_mstr]"></asp:SqlDataSource>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Is Active?</label>
                                        <asp:DropDownList ID="ddl_isactive" class="form-control" runat="server">
                                           <asp:ListItem Value="1"> yes </asp:ListItem>
                                           <asp:ListItem Value="0"> No </asp:ListItem> 
                                        </asp:DropDownList>
                                        
                                    </div>
                                    <div>
                                        <asp:Label ID="lblpass" runat="server" Text="" Visible="False"></asp:Label>
                                    </div>
                                    <%--<button type="submit" class="btn  btn-primary">Submit</button>--%>
                                    <asp:Button ID="btnsub" class="btn  btn-primary" runat="server" Text="Submit" 
                                        OnClientClick="btnsub_click" onclick="btnsub_Click"></asp:Button>
                                     
                                     <div>
                                     <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
                                     </div>
                              
                            </div>
                            <div class="col-md-6">
                                    <%--<div class="form-group">
                                        <label>Password</label>
                                        <%--<input type="text" class="form-control" placeholder="Text">
                                       <asp:TextBox ID="txt_pass" class="form-control" value="123456" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>--%>

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Phone number</label>
                                       <%-- <input type="name" class="form-control" id="Name1" aria-describedby="emailHelp" placeholder="Enter Number">--%>
                                       <asp:TextBox ID="txtnum" class="form-control" aria-describedby="emailHelp" placeholder="Enter Number" runat="server" TextMode="Number"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Select Flat Number.</label>
                                      <%--  <select class="form-control" id="exampleFormControlSelect1">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>--%>

                                        <asp:DropDownList ID="ddl_flatno"  DataSourceID="SqlDataSource2" class="form-control" runat="server"
                                        DataTextField="fnum" DataValueField="fid"></asp:DropDownList>
                                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [fnum], [fid] FROM [flat_mstr]"></asp:SqlDataSource>
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Type?</label>
                                        <asp:DropDownList ID="ddltype" class="form-control" runat="server">
                                           <asp:ListItem Value="Owner"> Owner </asp:ListItem>
                                           <asp:ListItem Value="Co-Owner"> Co-Owner </asp:ListItem>
                                           <asp:ListItem Value="Owner's Family"> Owner's Family </asp:ListItem>
                                           <asp:ListItem Value="Tenant"> Tenant </asp:ListItem>
                                           <asp:ListItem Value="Tenant's Family"> Tenant's Family </asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>
                              
                            </div>
                        </div>
                        
                      
                        </div>
                    </div>
                </div>
    </div>
</section>
</asp:Content>

