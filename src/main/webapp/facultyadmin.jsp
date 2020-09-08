<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Academics &mdash; Website by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">



</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>


    <div class="py-2 bg-light">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-9 d-none d-lg-block">
            <a href="#" class="small mr-3"><span class="icon-question-circle-o mr-2"></span> Have a questions?</a> 
            <a href="#" class="small mr-3"><span class="icon-phone2 mr-2"></span> 10 20 123 456</a> 
            <a href="#" class="small mr-3"><span class="icon-envelope-o mr-2"></span> info@mydomain.com</a> 
          </div>
        </div>
      </div>
    </div>
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
	<jsp:include page="headermenu.jsp"></jsp:include>
    </header>

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">Faculty Member</h2>
              <p>Manage all Faculty Members</p>
            </div>
          </div>
        </div>
      </div> 
      
    <div class="site-section">
      <div class="container-fluid">
        <div class="row">
          <div class="col-8 mb-2">
            <div class="col-4">

              <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><b>+ </b>Add new faculty</button>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><b>+ </b>Add new faculty</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post" action="save-teacher-details?department=${department}">
      <div class="modal-body">
        
          			<div class="form-group">
                        
                            <label for="teacherName">FullName</label>
                            <input type="text" id="teacherName" name="teacherName"  class="form-control form-control-lg">
                        </div>
                        <div class="form-group">
                            <label for="teacherEmailId">Email Id</label>
                            <input type="email" id="teacherEmailId" name="teacherEmailId"  class="form-control form-control-lg">
                        </div>
                        <div class="form-group">
                            <label for="teacherMobileNo">Mobile No</label>
                            <input type="number" id="teacherMobileNo" name="teacherMobileNo"  class="form-control form-control-lg">
                        </div>
                        
                        <!-- <div class="form-group">
                          <label for="department">Choose Your department:</label>
                              <div class="col-md-6">
                                        <select name="teacherDepartment">
                                            <option value="select">--Select--</option>
                                            <option value="ComputerScienceAndEngineering">Cse</option>
                                            <option value="ElectricalEngineering">E.E</option>
                                            <option value="Mechanical Engineering">M.E</option>
                                            <option value="Civil Engineering">C.E</option>
                                            <option value="ElectricalAndelectronics">E.C.E</option>
                                      	 </select>
                               </div>
                        </div> -->
                        
                        <div class="form-group">
                            <label for="pword">Password</label>
                            <input type="password" id="pword" name="password"  class="form-control form-control-lg">
                        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
    </form>
    </div>
  </div>
</div>




            </div>
          </div>
        </div>
      </div>
      
            <div class="container">

       
              <!--Table-->
              <table class="table table-striped">
                <thead class="thead-dark">
                
                  <tr>
                    
                    <th scope="col">Name</th>
                    <th scope="col">Email Id</th>
                    <th scope="col">Mobile No</th>
                    <th scope="col">Department</th>
                    <th scope="col">Password</th>
                    <th scope="col">Delete</th>
                  </tr>
                </thead>
                <tbody>
                  <!--Start for loop-->
                  <c:forEach var="teacher" items="${teachers}">
                  <tr>
                    <th scope="row">${teacher.teacherName}</th>
                    <td>${teacher.teacherEmailId}</td>
                    <td>${teacher.teacherMobileNo}</td>
                    <td>${teacher.teacherDepartment}</td>
                    <td>${tecaher.password}</td>
                    <td><a href="delete-teacher?id=${teacher.id}&department=${teacher.teacherDepartment}" class="badge badge-danger">Delete</a></td>
                  </tr>
                  </c:forEach>
                  <!--End here-->
                </tbody>
              </table>
             
      </div>
   </div>
   </div>
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>