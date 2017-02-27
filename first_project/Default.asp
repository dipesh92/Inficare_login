<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Login </title>
</head>

  <link rel="stylesheet" href="css/style.css">

<div class="login-page">

  <div class="form">
    <form class="register-form">
    <h1> Inficare Register </h1>
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form class="login-form" action="validation.asp" method="post">
    <h1> Inficare Login </h1>
      <input type="text"  name ="user" placeholder="username" required="required"/>
      <input type="password" name ="password" placeholder="password" required="required"/>
      <button type="submit" value="Submit" >login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    

<!--<form action="validation.asp" method="post"> 
<p align="center"> Login Form </p>
<p align="center">Username: 
  <input type ="text" name ="user" align="center" />
</p>
	<p align="center">Password: 
	  <input type ="password" name ="password" align="center" />
	  <br> <br />     
      <input type="submit" value="Submit" align="center" />
  </form>-->
</body>
</html>
