<%-- 
    Document   : sign-in
    Created on : Nov 1, 2017, 5:35:38 PM
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

    <title>Sign-in</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/signin.css" rel="stylesheet">
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
                    <a class="nav-link active" href="/pillApp/sign-in.jsp">Sign-in</a>
                    <a class="nav-link" href="/pillApp/register.jsp" >Register</a>
                    <a class="nav-link" href="#" >Prescriptions</a>
                    <a class="nav-link" href="#" >Contacts</a>
                  </nav>
                </div>
            </header>

            <form class="form-signin">
              <h2 class="form-signin-heading">Please sign in</h2>
              <label for="inputEmail" class="sr-only">Email address</label>
              <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
              <br>
              <label for="inputPassword" class="sr-only">Password</label>
              <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me"> Remember me
                </label>
              </div>
              <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>

        </div> <!-- /cover-container -->
      </div> <!-- /site-wrapper-inner -->
    </div> <!-- /site-wrapper -->
  </body>
</html>
