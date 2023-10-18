<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Ctrl + EAT | Restaurant Orders</title>
</head>
<body>
<%@ include file="restaurantnavbar.jsp" %>

	<!-- Order Management Heading -->
    <section class="container my-4">
    <h2 class="text-center mb-4">Manage Orders</h2>

    <!-- Search Bar -->
    <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Search orders..." aria-label="Search orders">
        <button class="btn btn-primary" type="button">Search</button>
    </div>

    <!-- List of Orders -->
    <div class="row mt-4">
        <div class="col-lg-12">
            <table class="table">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer Name</th>
                        <th>Status</th>
                        <th>Order Date</th>
                        <th>Total</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Order 1 -->
                    <tr>
                        <td>XRF123</td>
                        <td>John Doe</td>
                        <td>Delivered</td>
                        <td>2023-08-17</td>
                        <td>Rs. 1300</td>
                        <td>
                            <button class="btn btn-success">Accept</button>
                            <button class="btn btn-danger">Reject</button>
                        </td>
                    </tr>
                    <!-- Order 2 -->
                    <tr>
                        <td>ABC456</td>
                        <td>Jane Smith</td>
                        <td>Processing</td>
                        <td>2023-08-16</td>
                        <td>Rs. 850</td>
                        <td>
                            <button class="btn btn-success">Accept</button>
                            <button class="btn btn-danger">Reject</button>
                        </td>
                    </tr>
                    <!-- Add more orders as needed -->
                </tbody>
            </table>
        </div>
    </div>

        <!-- Pagination -->
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                </li>
                <li class="page-item active" aria-current="page">
                    <a class="page-link" href="#">1 <span class="visually-hidden">(current)</span></a>
                </li>
                <!-- Add more pagination items as needed -->
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>
    </section>
    
    <%@ include file="restaurantfooter.jsp" %>
</body>
</html>