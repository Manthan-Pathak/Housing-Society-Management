<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adm_log.aspx.cs" Inherits="Admin_adm_log" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
	<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 11]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="" />
	<meta name="keywords" content="">
	<meta name="author" content="Phoenixcoded" />
	<!-- Favicon icon -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

	<!-- vendor css -->
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<form id="form1" runat="server">
    <div>
<div class="auth-wrapper">
	<div class="auth-content">
		<div class="card">
			<div class="row align-items-center text-center">
				<div class="col-md-12">
					<div class="card-body">
						<img src="assets/images/logo-dark.png" alt="" class="img-fluid mb-4">
						<h4 class="mb-3 f-w-400">Signin</h4>
						<div class="form-group mb-3">
							<%--<label class="floating-label" for="Email"></label>--%>
							<%--<input type="text" class="form-control" id="Email" placeholder="">--%>
                            <asp:TextBox ID="txt_email" class="form-control" placeholder="Email address" runat="server"></asp:TextBox>
						</div>
						<div class="form-group mb-4">
							<%--<label class="floating-label" for="Password"></label>--%>
							<%--<input type="password" class="form-control" id="Password" placeholder="">--%>
                            <asp:TextBox ID="txt_pass" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
						</div>
                        <div class="form-group mb-4">
                            <asp:Label ID="lbl_err" runat="server" Text=""></asp:Label>
                        </div>
						<%--<div class="custom-control custom-checkbox text-left mb-4 mt-2">
							<input type="checkbox" class="custom-control-input" id="customCheck1">
							<label class="custom-control-label" for="customCheck1">Save credentials.</label>
						</div>--%>
						<%--<button class="btn btn-block btn-primary mb-4">Signin</button>--%>
                        <asp:Button ID="btn_signin" runat="server" class="btn btn-block btn-primary mb-4" 
                            Text="Sign In" onclick="signin_Click" />
						<p class="mb-2 text-muted">Forgot password? <a href="auth-reset-password.html" class="f-w-400">Reset</a></p>
						<p class="mb-0 text-muted">Don’t have an account? <a href="auth-signup.html" class="f-w-400">Signup</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
    
    
    </div>
    </form>
</body>
</html>
