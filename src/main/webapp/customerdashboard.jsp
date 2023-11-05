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
  
  <style>
  .menu-item-image {
    max-width: 35px; 
    max-height: 55px;
  }
</style>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
                        <!-- Button to trigger the modal -->
                        <button class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#menuModal${restaurant.id}">View Menu</button>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>



<c:forEach items="${rdata}" var="restaurant">
    <!-- Modal for each restaurant -->
    <div class="modal fade" id="menuModal${restaurant.id}" tabindex="-1" aria-labelledby="menuModalLabel${restaurant.id}" aria-hidden="true">
        <div class="modal-xl modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="menuModalLabel${restaurant.id}">Menu Items</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <c:choose>
                        <c:when test="${empty restaurant.menuItems}">
                            <p>No menu items available.</p>
                        </c:when>
                        <c:otherwise>
                            <div class="row">
                                <c:forEach items="${restaurant.menuItems}" var="menuItem">
								    <section style="background-color: #eee; padding: 1rem 0;">
								        <div class="container py-3">
								            <div class="row justify-content-center">
								                <div class="col-md-12 col-lg-10">
								                    <div class="card rounded-3 style="margin-bottom: 1rem; max-width: 300px;">
								                        <div class="card-body">
								                            <div class="row">
								                                <div class="col-md-12 col-lg-3 col-xl-3 mb-4 mb-lg-0">
								                                    <div class="bg-image hover-zoom ripple rounded ripple-surface">
								                                        <img src="img/pizza.jpg" class="w-100" alt="${menuItem.itemName}" />
								                                    </div>
								                                </div>
								                                <div class="col-md-6 col-lg-6 col-xl-6">
								                                    <h6>${menuItem.itemName}</h6>
								                                    <div class="d-flex flex-row">
								                                        <div class="text-danger mb-1 me-2">
								                                            <i class="fa fa-star"></i>
								                                            <i class="fa fa-star"></i>
								                                            <i class="fa fa-star"></i>
								                                            <i class="fa fa-star"></i>
								                                        </div>
								                                        <span>310</span>
								                                    </div>
								                                    <div class="mb-2 text-muted small">
								                                        <span>${menuItem.description}</span>
								                                    </div>
								                                </div>
								                                <div class="col-md-6 col-lg-3 col-xl-3 border-sm-start-none border-start">
								                                    <div class="d-flex flex-row align-items-center mb-1">
								                                        <h5 class="mb-1 me-1">Rs.${menuItem.price}</h5>
								                                    </div>
								                                    <h6 class="text-success">Free shipping</h6>
								                                    <div class="d-flex flex-column mt-4">
								                                        <div class="input-group quantity-input">
								                                            <button class="btn btn-outline-secondary decrement-quantity" type="button">-</button>
								                                            <input type="number" class="form-control" value="1" readonly>
								                                            <button class="btn btn-outline-secondary increment-quantity" type="button">+</button>
								                                        </div>
								                                        <button class="btn btn-primary btn-sm add-to-cart-btn" type="button" 
								                                            data-item="${menuItem.itemName}" data-price="${menuItem.price}">Add to Cart</button>
								                                    </div>
								                                </div>
								                            </div>
								                        </div>
								                    </div>
								                </div>
								            </div>
								        </div>
								    </section>
								</c:forEach>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="proceedToCheckoutBtn">
					    Proceed to Checkout
					</button>
                </div>
            </div>
        </div>
    </div>
</c:forEach>

  
  <br/>

<%@ include file="customerfooter.jsp" %>

<script>
    let totalItems = 0;
    let totalPrice = 0;

    function addToCart(button, itemName, price) {
        const quantityInput = $(button).parent().find(".quantity-input input");
        const quantity = parseInt(quantityInput.val());
        
        if (button.text() === "Add to Cart") {
            totalItems += quantity;
            totalPrice += price * quantity;
        } else {
            totalItems -= quantity;
            totalPrice -= price * quantity;
        }
        
        updateCartSummary();
    }

    function updateCartSummary() {
        $("#total-items").text(totalItems);
        const totalPriceDisplay = $("#totalPriceDisplay");
        totalPriceDisplay.text("Total Price: Rs." + totalPrice.toFixed(2));
    }

    $(document).ready(function () {
        $(".add-to-cart-btn").click(function () {
            const button = $(this);
            const price = parseFloat(button.data("price"));
            
            if (button.text() === "Add to Cart") {
                button.text("Remove from Cart");
                button.addClass("btn-danger");
                addToCart(button, button.data("item-name"), price);
            } else {
                button.text("Add to Cart");
                button.removeClass("btn-danger");
                const quantityInput = button.parent().find(".quantity-input input");
                quantityInput.val(1);
                addToCart(button, button.data("item-name"), price);
            }
        });

        $(".increment-quantity").click(function () {
            const quantityInput = $(this).parent().find("input");
            let currentQuantity = parseInt(quantityInput.val());
            if (currentQuantity < 10) {
                quantityInput.val(currentQuantity + 1);
                addToCart(this, $(this).data("item-name"), parseFloat($(this).data("price")));
            }
        });

        $(".decrement-quantity").click(function () {
            const quantityInput = $(this).parent().find("input");
            let currentQuantity = parseInt(quantityInput.val());
            if (currentQuantity > 1) {
                quantityInput.val(currentQuantity - 1);
                addToCart(this, $(this).data("item-name"), parseFloat($(this).data("price")));
            }
        });
    });
</script>



</body>

</html>