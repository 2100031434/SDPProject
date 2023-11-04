<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Ctrl + EAT | Home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<%@ include file="cnavbar.jsp" %>


  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="/">Home</a></li>
            <li>Dashboard</li>
          </ol>
        </div>

      </div>
    </div><!-- End Breadcrumbs -->

<c:if test="${not empty name}">
  <div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Welcome ${name}!</strong> You should check out some of our offers for new users.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
</c:if>
    
<div class="jumbotron jumbotron-fluid bg-warning text-black">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="display-4">Today's Offers</h1>
                    <p class="lead">Chicken Biryani 50% off</p>
                </div>
                <div class="col-md-6 text-center">
                    <img src="img/biryani.jpg" alt="biryani" class="rounded" style="max-height: 300px; width: auto;"/>
                </div>
            </div>
        </div>
    </div>
    

<div class="container">
        <h2 class="text-center mt-4">Shop by Category</h2>
        <div class="row mt-4">
            <div class="col-md-4 mb-4">
                <div class="card">
                <!-- 205 x 144 -->
                    <img src="img/healthy.jpg" class="card-img-top" alt="Category 1">
                    <div class="card-body">
                        <h5 class="card-title">Healthy</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/burger.jpg" class="card-img-top" alt="Category 2">
                    <div class="card-body">
                        <h5 class="card-title">Burger</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/pizza.jpg" class="card-img-top" alt="Category 3">
                    <div class="card-body">
                        <h5 class="card-title">Pizza</h5>
                    </div>
                </div>
            </div>
            <!-- Add more cards as needed -->
        </div>
    </div>

    
    <div class="container">
        <h2 class="text-center mt-4">Shop by Cuisine</h2>
        <div class="row mt-4">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/french cuisine.jpg" class="card-img-top" alt="Cuisine 1">
                    <div class="card-body">
                        <h5 class="card-title">French</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/japanese cuisine.jpg" class="card-img-top" alt="Cuisine 2">
                    <div class="card-body">
                        <h5 class="card-title">Japanese</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/indian cuisine.jpg" class="card-img-top" alt="Cuisine 3">
                    <div class="card-body">
                        <h5 class="card-title">Indian</h5>
                    </div>
                </div>
            </div>
            <!-- Add more cards as needed -->
        </div>
    </div>

    <div class="container">
    <h2 class="text-center mt-4">Visit Restaurant</h2>
    <div class="row mt-4">
        <c:forEach items="${rdata}" var="restaurant">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/restaurant1.jpg" class="card-img-top" alt="<c:out value="${restaurant.name}" />">
                    <div class="card-body">
                        <h5 class="card-title"><c:out value="${restaurant.name}" /></h5>
                        <p class="card-text"><c:out value="${restaurant.address}" /></p>
                        <a href="<c:url value='viewmenu/${restaurant.id}' />" class="btn btn-dark">View Menu</a>
                    </div>
                </div>
            </div>
	        </c:forEach>
	    </div>
	</div>

  
  <br/>

<%@ include file="customerfooter.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>