<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Voting System</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #3f87a6, #ebf8e1);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
           
        }

        .container {
            background: #fff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            text-align: center;
            width: 400px;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
        }

        a.button {
            display: block;
            margin: 12px auto;
            padding: 14px 25px;
            background-color: #0072ff;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
            
        }

        a.button:hover {
            background-color: #0056d2;
        }

        .footer {
            margin-top: 30px;
            color: #777;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Online Voting System</h1>

        <a href="voter_login.jsp" class="button">Voter Login</a>
        <a href="voter_register.jsp" class="button">Voter Registration</a>

        <a href="admin_login.jsp" class="button">Admin Login</a>
        <a href="admin_register.jsp" class="button">Register Admin</a>

        <div class="footer">© 2025 Online Voting System</div>
    </div>
</body>
</html>
