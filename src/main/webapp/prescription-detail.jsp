<%-- 
    Document   : contact-list
    Created on : Nov 3, 2017, 10:34:20 AM
    Author     : mrivas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="../../../../favicon.ico">-->

    <title>Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/prescriptiondetail.css" rel="stylesheet">
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
                <a class="nav-link" href="/pillApp/register.jsp" >Register</a>
                <a class="nav-link active" href="#" >Prescriptions</a>
                <a class="nav-link" href="/pillApp/contact-list.jsp" >Contacts</a>
              </nav>
            </div>
          </header>

            <main role="main">

              <!-- Main jumbotron for a primary marketing message or call to action -->
              <div class="jumbotron">
                <div class="container">
                  <h1 class="display-3">Prescription Detail</h1>
                  <p>Add in the list, the name and schedule for the medications.</p>
                </div>
              </div>

              <div class="cover-content-container">
                  <!-- Start of multi field component-->
                    <div class="panel panel-default">
                      <div class="panel-heading">Dynamic Form Fields - Add & Remove Multiple fields</div>
                      <div class="panel-heading">Education Experience</div>
                      <div class="panel-body">

                        <div id="education_fields"></div>
                        <div class="col-sm-2 multifield-spacing nopadding">
                          <div class="form-group">
                            <input type="number" class="form-control" id="Quantity" name="Quantity[]" value="" placeholder="Quantity">
                          </div>
                        </div>
                        <div class="col-sm-2 multifield-spacing nopadding">
                          <div class="form-group">
                            <input type="text" class="form-control" id="Medname" name="Medname[]" value="" placeholder="Name">
                          </div>
                        </div>
                        <div class="col-sm-2 multifield-spacing-type nopadding">
                          <div class="form-group">
                            <input type="datetime-local" class="form-control" id="Medtime" name="Medtime[]" value="" placeholder="Medication Time">
                          </div>
                        </div>
                        <div class="col-sm-2 multifield-spacing nopadding">
                          <div class="form-group">
                            <input type="number" class="form-control" id="Medduration" name="Medduration[]" value="" placeholder="Duration">
                          </div>
                        </div>

                        <div class="col-sm-2 nopadding">
                          <div class="form-group">
                            <div class="input-group-btn">
                              <button class="btn btn-success" type="button"  onclick="education_fields();"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> </button>
                            </div>
                          </div>
                        </div>
                        <div class="clear"></div>
                      </div>
                      <div class="panel-footer">
                        <small>Press <span class="glyphicon glyphicon-plus gs"></span> to add another form field.</small>, <small>Press <span class="glyphicon glyphicon-minus gs"></span> to remove form field.</small>
                      </div>
                    </div>                  
                  <!-- End of multi field component -->

              </div> <!-- /container -->

            </main>

            <footer class="mastfoot">
              <p>&copy; Company 2017</p>
            </footer>
            
        </div>
      </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="assets/js/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/prescriptionDetail.js"></script>
  </body>
</html>
