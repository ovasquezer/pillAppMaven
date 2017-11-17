


$(document).ready(function(){
    $( "#registerForm" ).submit(function( event ) {
      var userName = $("#inputEmail").val();
      var password = $("#inputPassword").val();
      var rol = $("#userRol").val();
      var urlComplete = "localhost:8084/pillApp/CreateNewUserServlet?username=" + userName + "&password=" + password + "&rol=" + rol;
      $http({
            method : 'GET',
            url : urlComplete
        }).success(function(data, status, headers, config) {
            if (data.role == "Developer"){
                var createP = document.getElementById('pm');
                if (createP != null){
                    createP.style.display = 'none';
                }
            }
            $scope.person = data;
        }).error(function(data, status, headers, config) {
            // called asynchronously if an error occurs
            // or server returns response with an error status.
        });
      event.preventDefault();
    });
});

