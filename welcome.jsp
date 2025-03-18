<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Management Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #343a40;
        }
        .navbar-brand {
            color: #fff;
        }
        .sidebar {
            height: 100vh;
            background-color: #343a40;
            padding-top: 20px;
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            width: 220px;
            overflow-y: auto;
        }
        .sidebar a {
            color: #adb5bd;
            padding: 15px;
            text-decoration: none;
            display: block;
            font-size: 16px;
        }
        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }
        .content {
            margin-left: 220px;
            padding: 20px;
        }
        .card-deck .card {
            margin-bottom: 20px;
        }
        .card-title {
            color: #007bff;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">Inventory Dashboard</a>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="addRaw">Add Raw Material</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewRaw">View Raw Material</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="updateRaw">Update Raw Material Quantity</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addProcessed">Add Processed Item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewProcessed">View Processed Item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="updateProcessed">Update Processed Item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="issueRaw">Issue Raw Material</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewIssuedRaw">View Issued Raw Material</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="issueProcessed">Issue Processed Item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewProcessedRaw">View Issued Processed Item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="unavailableRaw">Show Unavailable Raw Materials</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="unavailableProcessed">Show Unavailable Processed Items</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="change">Change Password</a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 content">
            <h1 class="h2">Dashboard</h1>
            <div class="card-deck">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Add Raw Material</h5>
                        <p class="card-text">Add new raw materials to the inventory.</p>
                        <a href="addRaw" class="btn btn-primary">Go</a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">View Raw Material</h5>
                        <p class="card-text">View all raw materials in the inventory.</p>
                        <a href="viewRaw" class="btn btn-primary">Go</a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Update Raw Material Quantity</h5>
                        <p class="card-text">Update the quantity of existing raw materials.</p>
                        <a href="updateRaw" class="btn btn-primary">Go</a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Add Processed Item</h5>
                        <p class="card-text">Add new processed items to the inventory.</p>
                        <a href="addProcessed" class="btn btn-primary">Go</a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">View Processed Item</h5>
                        <p class="card-text">View all processed items in the inventory.</p>
                        <a href="viewProcessed" class="btn btn-primary">Go</a>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Update Processed Item</h5>
                        <p class="card-text">Update the quantity of existing processed items.</p>
                        <a href="updateProcessed" class="btn btn-primary">Go</a>
                    </div>
                </div>
                
            </div>
            <!-- Add more cards for each menu item as needed -->
        </main>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
