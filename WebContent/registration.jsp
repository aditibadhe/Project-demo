<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="register.css">
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<style>
.loginbox{
align:center;
height:750px;
width:500px;
background-color:#80c1ff;
color:beige;
top:80%;
left:50%;
position:absolute;
transform:translate(-50%,-50%);
box-sizing:border-box;
padding:40px 30px;
}
.loginbox p{
margin:0px;
padding:0px;
font-weight:bold;
}
.loginbox input{
width:100%;
margin-bottom:20px;
}

.loginbox input[type="text"],input[type="number"],input[type="email"], input[type="password"]
{
border:none;
border-bottom: 1px solid #fff;
background: transparent;
outline:none;
height:40px;
coloe:#fff;
font-size:16px;
}
.loginbox input[type="submit"]
{
border:none;
outline:none;
height:40px;
background:#339cff;
color:#fff;
font-size:20px;
border-radius:20px;
}
.loginbox input[type="submit"]:hover
{
cursor:pointer;
background:#0069cc;
color:#fff;
}
</style>
<body style="background-color:#cce6ff">
<div class="loginbox">
    <form action="register" method="POST">
        
          <h2 style="color:#0069cc;font-size:20px;text-align:center;">USER REGISTRATION</h2>
       <p> Username  :</p> <input type="text" name="user_name" /><br>
        <p>Phone     : </p><input type="number" name="phone_no" /><br>
        <p>Email     : </p><input type="email" name="email" /><br>
        <p>Address   : </p><input type="text" name="address" /><br>
        <p>Registration date  : </p><input type="text" name="reg_date" /><br>
        <p>Password  : </p><input type="password" name="password" /><br>
        <p>Upload photo: </p><input type="text" name="upload_photo" /><br>
                    <input type="submit" value="Register" /><br>
     </form>
     </div>
</body>
</html>
