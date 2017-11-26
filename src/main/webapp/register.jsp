<%-- 
    Document   : register
    Created on : Nov 1, 2017, 5:39:37 PM
    Author     : mrivas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="../../../../favicon.ico">-->

    <title>Register</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/register.css" rel="stylesheet">
    <link href="assets/css/cover.css" rel="stylesheet">

    
  </head>

  <body>
    <div class="site-wrapper">
      <div class="site-wrapper-inner">
        <div class="cover-container">
            <header class="masthead clearfix">
                <div class="inner">
                  <nav class="nav nav-masthead">
                    <a class="nav-link" href="/pillApp/index.jsp">Home</a>
                    <a class="nav-link" href="/pillApp/sign-in.jsp">Sign-in</a>
                    <a class="nav-link active" href="/pillApp/register.jsp" >Register</a>
                    <a class="nav-link" href="#" >Prescriptions</a>
                    <a class="nav-link" href="/pillApp/contact-list.jsp" >Contacts</a>
                  </nav>
                </div>
            </header>
            <form class="form-signin" id="registerForm" action="/pillApp/CreateNewUserServlet" method="get">
        <h2 class="form-signin-heading" align="center">Registration </h2>
        <label for="inputFirstName" class="sr-only">Email address</label>
        <input type="email" id="username" name="username" class="form-control" placeholder="Email address" required autofocus>
        <br>
        <label for="inputSecondName" class="sr-only">First Name</label>
        <input type="text" id="inputFirstName" class="form-control" placeholder="First Name" required autofocus>
        <br>
        <label for="inputEmail" class="sr-only">Second Name</label>
        <input type="text" id="inputSecondName" class="form-control" placeholder="Second Name" required autofocus>
        <br>
        <label for="inputPhone" class="sr-only">Phone Number</label>
        <input type="number" id="inputPhone" class="form-control" placeholder="Phone Number" required autofocus>
        <br>
         <label for="userRol" class="sr-only">User Rol</label>
        <input type="text" id="rol" name="rol" class="form-control" placeholder="User Rol" required autofocus>
        <br>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
      </form>
        </div> <!-- /cover-container -->
       </div> <!-- /site-wrapper-inner -->
    </div> <!-- /site-wrapper -->
    <!-- main js file -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="assets/js/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="assets/js/main.js"></script>
  </body>
</html>
