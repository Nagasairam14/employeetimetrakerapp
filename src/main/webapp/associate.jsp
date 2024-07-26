<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Task Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
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
        .form-container {
            width: 500px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #007bff;
        }
        .form-container label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        .form-container input,
        .form-container select,
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .form-container textarea {
            resize: vertical;
            height: 100px;
        }
        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 3px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #0056b3;
        }
        .form-container .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Employee Dashboard</h1>
    </div>
    <div class="form-container">
        <h2>Employee Task Entry</h2>
        <form id="taskForm" action="TaskEntryServlet" method="post">
            <label for="employeeId">Employee ID:</label>
            <input type="text" id="employeeId" name="employeeId" required>
            <span class="error" id="employeeIdError"></span>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <span class="error" id="nameError"></span>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            <span class="error" id="dateError"></span>

            <label for="startTime">Start Time:</label>
            <input type="time" id="startTime" name="startTime" required>
            <span class="error" id="startTimeError"></span>

            <label for="endTime">End Time:</label>
            <input type="time" id="endTime" name="endTime" required>
            <span class="error" id="endTimeError"></span>

            <label for="hours">Number of Hours:</label>
            <input type="number" id="hours" name="hours" step="0.1" min="0" required>
            <span class="error" id="hoursError"></span>

            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>
            <span class="error" id="titleError"></span>

            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea>
            <span class="error" id="descriptionError"></span>

            <label for="managerId">Manager Employer ID:</label>
            <input type="text" id="managerId" name="managerId" required>
            <span class="error" id="managerIdError"></span>

            <button type="submit">Submit Task</button>
        </form>
    </div>

    <script>
        document.getElementById('taskForm').addEventListener('submit', function(event) {
            var formIsValid = true;
            clearErrors();

            // Validate Employee ID
            var employeeId = document.getElementById('employeeId').value;
            if (!employeeId) {
                formIsValid = false;
                document.getElementById('employeeIdError').textContent = 'Employee ID is required.';
            }

            // Validate Name
            var name = document.getElementById('name').value;
            if (!name) {
                formIsValid = false;
                document.getElementById('nameError').textContent = 'Name is required.';
            }

            // Validate Date
            var date = document.getElementById('date').value;
            if (!date) {
                formIsValid = false;
                document.getElementById('dateError').textContent = 'Date is required.';
            }

            // Validate Start Time
            var startTime = document.getElementById('startTime').value;
            if (!startTime) {
                formIsValid = false;
                document.getElementById('startTimeError').textContent = 'Start Time is required.';
            }

            // Validate End Time
            var endTime = document.getElementById('endTime').value;
            if (!endTime) {
                formIsValid = false;
                document.getElementById('endTimeError').textContent = 'End Time is required.';
            }

            // Validate Number of Hours
            var hours = document.getElementById('hours').value;
            if (!hours || hours <= 0) {
                formIsValid = false;
                document.getElementById('hoursError').textContent = 'Number of Hours must be greater than 0.';
            }

            // Validate Title
            var title = document.getElementById('title').value;
            if (!title) {
                formIsValid = false;
                document.getElementById('titleError').textContent = 'Title is required.';
            }

            // Validate Description
            var description = document.getElementById('description').value;
            if (!description) {
                formIsValid = false;
                document.getElementById('descriptionError').textContent = 'Description is required.';
            }

            // Validate Manager Employer ID
            var managerId = document.getElementById('managerId').value;
            if (!managerId) {
                formIsValid = false;
                document.getElementById('managerIdError').textContent = 'Manager Employer ID is required.';
            }

            if (!formIsValid) {
                event.preventDefault();
            }
        });

        function clearErrors() {
            document.querySelectorAll('.error').forEach(function(el) {
                el.textContent = '';
            });
        }
    </script>
</body>
</html>
