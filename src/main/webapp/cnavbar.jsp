<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Ctrl + EAT | Welcome</title>
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
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
  
    <!-- Font Awesome Icons CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  

</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
  <div class="container d-flex align-items-center justify-content-between">

    <a href="customerdashboard" class="logo d-flex align-items-center me-auto me-lg-0">
      <!-- Uncomment the line below if you also wish to use an image logo -->
      <img src="assets/img/logo.png" alt="">
      <h1>Ctrl + EAT<span>.</span></h1>
    </a>

   <div class="center-content">
  <form class="d-flex" method="get">
    <div class="input-group">
      <label class="visually-hidden" for="autoSizingSelect">Preference</label>
      <span class="input-group-text"><i class="bi bi-geo-alt"></i></span>
      <select class="form-select" id="autoSizingSelect">
        <option selected>Vijayawada</option>
        <option value="1">Guntur</option>
        <option value="2">Rajahmundry</option>
        <option value="3">Hyderabad</option>
      </select>
    </div>

   <div class="input-group input-group-md">
      <input class="form-control" type="search" placeholder="Search for restaurant, cuisine or a dish" aria-label="Search">
      <button class="btn btn-outline-secondary" type="submit">
        <i class="bi bi-search"></i>
      </button>
    </div>
  </form>
</div>


    <div class="right-content">
    <div class="profile-dropdown">
      <i class="bi bi-person"></i>
      <a href="#" id="profile-dropdown" data-bs-toggle="dropdown" aria-expanded="false">
        Profile <i class="bi bi-chevron-down"></i>
      </a>
      <ul class="dropdown-menu" aria-labelledby="profile-dropdown">
        <li><a class="dropdown-item" href="customerprofile">Profile</a></li>
        <li><a class="dropdown-item" href="customerorders">Orders</a></li>
        <li><a class="dropdown-item" href="customercart">Cart</a></li>
        <li><a class="dropdown-item" href="customerlogout">Logout</a></li>
      </ul>
    </div>
  </div>


  </div>
</header><!-- End Header -->

  
  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>
  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
   <!-- Add Bootstrap JS and jQuery -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  
</body>
</html>