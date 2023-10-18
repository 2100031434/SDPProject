<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Ctrl + EAT | Manage Menu</title>
</head>
<body>
<%@ include file="restaurantnavbar.jsp" %>

<div class="container mt-4">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="text-center">Menu Management</h1>
            </div>
        </div>
    </div>
    
    <div class="container mt-4">
        <!-- Search Bar and Add New Menu Item Button -->
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search Menu Items">
                    <button class="btn btn-primary" type="button">Search</button>
                </div>
            </div>
            <div class="col-lg-6 text-right">
                <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addItemModal">Add New Menu Item</button>
            </div>
        </div>
    
        <!-- List of Existing Menu Items -->
        <div class="row mt-4">
            <div class="col-lg-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th>
                                Name
                                <button class="btn btn-link filter-btn">
                                    <i class="fas fa-sort-up"></i>
                                </button>
                                <button class="btn btn-link filter-btn">
                                    <i class="fas fa-sort-down"></i>
                                </button>
                            </th>
                            <th>
                                Category
                                <button class="btn btn-link filter-btn">
                                    <i class="fas fa-sort-up"></i>
                                </button>
                                <button class="btn btn-link filter-btn">
                                    <i class="fas fa-sort-down"></i>
                                </button>
                            </th>
                            <th>Description</th>
                            <th>
                                Price
                                <button class="btn btn-link filter-btn">
                                    <i class="fas fa-sort-up"></i>
                                </button>
                                <button class="btn btn-link filter-btn">
                                    <i class="fas fa-sort-down"></i>
                                </button>
                            </th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Static Menu Items (up to 10 records) -->
                        <tr>
                            <td>Item 1</td>
                            <td>Main Course</td>
                            <td>Description of Item 1</td>
                            <td>$10.99</td>
                            <td>
                                <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editItemModal">Edit</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>                            
                        </tr>
                        <!-- Add more static menu items as needed -->
                    </tbody>
                </table>
            </div>
        </div>
    
        <!-- Pagination Buttons -->
        <div class="row mt-4">
            <div class="col-lg-12 text-center">
                <ul class="pagination justify-content-center">
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <!-- Add Menu Item Modal -->
    <div class="modal fade" id="addItemModal" tabindex="-1" role="dialog" aria-labelledby="addItemModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addItemModalLabel">Add Menu Item</h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="itemName">Item Name</label>
                            <input type="text" class="form-control" id="itemName" placeholder="Enter item name">
                        </div>
                        <div class="form-group">
                            <label for="itemCategory">Category</label>
                            <input type="text" class="form-control" id="itemCategory" placeholder="Enter category">
                        </div>
                        <div class="form-group">
                            <label for="itemDescription">Description</label>
                            <input type="text" class="form-control" id="itemDescription" placeholder="Enter description">
                        </div>
                        <div class="form-group">
                            <label for="itemPrice">Price</label>
                            <input type="number" class="form-control" id="itemPrice" placeholder="Enter price">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success" id="saveItemButton">Save</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Edit Item Modal -->
    <div class="modal fade" id="editItemModal" tabindex="-1" role="dialog" aria-labelledby="editItemModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editItemModalLabel">Edit Menu Item</h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <!-- Input fields for editing menu item details -->
                        <div class="form-group">
                            <label for="editItemName">Name</label>
                            <input type="text" class="form-control" id="editItemName" placeholder="Item Name">
                        </div>
                        <div class="form-group">
                            <label for="editItemCategory">Category</label>
                            <input type="text" class="form-control" id="editItemCategory" placeholder="Category">
                        </div>
                        <div class="form-group">
                            <label for="editItemDescription">Description</label>
                            <textarea class="form-control" id="editItemDescription" rows="3" placeholder="Item Description"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="editItemPrice">Price</label>
                            <input type="text" class="form-control" id="editItemPrice" placeholder="Price">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save Changes</button>
                </div>
            </div>
        </div>
    </div>

<%@ include file="restaurantfooter.jsp" %>
</body>
</html>