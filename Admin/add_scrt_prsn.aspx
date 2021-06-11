<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin_home.master" AutoEventWireup="true" CodeFile="add_scrt_prsn.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Add Security person</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href=""><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Dashboard Admin</a></li>
                            <li class="breadcrumb-item"><a href="#!">Add Security Person</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Add Security Person</h5>
                    </div>
                    <div class="card-body">
                        <h5>Add Security Person details</h5>
                        
                        <div class="row">
                            <div class="col-md-6">
                            
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Security Person's Name</label>
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                                        <asp:TextBox ID="txtspname" class="form-control" placeholder="Enter name" runat="server"></asp:TextBox>
                                    </div>
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Security Person's Email</label>
                                        <%--<input type="name" class="form-control" id="Email1" aria-describedby="emailHelp" placeholder="Enter Name">--%>
                                        <asp:TextBox ID="txtspemail" class="form-control" aria-describedby="emailHelp" 
                                             placeholder="Enter Email Id" runat="server" TextMode="singleline"></asp:TextBox>
                                    </div>
                                    <br />

                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Is Active?</label>
                                        <asp:DropDownList ID="ddl_isactive" class="form-control" runat="server">
                                           <asp:ListItem Value="1"> yes </asp:ListItem>
                                           <asp:ListItem Value="0"> No </asp:ListItem> 
                                        </asp:DropDownList>
                                        
                                    </div>
                                    <div>
                                    <asp:Label ID="lblpass" runat="server" Text="" Visible="false"></asp:Label>
                                    </div>
                                     
                                     <div class="form-group">

                                    <%--<button type="submit" class="btn  btn-primary">Submit</button>--%>
                                    <asp:Button ID="btnsub" class="btn  btn-primary" runat="server" Text="Enter" 
                                        OnClientClick="btnsub_click" onclick="btnsub_Click"></asp:Button>
                                     <br />
                                     <div>
                                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                     </div>
                              
                            </div>
                            </div>
                        </div>
                        
                      
                        </div>
                    </div>
                </div>
    </div>
</section>
</asp:Content>

