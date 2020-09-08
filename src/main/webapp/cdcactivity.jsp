<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 
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
  
  
  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 		<script>
 		$(document).on("click", ".btn-primary", function () {
	    var itemid= $(this).attr('data-item');
	    $("#lineitem").attr("action","delete-placement-notice?"+itemid)
	 	});
 		</script>



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
              <h2 class="mb-0">CDC Activity</h2>
              <p>Manage all CDC Activity</p>
            </div>
          </div>
        </div>
      </div> 
      
      <div class="site-section">
        <div class="container">
    
          <div class="accordion" id="accordionExample">
            <div class="card">
              <div class="card-header" id="headingOne">
                <h2 class="mb-0">
                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                    View All Placement Notice
                  </button>
                </h2>
              </div>
          
              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div class="card-body">
                 <!--Card here-->
                  <div class="container">
            <div class="row">
              <!--Start for loop-->
              <c:forEach var="notice" items="${placementnotice}">
              <div class="col-md-4">
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                  <div class="card-header">Placement Notice</div>
                  <div class="card-body text-primary">
                    <h5 class="card-title">${notice.placementCompanyName}</h5>
                    <p class="card-text">${notice.companyjobdescription}</p>
                  </div>
                  <%-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#notice${notice.placementNoticeId}">
                    View Details
                  </button> --%>
                  
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1" id="placesbtn" data-item="id=${notice.placementNoticeId}">
  								View Details</button>
                  
                  
                  <!-- Modal -->
                  <form id="lineitem" action ="delete-placement-notice?id=${notice.placementNoticeId}" method="post">
                  <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModal1label" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title text-primary" id="noticeid${notice.placementNoticeId}">${notice.placementCompanyName}</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span> 
                          </button>
                        </div>
                        <div class="modal-body">
                         <h5 class="card-title">${notice.companyjobdescription}</h5>
        				<p class="card-text">${notice.campusSelection}</p>
        				<p class="card-text">${notice.visitDate}</p>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                       
 						<button type="submit"  class="btn btn-danger" >Delete</button>
						 </div>
                      </div>
                    </div>
                  </div>
                  </form>
                  
                  
                  
                  
                  
                </div>
              </div>
				</c:forEach>
              <!--End For loop-->
           
            </div>
          </div>
                 <!--Card end-->
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header" id="headingTwo">
                <h2 class="mb-0">
                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    View All Traning
                  </button>
                </h2>
              </div>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                <div class="card-body">
                <!--View cards-->
                 <!--Card here-->
                  <!--Card here-->
                  <div class="container-fluid">
                    <div class="row">
                      <!--Start for loop-->
                      	<c:forEach var="training" items="${trainings}">
                      	
                      <div class="col-md-4">
                      <form action="view-training-details?trainingid=${training.trainingid}" method="post">
                        <div class="card border-primary mb-3" style="max-width: 18rem;">
                          <div class="card-header">traning</div>
                          <div class="card-body text-primary">
                            <h5 class="card-title">${training.trainingName}</h5>
                            <p class="card-text">${training.department}</p>
                          </div>
                          <button type="submit" class="btn btn-primary">
                            View All
                          </button>
                          <!-- Modal -->
                          <!-- <div class="modal fade" id="traning1" tabindex="-1" role="dialog" aria-labelledby="traningid1" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="traningid1">Traning Title</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span> 
                                  </button>
                                </div>
                                <div class="modal-body">
                                 1 TraningDetails Full
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                  <button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>
                                </div>
                              </div>
                            </div>
                          </div> -->
                          
                        </div>
                        </form>
                      </div>
                      
        </c:forEach>
                      <!--End For loop-->
                      <!-- <div class="col-md-4">
                        <div class="card border-primary mb-3" style="max-width: 18rem;">
                          <div class="card-header">traning</div>
                          <div class="card-body text-primary">
                            <h5 class="card-title">Title of traning</h5>
                            <p class="card-text">Small decription of traning</p>
                          </div>
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#traning2">
                            View All
                          </button>
                          Modal
                          <div class="modal fade" id="traning2" tabindex="-1" role="dialog" aria-labelledby="traningid2" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="traningid2">traning  Title</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span> 
                                  </button>
                                </div>
                                <div class="modal-body">
                                 Traning 2 Details Full
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                  <button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div> -->
                    </div>
                  </div>
                         <!--Card end-->
                <!--Card End here-->
                </div>
              </div>
            </div>
           <div class="card">
              <div class="card-header" id="headingThree">
                <h2 class="mb-0">
                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    View All CDC Event
                  </button>
                </h2>
              </div>
          
              <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                <div class="card-body">
                 <!--Card here-->
                  <div class="container">
            <div class="row">
              <!--Start for loop-->
              <c:forEach var="event" items="${details}">
              <div class="col-md-4">
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                  <div class="card-header">Event Notice</div>
                  <div class="card-body text-primary">
                    <h5 class="card-title">${event.eventname}</h5>
                    <p class="card-text">${event.eventtype}</p>
                  </div>
                  <%-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#notice${notice.placementNoticeId}">
                    View Details
                  </button> --%>
                  
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2" id="placesbtn" data-item="id=${event.id}">
  								View Details</button>
                  
                  
                  <!-- Modal -->
                  <form id="lineitem" action ="delete-event-notice?id=${event.id}" method="post">
                  <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModal2label" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title text-primary" id="noticeid${event.id}">${event.eventname}</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span> 
                          </button>
                        </div>
                        <div class="modal-body">
                         <h5 class="card-title">${event.teachername}</h5>
        				<p class="card-text">${event.expectedoutcome}</p>
        				<p class="card-text">${event.actualoutcome}</p>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                       
 						<button type="submit"  class="btn btn-danger" >Delete</button>
						 </div>
                      </div>
                    </div>
                  </div>
                  </form>
                  
                  
                  
                  
                  
                </div>
              </div>
				</c:forEach>
              <!--End For loop-->
           
            </div>
          </div>
                 <!--Card end-->
                </div>
              </div>
            </div>
           
            
          </div>
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