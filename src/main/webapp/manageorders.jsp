<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<title>Ctrl + EAT | Manage Orders</title>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

<!-- Page content -->
    <div class="container mt-4">
        <h2 class="text-center mb-4">Manage Orders</h2>
        <!-- Filter and search options -->
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="statusFilter">Status:</label>
                <select class="form-control" id="statusFilter">
                    <option value="all">All</option>
                    <option value="pending">Pending</option>
                    <option value="in-progress">In Progress</option>
                    <option value="delivered">Delivered</option>
                </select>
            </div>
            <div class="form-group col-md-6">
		        <label for="searchOrders">Search Orders:</label>
		        <div class="input-group">
		            <input type="text" class="form-control" id="searchOrders" placeholder="Order ID or Customer Name">
		            <div class="input-group-append">
		                <button class="btn btn-primary" id="searchButton">Search</button>
		            </div>
		        </div>
		    </div>
        </div>

        <!-- Orders table -->
        <table class="table">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Customer Name</th>
                    <th>Status</th>
                    <th>Total Amount</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Use a loop to display order data here -->
                <tr>
                    <td>123456</td>
                    <td>John Doe</td>
                    <td>Pending</td>
                    <td>$50.00</td>
                    <td>
                        <button class="btn btn-info">View Details</button>
                        <button class="btn btn-success">Update Status</button>
                    </td>
                </tr>
                <!-- Add more rows for other orders -->
            </tbody>
        </table>
    </div>

<%@ include file="adminfooter.jsp" %>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>