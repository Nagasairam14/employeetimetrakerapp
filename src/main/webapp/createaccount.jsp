<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Employee</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(90deg, #a6a6a6, #ffffff);
        background-image: url('images/7.jpg'); /* Background image */
        background-size: cover; /* Cover the entire background */
        background-position: center; /* Center the background image */
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Adjusted to fit the viewport height */
        overflow: hidden; /* Prevent scrolling if content is larger than viewport */
    }

    .container {
        width: 80%; /* Adjust width for compactness */
        max-width: 400px; /* Reduced maximum width */
        padding: 15px; /* Reduced padding */
        background-color: rgba(249, 249, 249, 0.9); /* Semi-transparent background color */
        box-shadow: 0 0 8px rgba(0, 0, 0, 0.1); /* Slightly smaller shadow */
        border-radius: 8px; /* Slightly smaller border radius */
        box-sizing: border-box;
    }

    .form-group {
        margin-bottom: 12px; /* Reduced margin */
    }

    label {
        display: block;
        margin-bottom: 4px; /* Reduced margin */
        font-size: 12px; /* Smaller font size */
        font-weight: bold;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[type="date"],
    select {
        width: calc(100% - 10px); /* Adjusted width */
        padding: 6px; /* Reduced padding */
        border: 1px solid #ccc;
        border-radius: 4px; /* Smaller border radius */
        box-sizing: border-box;
        font-size: 12px; /* Smaller font size */
    }

    input[type="submit"],
    input[type="button"] {
        width: 100%;
        padding: 8px; /* Reduced padding */
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px; /* Smaller border radius */
        font-size: 12px; /* Smaller font size */
        cursor: pointer;
        margin-top: 8px; /* Reduced margin-top */
    }

    input[type="submit"]:hover,
    input[type="button"]:hover {
        background-color: #45a049;
    }

    .error-message {
        color: red;
        font-size: 12px; /* Smaller font size */
        margin-bottom: 12px; /* Reduced margin */
    }

    .back-button-container {
    position: absolute;
    top: 20px;
    right: 20px;
}

.back-button {
    background-color: #f44336; /* Red background */
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 16px; /* Increased font size */
    cursor: pointer;
    padding: 12px 20px; /* Increased padding for larger button */
    text-align: center;
    text-decoration: none;
}

.back-button:hover {
    background-color: #d32f2f; /* Darker red for hover effect */
}
</style>
</head>
<body>
    <div class="container">
        <h2>Create Employee</h2>
        <% if (request.getAttribute("errorMessage") != null) { %>
            <p class="error-message"><%= request.getAttribute("errorMessage") %></p>
        <% } %>
        <form action="CreateEmployeeServlet" method="post">
            <div class="form-group">
                <label for="employee_id">Employee ID</label>
                <input type="text" id="employee_id" name="employee_id" value="<%= request.getAttribute("employee_id") != null ? request.getAttribute("employee_id") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" value="<%= request.getAttribute("username") != null ? request.getAttribute("username") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" name="fullname" value="<%= request.getAttribute("fullname") != null ? request.getAttribute("fullname") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="role">Role</label>
                <select id="role" name="role" required>
                    <option value="associate" <%= "associate".equals(request.getAttribute("role")) ? "selected" : "" %>>Associate</option>
                    <option value="employee" <%= "employee".equals(request.getAttribute("role")) ? "selected" : "" %>>Employee</option>
                    <option value="admin" <%= "admin".equals(request.getAttribute("role")) ? "selected" : "" %>>Admin</option>
                </select>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="<%= request.getAttribute("email") != null ? request.getAttribute("email") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number</label>
                <input type="text" id="phoneNumber" name="phoneNumber" value="<%= request.getAttribute("phoneNumber") != null ? request.getAttribute("phoneNumber") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" value="<%= request.getAttribute("dob") != null ? request.getAttribute("dob") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" value="<%= request.getAttribute("address") != null ? request.getAttribute("address") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="dateOfJoining">Date of Joining</label>
                <input type="date" id="dateOfJoining" name="dateOfJoining" value="<%= request.getAttribute("dateOfJoining") != null ? request.getAttribute("dateOfJoining") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="managerAlloted">Manager Allotted</label>
                <input type="text" id="managerAlloted" name="managerAlloted" value="<%= request.getAttribute("managerAlloted") != null ? request.getAttribute("managerAlloted") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" value="<%= request.getAttribute("password") != null ? request.getAttribute("password") : "" %>" required>
            </div>
            <input type="submit" value="Create Employee">
        </form>
    </div>
    <div class="back-button-container">
        <button class="back-button" onclick="window.location.href='adminHome.jsp'">Back</button>
    </div>
</body>
</html>