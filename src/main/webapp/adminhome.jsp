<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ctrl + EAT | Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <!-- Charts Section -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Orders by Restaurant</h5>
                        <canvas id="ordersByRestaurantChart"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Total Amount by Date</h5>
                        <canvas id="totalAmountByDateChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Payment Method Distribution</h5>
                        <canvas id="paymentMethodDistributionChart"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Orders by Restaurant and Payment Method</h5>
                        <canvas id="ordersByRestaurantAndPaymentMethodChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Placeholder data
        const ordersData = [
            { id: 1, restaurant: 'Restaurant A', amount: 120, date: '2023-08-01', paymentMethod: 'Credit Card' },
            { id: 2, restaurant: 'Restaurant B', amount: 85, date: '2023-08-02', paymentMethod: 'Cash' },
            { id: 3, restaurant: 'Restaurant A', amount: 150, date: '2023-08-03', paymentMethod: 'PayPal' },
            { id: 4, restaurant: 'Restaurant C', amount: 200, date: '2023-08-04', paymentMethod: 'Credit Card' },
            { id: 5, restaurant: 'Restaurant B', amount: 95, date: '2023-08-05', paymentMethod: 'Cash' },
            // ... more orders
        ];

        // Placeholder chart configurations and data
        const ordersByRestaurantChart = new Chart(document.getElementById('ordersByRestaurantChart').getContext('2d'), {
            type: 'bar',
            data: {
                labels: ['Restaurant A', 'Restaurant B', 'Restaurant C'],
                datasets: [{
                    label: 'Number of Orders',
                    data: [2, 2, 1], // Replace with actual data
                    backgroundColor: ['rgba(255, 99, 132, 0.5)', 'rgba(54, 162, 235, 0.5)', 'rgba(75, 192, 192, 0.5)'],
                    borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(75, 192, 192, 1)'],
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

    // Payment Method Distribution Chart
    const paymentMethodDistributionChart = new Chart(document.getElementById('paymentMethodDistributionChart').getContext('2d'), {
        type: 'doughnut',
        data: {
            labels: ['Credit Card', 'Cash', 'PayPal'],
            datasets: [{
                data: [60, 25, 15], // Replace with actual data
                backgroundColor: ['rgba(255, 99, 132, 0.5)', 'rgba(54, 162, 235, 0.5)', 'rgba(75, 192, 192, 0.5)'],
                borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(75, 192, 192, 1)'],
                borderWidth: 1
            }]
        }
    });

    // Orders by Restaurant and Payment Method Chart
    const ordersByRestaurantAndPaymentMethodChart = new Chart(document.getElementById('ordersByRestaurantAndPaymentMethodChart').getContext('2d'), {
        type: 'bar',
        data: {
            labels: ['Restaurant A', 'Restaurant B', 'Restaurant C'],
            datasets: [{
                label: 'Credit Card',
                data: [1, 0, 1], // Replace with actual data
                backgroundColor: 'rgba(255, 99, 132, 0.5)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }, {
                label: 'Cash',
                data: [1, 1, 0], // Replace with actual data
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
    <%@ include file="adminfooter.jsp" %>   
</body>
</html>
