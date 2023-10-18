<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Ctrl + EAT | Admin Account</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

<div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">User Information</h5>
                        <ul class="list-group list-group-flush">
			                <li class="list-group-item">
			                    <strong>Name:</strong> Admin
			                </li>
			                <li class="list-group-item">
			                    <strong>Email:</strong> admin@gmail.com
			                </li>
			                <li class="list-group-item">
			                    <strong>Contact:</strong> +1234567890
			                </li>
			                <li class="list-group-item">
			                    <strong>Role:</strong> Administrator
			                </li>
			            </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
			    <div class="card">
			        <div class="card-body">
			            <h5 class="card-title">Profile Picture</h5>
			            
			            <!-- Display Current Profile Picture -->
			            <div class="text-center">
						    <i class="fas fa-user fa-4x"></i>
						</div>
			
			            <!-- Change Profile Picture Form -->
			            <form id="change-profile-picture-form">
			                <div class="form-group">
			                    <label for="profile-picture">Upload New Profile Picture</label>
			                    <input type="file" class="form-control-file" id="profile-picture" name="profile-picture">
			                </div>
			                <button type="submit" class="btn btn-info btn-sm">Change Profile Picture</button>
			            </form>
			        </div>
			    </div>
			</div>
        </div>
    </div>

    <div class="container mt-5">
    	<div class="card">
	        <div class="card-body">
	            <h5 class="card-title">Change Password</h5>
	            
	            <!-- Change Password Form -->
	            <form id="change-password-form">
	                <div class="form-group">
	                    <label for="current-password">Current Password</label>
	                    <input type="password" class="form-control" id="current-password" name="current-password" required>
	                </div>
	                <div class="form-group">
	                    <label for="new-password">New Password</label>
	                    <input type="password" class="form-control" id="new-password" name="new-password" required>
	                </div>
	                <div class="form-group">
	                    <label for="confirm-new-password">Confirm New Password</label>
	                    <input type="password" class="form-control" id="confirm-new-password" name="confirm-new-password" required>
	                </div>
	                <button type="submit" class="btn btn-primary">Change Password</button>
	            </form>
	        </div>
	    </div>
	</div>

    <div class="container mt-5">
	    <div class="card">
	        <div class="card-body">
	            <h5 class="card-title">Email Notifications</h5>
	
	            <!-- Email Notification Preferences Form -->
	            <form id="email-preferences-form">
	                <div class="form-group form-check">
	                    <input type="checkbox" class="form-check-input" id="order-updates" name="order-updates">
	                    <label class="form-check-label" for="order-updates">Receive Order Updates</label>
	                </div>
	                <div class="form-group form-check">
	                    <input type="checkbox" class="form-check-input" id="feedback-notifications" name="feedback-notifications">
	                    <label class="form-check-label" for="feedback-notifications">Receive Feedback Notifications</label>
	                </div>
	                <!-- Add more email notification preferences as needed -->
	                <button type="submit" class="btn btn-primary">Save Preferences</button>
	            </form>
	        </div>
	    </div>
	</div>

<%@ include file="adminfooter.jsp" %>
</body>
</html>