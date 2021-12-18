<%@page import="java.util.*"%>
<%@page import="com.springBoot.model.User"%>
<head>
<style>
body
{
  background-image:url("images/S.jpg");
  background-size:100% 100%;
  background-repeat:no-repeat;
}
.Box
{
  margin-left:130px;
  margin-top:80px;
  position:absolute;
  width:1050px;
  height:40px;
  background-color:navy;
  color:white;
  border:solid blue;
}
.Box a
{
  margin-left:80px;
  font-size:15px;
  padding:5px;
  font-family:lato;
  background-color:black;
  color:lime;
  border:solid red;
}
.Box a:hover
{
  color:blue;
}

table
{
  width:1055px;
}
table,th,td
{
  border:solid navy;
  border-collapse:collapse;
}
th
{
  background-color:red;
  color:white;
}
td
{
  background-color:black;
  color:white;
}

</style>
<title>Employees</title>
</head>
<body>
<a class="l" href="/">back</a>

<div class="Box">
<form action="searchUser" method="post">
<b style="font-size:30px;padding:5px;">Registered Users</b>
<a href="addUser">Add User</a>
<input style="margin-left:350px;border:solid purple;font-family:lato;" type="text" name="searchId" placeholder="Enter Id">
<input style="background-color:purple;color:white" type="submit" value="search">
</form>
</div>

<div style="margin-left:130px;margin-top:150px;position:absolute;color:white;">
<table>
<tr>
<th style="width:10px">Sr.No.</th>
<th style="width:20px">User ID</th>
<th style="width:20px">Photo</th>
<th style="width:120px">Full Name</th>
<th style="width:80px">Username</th>
<th style="width:80px">Password</th>
<th style="width:30px">Tools</th>
</tr>
<tr>
<%
  User user= (User)session.getAttribute("searchedUser");
%>
<td style="width:10px;background-color:blue;color:white;">1</td>
<td style="width:20px;"><%=user.getId()%></td>
<%
   if(!user.getFileName().equals(""))
    {
%>
<td><img src="images/<%=user.getFileName()%>" width="60px" height="60px"></td>
<%
    }
   else
   {
%>
<td><img src="images/S.jpg" width="60px" height="60px"></td>
<%
   }
%>
<td style="width:120px"><%=user.getFullName()%></td>
<td style="width:80px"><%=user.getUserName()%></td>
<td style="width:80px"><%=user.getPassword()%></td>
<td style="width:30px;background-color:blue;"><a style="color:white;" href="editUser?id=<%=user.getId()%>">Edit/</a>
                                               <a style="color:white;" href="removeUser?id=<%=user.getId()%>">Remove</a></td>
</tr>
</table>
</div>
</body>