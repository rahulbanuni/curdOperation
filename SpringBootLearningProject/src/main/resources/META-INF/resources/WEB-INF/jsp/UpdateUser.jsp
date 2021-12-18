<html>
<head>
<style>
body
{
    background-image:url("images/S.jpg");
	background-size:100% 100%;
	background-repeat:no-repeat;
	color:white;
	margin-top:1px;
	postion:fixed;
}

.Box
{
	margin-left:35%;
	margin-top:5%;
	width:400px;
	height:388px;
	postion:fixed;
	background-color:navy;
	border: solid purple;
}
l
{
	margin-left:17%;
}
form
{
	margin-left:0%;
	margin-top:6%;
}
input
{
	width:200px;
	margin-left:17%;
}
.submit
{
	background-color:purple;
	color:white;
	width:265px;
}
.Textfield
{
	background-color:transparent;
	color:lime;
	width:265px;
}
</style>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="ChangeController.css">
<title>Edit User</title>
</head>

<body>

<div style="font-size:50px;">
<marquee behaviour="scrolling" scrollamount="10" bgcolor="navy">Welcome to Cetpa Infotech Pvt.Ltd.(Noida)</marquee>
</div>
<a style="color:lime;font-style:lato;font-size:20px;" href="Dashboard">back</a>
<div class="Box">
<form action="updateUser" method="post" encType="multipart/form-data">
<h1 style="padding-top:1%;font-size:30px;color:lime;margin-left:140px;">Edit User</h1>
<l>Full Name</l><br>
<input class="Textfield" type="text" name="fullName"  placeholder= ${user.fullName} value= ${user.fullName}><br>
<l>Username</l><br>
<input class="Textfield" type="text" name="userName"  placeholder= ${user.userName}  value= ${user.userName}><br>
<l>Password</l><br>
<input class="Textfield" type="text" name="password"   placeholder= ${user.password} value= ${user.password} ><br>
<l>Upload Profile Pic</l><br>
<input class="TextField" type="file" name="file"><br><br>
<input class="TextField" type="hidden" name="fileName" value=${user.fileName} ><br><br>
<input class="TextField" type="hidden" name="url" value =${user.url} ><br><br>

<input class="submit" type="submit" value="Save">
</form>
</div>

</body>
