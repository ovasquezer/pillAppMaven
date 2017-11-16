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

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/newprescription.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">Registration Information</h2>
        <label for="inputTreatment" class="sr-only">Treatment</label>
        <input type="text" id="inputTreatment" class="form-control" placeholder="Treatment Name" required autofocus>
        <label for="inputDate" class="sr-only">Date</label>
        <input type="date" id="inputDate" class="form-control" placeholder="Prescription Date" required autofocus>
        <label for="inputHospitalName" class="sr-only">Hospital Name</label>
        <input type="text" id="inputHospitalName" class="form-control" placeholder="Hospital Name" required autofocus>
        <label for="inputDoctorFirstName" class="sr-only">Doctor First Name</label>
        <input type="text" id="inputDoctorFirstName" class="form-control" placeholder="Doctor First Name" required autofocus>
        <label for="inputDoctorLastName" class="sr-only">Doctor Last Name</label>
        <input type="text" id="inputDoctorLastName" class="form-control" placeholder="Doctor Last Name" required autofocus>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Continue</button>
      </form>

    </div> <!-- /container -->
  </body>
</html>
