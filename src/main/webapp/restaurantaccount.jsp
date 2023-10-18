<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ctrl + EAT | Restaurant Account</title>
<style>
        input[readonly] {
            background-color: #f7f7f7;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
<%@ include file="restaurantnavbar.jsp" %>

 <!-- Profile Settings and Account Settings -->
    <div class="container mt-4">
        <!-- Profile Settings -->
        <div class="col-md-6">
            <h3>Update Profile</h3>
            <form>
                <div class="mb-3">
                    <label for="restaurantName" class="form-label">Restaurant Name</label>
                    <input type="text" class="form-control" id="restaurantName" value="My Restaurant Name">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" value="restaurant@example.com" readonly>
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone</label>
                    <input type="tel" class="form-control" id="phone" value="123-456-7890">
                </div>
                <button type="submit" class="btn btn-primary">Save Changes</button>
            </form>
        </div>
        <!-- Account Settings -->
        <div class="col-md-6">
            <h3>Account Settings</h3>
            <form>
                <div class="mb-3">
                    <label for="currentPassword" class="form-label">Current Password</label>
                    <input type="password" class="form-control" id="currentPassword">
                </div>
                <div class="mb-3">
                    <label for="newPassword" class="form-label">New Password</label>
                    <input type="password" class="form-control" id="newPassword">
                </div>
                <div class="mb-3">
                    <label for="retypePassword" class="form-label">Retype Password</label>
                    <input type="password" class="form-control" id="retypePassword">
                </div>
                <button type="submit" class="btn btn-primary">Change Password</button>
            </form>
        </div>
    </div>

<%@ include file="restaurantfooter.jsp" %>
</body>
</html>