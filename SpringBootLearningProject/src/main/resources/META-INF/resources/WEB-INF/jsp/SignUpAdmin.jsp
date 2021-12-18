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
	margin-left:36%;
	margin-top:6%;
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
   margin-left:37%;
   color:aqua;
}

.Box
{
	margin-left:35%;
	margin-top:10%;
	width:400px;
	height:350px;
	background-color:navy;
	border:solid purple
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
<a class="l" href="/">back</a>

<div class="Box">
<h1>Sign Up</h1>
<form action="saveAdmin" method="post">
<l>First Name</l><br>
<input class="TextField" type="text" name="firstName"><br>
<l>Last Name</l><br>
<input class="TextField" type="text" name="lastName"><br>
<l>Email Id</l><br>
<input class="TextField" type="text" name="email" required><br>
<l>Password</l><br>
<input class="TextField" type="password" name="password"><br><br>
<input class="submit" type="submit" value="Sign in"><br><br>
</form>
</div>