
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="com.google.gson.Gson" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Charts</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 20px;
            background: linear-gradient(90deg, #a6a6a6, #ffffff);
            background-image: url('images/7.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .chart-container {
            width: 60%;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.8);
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        canvas {
            max-width: 100%;
            height: auto;
        }
        h2, h3 {
            color: #333;
        }
        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            color: white;
            background-color: #f44336; /* Light red color */
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .back-button:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <h2>Employee Charts</h2>
    <div class="chart-container">
        <h3>Daily Tasks/Hours</h3>
        <canvas id="dailyChart" width="400" height="300"></canvas>
    </div>
    <div class="chart-container">
        <h3>Weekly Tasks/Hours</h3>
        <canvas id="weeklyChart" width="400" height="300"></canvas>
    </div>
    <div class="chart-container">
        <h3>Monthly Tasks/Hours</h3>
        <canvas id="monthlyChart" width="400" height="300"></canvas>
    </div>
    <a href="associateHome.jsp" class="back-button">Back</a> <!-- Adjust href as needed -->
    <script>
        var dailyData = <%= new Gson().toJson(request.getAttribute("dailyData")) %>;
        var weeklyData = <%= new Gson().toJson(request.getAttribute("weeklyData")) %>;
        var monthlyData = <%= new Gson().toJson(request.getAttribute("monthlyData")) %>;

        var dailyCtx = document.getElementById('dailyChart').getContext('2d');
        var weeklyCtx = document.getElementById('weeklyChart').getContext('2d');
        var monthlyCtx = document.getElementById('monthlyChart').getContext('2d');

        new Chart(dailyCtx, {
            type: 'pie',
            data: {
                labels: Object.keys(dailyData),
                datasets: [{
                    data: Object.values(dailyData),
                    backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF', '#FF9F40']
                }]
            }
        });

        new Chart(weeklyCtx, {
            type: 'bar',
            data: {
                labels: Object.keys(weeklyData),
                datasets: [{
                    label: 'Weekly Tasks/Hours',
                    data: Object.values(weeklyData),
                    backgroundColor: '#36A2EB'
                }]
            }
        });

        new Chart(monthlyCtx, {
            type: 'bar',
            data: {
                labels: Object.keys(monthlyData),
                datasets: [{
                    label: 'Monthly Tasks/Hours',
                    data: Object.values(monthlyData),
                    backgroundColor: '#FFCE56'
                }]
            }
        });
    </script>
</body>
</html>
