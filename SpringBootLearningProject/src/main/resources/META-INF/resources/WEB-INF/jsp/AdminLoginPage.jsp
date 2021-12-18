<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<Style>
body
{
	background-image:url("images/S.jpg");
	background-size:100% 100%;
	background-repeat:no-repeat;
	color:white;
}

h1
{
	margin-left:26%;
	margin-top:8%;
	padding-top:15px;
	color:lime;
}

form
{
	margin-left:16%;
	margin-top:5%;
	padding-top:10px;
}
.submit
{
	width:270px;
	background-color:purple;
	color:white;

}

.l
{
	color:lime;
	font-style:lato;
	font-size:20px;
}

.l1
{
   margin-left:17%;
   color:red;
}
.l2
{
   margin-left:12%;
   color:yellow;
}
.l3
{
   margin-left:45%;
   color:aqua;
}

.Box
{
	margin-left:35%;
	margin-top:10%;
	width:400px;
	height:350px;
	background-color:navy;
	border:solid purple;
}
.Textfield
{
	width:270px;
	background-color:transparent;
	color:lime;

}
</Style>
<title>Login</title>
</head>

<body class="Login">
<div style="font-size:50px;">
<marquee behaviour="scrolling" scrollamount="10" bgcolor="navy">Welcome to Cetpa Infotech Pvt.Ltd.(Noida)</marquee>
</div>

<div class="Box">
<h1>Admin Login</h1>
<form action="validateAdmin" method="post">
<l>Email Id</l><br>
<input class="TextField" type="text" name="email"><br>
<l>Password</l><br>
<input class="TextField" type="password" name="password"><br><br>
<input class="submit" type="submit" value="Sign in"><br><br>
</form>
<a class="l1" href="ForgotPasswordController1.jsp">Forgot  Password</a>
<a class="l2" href="ResetPassword.jsp">Reset Password</a><br><br>
<a class="l3" href="signUpAdmin">Sign Up</a>
</div>