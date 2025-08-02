<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login - Online Voting System</title>
    <style>
        body {
            background: linear-gradient(135deg, #2c3e50, #3498db);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: white;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3);
            width: 350px;
        }

        h2 {
            text-align: center;
            margin-bottom: 24px;
            color: #2c3e50;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #2c3e50;
            font-weight: 600;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 16px;
            font-size: 14px;
        }

        button {
            width: 100%;
            background-color: #2980b9;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #1f5f8b;
        }

        .error {
            color: red;
            font-size: 14px;
            text-align: center;
            margin-bottom: 10px;
        }

        .back {
            text-align: center;
            margin-top: 10px;
        }

        .back a {
            color: #3498db;
            text-decoration: none;
            font-size: 14px;
        }

        .back a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Admin Login</h2>

    <% if (request.getAttribute("error") != null) { %>
        <div class="error"><%= request.getAttribute("error") %></div>
    <% } %>

    <form action="AdminLogin" method="post">
        <label for="username">Username</label>
        <input type="text" name="username" id="username" required>

        <label for="password">Password</label>
        <input type="password" name="password" id="password" required>

        <button type="submit">Login</button>
    </form>

    <div class="back">
        <a href="index.jsp">← Back to Home</a>
    </div>
</div>

</body>
</html>
