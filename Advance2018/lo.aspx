<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lo.aspx.cs" Inherits="lo" %>
<%@ MasterType VirtualPath="~/Users/User.master" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="icon" type="image/png" href="Images/favicon.ico" />
    <link href="css/main.css" type="text/css" rel="stylesheet" />
    <link href="Cascade/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="css/util.css" type="text/css" rel="stylesheet" />
    


</head>
<body id="lobg" >
    
    <div class="limiter" >
		<div class="container-login100" style="background-color:darkorchid;">
			<div class="wrap-login100">
				<form class="login100-form validate-form" runat="server" autocomplete="off">
					<span class="login100-form-title p-b-26">
						Welcome
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100 validate-input" >
						<input id="username" class="input100" type="text" name="email" runat="server"/>
						<span class="focus-input100" runat="server" data-placeholder="Username"  ></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input id="password" class="input100" type="password" name="pass" runat="server" />
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn" runat="server">
						<div class="wrap-login100-form-btn" runat="server">
							<div class="login100-form-bgbtn">
                                 </div>

							<button  id="LogBtn" type="submit" class="login100-form-btn" runat="server"  onserverclick="LogBtn_ServerClick" >
								Login
							</button>
						</div>
                        <asp:Label ID="Res" runat="server" ForeColor="Red"></asp:Label>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Don’t have an account?
						</span>

						<a class="txt2" href="#">
							Sign Up
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>

    <script src="js/main.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>


</body>
</html>
