
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Task" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Task</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(90deg, #a6a6a6, #ffffff);
            text-align: center;
        }
        form {
            display: inline-block;
            text-align: left;
            margin-top: 20px;
        }
        label, input {
            display: block;
            margin: 10px;
        }
        .submit-button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Edit Task</h2>
    <%
        Task task = (Task) request.getAttribute("task");
        if (task != null) {
    %>
    <form action="TaskServlet" method="post">
        <input type="hidden" name="taskId" value="<%= task.getTaskId() %>">
        <label for="taskDate">Task Date:</label>
        <input type="date" id="taskDate" name="taskDate" value="<%= task.getTaskDate() %>">
        
        <label for="startTime">Start Time:</label>
        <input type="time" id="startTime" name="startTime" value="<%= task.getStartTime() %>">
        
        <label for="endTime">End Time:</label>
        <input type="time" id="endTime" name="endTime" value="<%= task.getEndTime() %>">
        
        <label for="taskCategory">Task Category:</label>
        <input type="text" id="taskCategory" name="taskCategory" value="<%= task.getTaskCategory() %>">
        
        <button type="submit" class="submit-button">Save Changes</button>
    </form>
    <%
        }
    %>
</body>
</html>
