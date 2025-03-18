<%@page import="com.r3sys.controller.*" %>
<%@page import="com.r3sys.dao.*" %>
<%@page import="com.r3sys.model.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Issued Processed Materials</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }
        .header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: right;
            position: relative;
            z-index: 3;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header a {
            color: #fff;
            text-decoration: none;
        }
        .header a:hover {
            color: #ccc;
        }
        .menu-icon {
            cursor: pointer;
            float: left;
            margin-right: 10px;
        }
        .company-name {
            font-size: 1.5rem;
            margin-left: 20px;
        }
        .menu {
            background-color: #444;
            padding: 20px;
            width: 250px;
            position: fixed;
            top: 0;
            left: -250px;
            height: 100vh;
            overflow-y: auto;
            transition: left 0.3s ease-in-out;
            z-index: 1;
        }
        .menu ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .menu li {
            margin-bottom: 10px;
        }
        .menu li:first-child a {
            margin-top: 70px;
        }
        .menu a {
            display: block;
            padding: 10px 20px;
            color: #fff;
            text-decoration: none;
            background-color: #555;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .menu a:hover {
            background-color: #666;
        }
        .menu a.active {
            background-color: #007bff;
        }
        .main-content {
            flex: 1;
            padding: 20px;
            transition: margin-left 0.3s ease-in-out;
            z-index: 2;
            background-color: rgb(112, 112, 112); /* Set background color */
            color: #fff; /* Text color */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for depth */
        }
        .main-content.menu-open {
            margin-left: 250px;
        }
        .footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            width: 100%;
            margin-top: auto;
            position: relative;
            z-index: 3;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .footer .logout-btn {
            margin-left: 20px;
            color: #fff;
            text-decoration: none;
            padding: 5px 10px;
            background-color: #dc3545;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .footer .logout-btn:hover {
            background-color: #c82333;
        }
        /* Custom scrollbar styles */
        .menu::-webkit-scrollbar {
            width: 8px;
        }
        .menu::-webkit-scrollbar-thumb {
            background-color: #888;
            border-radius: 10px;
        }
        .menu::-webkit-scrollbar-thumb:hover {
            background-color: #555;
        }
        .menu::-webkit-scrollbar-track {
            background-color: #444;
        }
        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            color: #333;
            text-align: left;
            overflow: hidden;
            border-radius: 8px;
        }
        table thead {
            background-color: #007bff;
            color: #fff;
        }
        table th, table td {
            padding: 12px 15px;
            border: 1px solid #ddd;
        }
        table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }
        table tbody tr:hover {
            background-color: #f1f1f1;
            transform: scale(1.01);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        table th {
            background-color: #333;
            color: #fff;
        }
        table td a {
            color: #007bff;
            text-decoration: none;
        }
        table td a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header class="header">
        <button class="btn btn-primary menu-icon" onclick="toggleMenu()">Menu</button>
        <div class="company-name">Inventory Management</div>
    </header>
    <nav class="menu">
        <ul>
            <li><a href="addRaw">Add Raw Material</a></li>
            <li><a href="viewRaw">View Raw Material</a></li>
            <li><a href="updateRaw">Update Raw Material</a></li>
            <li><a href="addProcessed">Add Processed Item</a></li>
            <li><a href="viewProcessed">View Processed Item</a></li>
            <li><a href="updateProcessed">Update Processed Item</a></li>
            <li><a href="issueRaw">Issue Raw Material</a></li>
            <li><a href="viewIssuedRaw">View Issued Raw Material</a></li>
            <li><a href="issueProcessed">Issue Processed Material</a></li>
            <li><a href="viewProcessedRaw">View Processed Raw Material</a></li>
            <li><a href="unavailableRaw">Show Unavailable Raw Material</a></li>
            <li><a href="unavailableProcessed">Show Unavailable Processed Material</a></li>
            <li><a href="change">Change Password</a></li>
        </ul>
    </nav>
    <main class="main-content">
        <h2>View Issued Processed Materials</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Sr. No.</th>
                    <th>Issuer Name</th>
                    <th>Processed Material Name</th>
                    <th>Quantity</th>
                    <th>Date</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<IssueProcessed> issuedProcessedMaterials = (List<IssueProcessed>) request.getAttribute("issuedProcessedMaterials");
                    if (issuedProcessedMaterials != null && !issuedProcessedMaterials.isEmpty()) {
                        int serialNo = 1; // Initialize serial number
                        for (IssueProcessed issueProcessed : issuedProcessedMaterials) { 
                %>
                        <tr>
                            <td><%= serialNo++ %></td> <!-- Display serial number -->
                            <td><%= issueProcessed.getIssuerName() %></td>
                            <td><%= issueProcessed.getProcessedName() %></td>
                            <td><%= issueProcessed.getQuantity() %></td>
                            <td><%= issueProcessed.getIssueDate() %></td>
                            <td><%= issueProcessed.getIssueTime() %></td>
                        </tr>
                <% 
                        } 
                    } else { 
                %>
                    <tr>
                        <td colspan="6">No issued processed materials found.</td>
                    </tr>
                <% 
                    } 
                %>
            </tbody>
        </table>
    </main>
    <footer class="footer">
        <a href="index.html" class="logout-btn">Logout</a>
        <div>
            Made with love | Shravani Patil &copy; 2024
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script>
        function toggleMenu() {
            let menu = document.querySelector('.menu');
            let mainContent = document.querySelector('.main-content');
            if (menu.style.left === '0px') {
                menu.style.left = '-250px';
                mainContent.classList.remove('menu-open');
            } else {
                menu.style.left = '0px';
                mainContent.classList.add('menu-open');
            }
        }
    </script>
</body>
</html>