<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ctrl + EAT | Manage Customers</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body> 
   <%@ include file="adminnavbar.jsp" %>

    <!-- Customers List Section -->
    <section class="container my-4">
        <h2 class="text-center mb-4">Manage Customers</h2>
        <div class="row">
            <c:forEach items="${cdata}"  var="customer"> 
            <div class="col-md-4">
                <div class="card mb-3">
                    <img src="customer1.jpg" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title">Name: <c:out value="${customer.name}"/></h5>
                        <p class="card-text">Gender: <c:out value="${customer.gender}"/></p>
                        <p class="card-text">Email: <c:out value="${customer.email}"/></p>
                        <p class="card-text">Contact: <c:out value="${customer.contactno}"/></p>
                        <a href='<c:url value="deletecustomer/${customer.id}"></c:url>'><button class="btn btn-danger btn-sm float-end">Delete</button></a>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </section>

<%@ include file="adminfooter.jsp" %>
   
</body>
</html>
