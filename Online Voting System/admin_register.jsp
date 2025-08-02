<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #e2e2e2;
            display: flex;
            justify-content: center;
            padding-top: 80px;
        }
        .register-box {
            background: white;
            padding: 30px;
            width: 400px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 15px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background-color: #0072ff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056d2;
        }
    </style>
</head>
<body>
    <div class="register-box">
        <h2>Register New Admin</h2>
        <form action="AdminRegisterServlet" method="post">
            <label for="username">Admin Username</label>
            <input type="text" name="username" required />

            <label for="password">Password</label>
            <input type="password" name="password" required />

            <input type="submit" value="Register Admin" />
        </form>
    </div>
</body>
</html>
