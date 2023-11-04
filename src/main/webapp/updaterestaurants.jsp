<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ctrl + EAT | Manage Restaurants</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        #email {
            background-color: lightgrey;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
    
    <%@ include file="adminnavbar.jsp" %>

     <div class="container my-4">
    <div class="card mx-auto" style="width: 70%;">
        <div class="card-body">
            <h2 class="card-title text-center mb-4">Edit Restaurant</h2>
            <form action="update" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" class="form-control" value="${restaurant.name}">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" class="form-control" value="${restaurant.email}" readonly="readonly">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="pwd" name="password" class="form-control" value="${restaurant.password}">
                </div>
                <div class="form-group">
                    <label for="contactno">Contact Number</label>
                    <input type="text" id="contactno" name="contactno" class="form-control" value="${restaurant.contactno}">
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea id="address" name="address" class="form-control" rows="3">${restaurant.address}</textarea>
                </div>
                <div class="form-group">
                    <label for="active">Status</label>
                    <div>
                        <input type="radio" id="activeOpen" name="active" value="true" <c:if test="${restaurant.active == true}">checked</c:if>>
                        <label for="activeOpen">Open</label>
                    </div>
                    <div>
                        <input type="radio" id="activeClosed" name="active" value="false" <c:if test="${restaurant.active == false}">checked</c:if>>
                        <label for="activeClosed">Closed</label>
                    </div>
                </div>
                <div class="form-group text-center">
                    <button type="submit" class="btn btn-info">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>

 <%@ include file="adminfooter.jsp" %>
</body>
</html>