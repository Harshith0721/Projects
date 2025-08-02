<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Voter Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
        }
        form {
            width: 300px;
            margin: 100px auto;
            background: #fff;
            padding: 25px 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px #aaa;
        }
        input, button {
            width: 92%;
            padding: 8px;
            margin-top: 10px;
            font-size: 14px;
        }
        button {
            background: green;
            color: white;
            border: none;
            border-radius: 4px;
        }
        .error {
            color: red;
            text-align: center;
            font-size: 13px;
            margin-top: 10px;
        }
        .success {
            color: green;
            text-align: center;
            font-size: 13px;
            margin-top: 10px;
        }
        h2 {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <form action="LoginVoter" method="post">
        <h2>Voter Login</h2>
        <input type="text" name="aadhaar" placeholder="Aadhaar Number" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>

        <% 
            String error = request.getParameter("error");
            String msg = request.getParameter("msg");
            if (error != null) {
        %>
            <div class="error"><%= error %></div>
        <% 
            } else if (msg != null) { 
        %>
            <div class="success"><%= msg %></div>
        <% } %>
    </form>
</body>
</html>
