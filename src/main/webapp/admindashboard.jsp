<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .dashboard-options {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .dashboard-options a {
            display: inline-block;
            padding: 15px;
            background-color: #007BFF;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }
        .dashboard-options a:hover {
            background-color: #0056b3;
        }
        .back-to-login {
            text-align: center;
            margin-top: 20px;
        }
        .back-to-login a {
            color: #007BFF;
            text-decoration: none;
            font-size: 16px;
        }
        .back-to-login a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Admin Dashboard</h1>
        <div class="dashboard-options">
            <a href="createAccount.jsp">Create Account</a>
            <a href="editAccount.jsp">Edit Account</a>
            <a href="viewReports.jsp">View Reports</a>
            <a href="closeAccount.jsp">Close Account</a>
        </div>
        <div class="back-to-login">
            <a href="login.jsp">Back to Login</a>
        </div>
    </div>
</body>
</html>
