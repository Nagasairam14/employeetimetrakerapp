<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            background: url('background.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .dashboard-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .dashboard-container h1 {
            color: #007bff;
            font-size: 2em;
            margin: 0;
        }
        .section {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 80%;
            max-width: 600px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            margin: auto;
        }
        .section h2 {
            margin-bottom: 20px;
            color: #007bff;
        }
        .section form {
            margin: 10px;
        }
        .section button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            margin: 5px;
            width: 100%;
            max-width: 200px;
        }
        .create-btn {
            background-color: #1f3db5;
        }
        .create-btn:hover {
            background-color: #06c7cc;
        }
        .edit-btn {
            background-color: #1f3db5;
        }
        .edit-btn:hover {
            background-color: #06c7cc;
        }
        .delete-btn {
            background-color: #1f3db5;
        }
        .delete-btn:hover {
            background-color: #06c7cc;
        }
        .logout-btn {
            background-color: #1f3db5;
        }
        .logout-btn:hover {
            background-color: #06c7cc;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Admin Dashboard</h1>
    </div>

    <div class="section">
        <h2>Account Management</h2>
        <form action="CreateAccountServlet" method="post">
            <button type="submit" class="create-btn">Create Account</button>
        </form>
        <form action="EditAccountServlet" method="post">
            <button type="submit" class="edit-btn">Edit Account</button>
        </form>
        <form action="DeleteAccountServlet" method="post">
            <button type="submit" class="delete-btn">Delete Account</button>
        </form>
        <form action="LogoutServlet" method="post">
            <button type="submit" class="logout-btn">Logout</button>
        </form>
    </div>

    <script>
        // Optional: Add JavaScript for additional client-side functionalities
    </script>
</body>
</html>
