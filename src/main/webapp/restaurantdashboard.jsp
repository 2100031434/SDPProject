<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Ctrl + EAT | Restaurant Dashboard</title>
</head>
<body>
<%@ include file="restaurantnavbar.jsp" %>

<!-- Statistics -->
    <div class="container mt-4">
        <div class="row">
            <div class="col-lg-3">
                <div class="bg-light p-3 rounded text-center">
                    <h3>Total Orders</h3>
                    <p>150</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="bg-light p-3 rounded text-center">
                    <h3>Total Revenue</h3>
                    <p>Rs. 15,000</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="bg-light p-3 rounded text-center">
                    <h3>Average Order Value</h3>
                    <p>Rs. 100</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="bg-light p-3 rounded text-center">
                    <h3>Ratings</h3>
                    <p>4.5</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="bg-light p-3 rounded text-center">
                    <h3>Menu Items</h3>
                    <p>10</p>
                </div>
            </div>
        </div>
    
        <div class="row mt-4">
            <div class="col-lg-12">
                <div class="bg-light p-3 rounded">
                    <h3>Feedbacks</h3>
                    <ul>
                        <li>Great food and service! - 5 stars</li>
                        <li>Fast delivery, loved it! - 4 stars</li>
                        <li>Good quality, but late delivery - 3 stars</li>
                        <!-- Add more feedbacks as needed -->
                    </ul>
                </div>
            </div>
        </div>
    </div>    

    <div class="container mt-4">
        <!-- Order Notifications -->
        <div class="row">
            <div class="col-lg-12">
                <div class="bg-light p-3 rounded">
                    <h3>Order Notifications</h3>
                    <ul>
                        <li>New order from John Doe - Order ID: #123</li>
                        <li>New order from Jane Smith - Order ID: #124</li>
                        <li>New order from Robert Johnson - Order ID: #125</li>
                        <!-- Add more order notifications as new orders come in -->
                    </ul>
                </div>
            </div>
        </div>
    
        <!-- Charts -->
        <div class="row mt-4">
            <div class="col-lg-6">
                <div class="bg-light p-3 rounded">
                    <h3>Revenue Chart</h3>
                    <canvas id="revenueChart" width="400" height="200"></canvas>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="bg-light p-3 rounded">
                    <h3>Order Count Chart</h3>
                    <canvas id="orderCountChart" width="400" height="200"></canvas>
                </div>
            </div>
        </div>
    </div>
    

    <!-- Charts Section -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Total Amount by Date</h5>
                        <canvas id="totalAmountByDateChart"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Payment Method</h5>
                        <canvas id="ordersByRestaurantAndPaymentMethodChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-4">
           
        </div>
    </div>

    <script>
        // Placeholder data
        const ordersData = [
            { id: 1, restaurant: 'Restaurant A', amount: 120, date: '2023-08-01', paymentMethod: 'Credit Card' },
            { id: 2, restaurant: 'Restaurant A', amount: 85, date: '2023-08-02', paymentMethod: 'Cash' },
            { id: 3, restaurant: 'Restaurant A', amount: 150, date: '2023-08-03', paymentMethod: 'PayPal' },
            { id: 4, restaurant: 'Restaurant A', amount: 200, date: '2023-08-04', paymentMethod: 'Credit Card' },
            { id: 5, restaurant: 'Restaurant A', amount: 95, date: '2023-08-05', paymentMethod: 'Cash' },
            // ... more orders
        ];

        // Placeholder configurations for other charts
        // totalAmountByDateChart, paymentMethodDistributionChart, ordersByRestaurantAndPaymentMethodChart
        // Total Amount by Date Chart
    const totalAmountByDateChart = new Chart(document.getElementById('totalAmountByDateChart').getContext('2d'), {
        type: 'line',
        data: {
            labels: ['2023-08-01', '2023-08-02', '2023-08-03', '2023-08-04', '2023-08-05'],
            datasets: [{
                label: 'Total Amount',
                data: [120, 85, 150, 200, 95], // Replace with actual data
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Orders by Restaurant and Payment Method Chart
    const ordersByRestaurantAndPaymentMethodChart = new Chart(document.getElementById('ordersByRestaurantAndPaymentMethodChart').getContext('2d'), {
        type: 'bar',
        data: {
            labels: ['Restaurant A'],
            datasets: [{
                label: 'Credit Card',
                data: [5, 0, 1], // Replace with actual data
                backgroundColor: 'rgba(255, 99, 132, 0.5)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }, {
                label: 'Cash',
                data: [10, 1, 0], // Replace with actual data
                backgroundColor: 'rgba(54, 162, 235, 0.5)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }, {
                label: 'PayPal',
                data: [1, 0, 0], // Replace with actual data
                backgroundColor: 'rgba(75, 192, 192, 0.5)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
    </script>

<script>
    // Revenue Chart
    var revenueData = {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
        datasets: [
            {
                label: "Monthly Revenue",
                data: [1000, 1500, 2000, 1800, 2200, 2500],
                backgroundColor: "rgba(75, 192, 192, 0.2)",
                borderColor: "rgba(75, 192, 192, 1)",
                borderWidth: 1,
            },
        ],
    };

    var revenueContext = document.getElementById("revenueChart").getContext("2d");
    var revenueChart = new Chart(revenueContext, {
        type: "line",
        data: revenueData,
    });

    // Order Count Chart
    var orderCountData = {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
        datasets: [
            {
                label: "Orders",
                data: [10, 15, 20, 18, 22, 25],
                backgroundColor: "rgba(255, 99, 132, 0.2)",
                borderColor: "rgba(255, 99, 132, 1)",
                borderWidth: 1,
            },
        ],
    };

    var orderCountContext = document.getElementById("orderCountChart").getContext("2d");
    var orderCountChart = new Chart(orderCountContext, {
        type: "bar",
        data: orderCountData,
    });
</script>

<%@ include file="restaurantfooter.jsp" %>
</body>
</html>