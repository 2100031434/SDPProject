<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">/
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ctrl + EAT | Edit Restaurant</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    
    <%@ include file="adminnavbar.jsp" %>

     <!-- Restaurants List Section -->
     <section class="container my-4">
        <h2 class="text-center mb-4">Manage Restaurants</h2>

        <!-- Search Bar -->
        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Search restaurants..." id="datatable-search-input" aria-label="Search restaurants">
            <button type="button" id="addRestaurantButton" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#restaurantModal">
			    Add Restaurant
			</button>
        </div>

        <!-- Filters -->
        <div class="row mb-3">
            <div class="col-md-4">
                <select class="form-select">
                    <option selected>Filter by Category</option>
                    <!-- Add filter options here -->
                </select>
            </div>
            <!-- Add more filter options here as needed -->
            <div class="container mt-5">
		    <div class="row justify-content-center">
		        <div class="col-md-6">
		        <div class="my-3">
		            <div class="sent-message">
		            	<c:if test="${not empty successMessage}">
		              	<div class="alert alert-success">${successMessage}</div>
		            	</c:if>
		            	<c:if test="${not empty errorMessage}">
		              	<div class="alert alert-danger">${errorMessage}</div>
		            	</c:if>
		            	<c:if test="${not empty message}">
		              	<div class="alert alert-warning">${message}</div>
		            	</c:if>
		            </div>
		          </div>
		        </div>
		    </div>
        </div>

        <!-- Restaurants Table -->
        <table class="table table-bordered" id="datatable">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Location</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${rdata}"  var="r"> 
                <tr>
                    <td><c:out value="${r.name}" /></td>
                    <td><c:out value="${r.email}" /></td>
                    <td><c:out value="${r.address}" /></td>
                    <c:if test="${r.active==true}">
					<td bgcolor="green">OPEN</td>
					</c:if>
					<c:if test="${r.active==false}">
					<td bgcolor="red">CLOSED</td>
					</c:if>
                    <td>
                        <a href='<c:url value="update/${r.id}"></c:url>'><button class="btn btn-info btn-sm">Edit</button></a>
						<a href='<c:url value="delete/${r.id}"></c:url>'><button class="btn btn-danger btn-sm">Delete</button></a>
                    </td>
                </tr>
                </c:forEach> 
            </tbody>
        </table>

        <!-- Restaurant Modal -->
		<div class="modal fade" id="restaurantModal" tabindex="-1" role="dialog" aria-labelledby="restaurantModalLabel" aria-hidden="true">
		    <div class="modal-dialog" role="document">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title" id="restaurantModalLabel">Add a Restaurant</h5>
		                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
		                    <span aria-hidden="true">&times;</span>
		                </button>
		            </div>
		            <div class="modal-body">
		                <!-- Restaurant Form -->
		                <form id="restaurantForm" action="addrestaurant" method="post">
		                    <div class="form-group">
		                        <label for="restaurantName">Restaurant Name:</label>
		                        <input type="text" id="restaurantName" name="restaurantName" class="form-control" required>
		                    </div>
		
		                    <div class="form-group">
		                        <label for="restaurantEmail">Email:</label>
		                        <input type="email" id="restaurantEmail" name="restaurantEmail" class="form-control" placeholder="name@gmail.com" required>
		                    </div>
		                    
		                    <div class="form-group">
		                        <label for="restaurantEmail">Password:</label>
		                        <input type="password" id="restaurantPassword" name="restaurantPassword" class="form-control" required>
		                    </div>
		
		                    <div class="form-group">
		                        <label for="restaurantPhoneNumber">Phone Number:</label>
		                        <input type="tel" id="restaurantPhoneNumber" name="restaurantPhoneNumber" class="form-control" required>
		                    </div>
		
		                    <div class="form-group">
		                        <label for="restaurantAddress">Restaurant Address:</label>
		                        <textarea id="restaurantAddress" name="restaurantAddress" class="form-control" required></textarea>
		                    </div>
		                </form>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		                <a href="addrestaurant">
		                <button type="submit" form="restaurantForm" class="btn btn-primary">Save Changes</button>
		                </a>
		            </div>
		        </div>
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
    
<script>
const instance = new mdb.Datatable(document.getElementById('datatable'), rdata)

document.getElementById('datatable-search-input').addEventListener('input', (e) => {
  instance.search(e.target.value);
});
</script>

 <%@ include file="adminfooter.jsp" %>
</body>
</html>