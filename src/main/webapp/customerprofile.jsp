<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Ctrl + EAT | Profile</title>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<%@ include file="cnavbar.jsp" %>
<br/>
<br/>
 <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">My Profile</h5>
                        <ul class="list-group list-group-flush">
			                <li class="list-group-item">
			                    <strong>Name:</strong> ${name}
			                </li>
			                <li class="list-group-item">
			                    <strong>Email:</strong> ${customer.email}
			                </li>
			                <li class="list-group-item">
			                    <strong>Gender:</strong> ${customer.gender}
			                </li>
			                <li class="list-group-item">
			                    <strong>Contact:</strong> ${customer.contactno}
			                </li>
			                <li class="list-group-item">
			                    <strong>Address:</strong> ${customer.address}
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

 <br/>

<%@ include file="customerfooter.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>