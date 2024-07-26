<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        .login-container h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
            font-weight: bold;
        }
        .login-container label {
            display: block;
            margin-bottom: 12px;
            color: #555;
            font-size: 14px;
            font-weight: 500;
            text-align: left;
        }
        .login-container input[type="text"],
        .login-container input[type="password"],
        .login-container select {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
        }
        .login-container select {
            background-color: #fafafa;
        }
        .login-container input[type="submit"] {
            background-color: #28a745;
            color: #ffffff;
            border: none;
            padding: 12px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }
        .login-container input[type="submit"]:hover {
            background-color: #218838;
        }
        .error {
            color: red;
            margin-top: 10px;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }
        .footer a {
            color: #2575fc;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
        
          <label for="role">Role:</label>
            <select id="role" name="role" required>
                <option value="" disabled selected>Select your role</option>
                <option value="admin">Admin</option>
                <option value="associate">Associate</option>
                <option value="employee">Employee</option>
            </select>
            
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
            
            
            
            <input type="submit" value="Login">
            
            <!-- Add a footer section for additional links or messages -->
 
            </div>
        </form>
    </div>
</body>
</html>
