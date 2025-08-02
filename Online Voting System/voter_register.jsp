<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #eef;
        }
        form {
            width: 300px;
            margin: 80px auto;
            padding: 25px 20px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px #ccc;
        }
        input, button {
            width: 92%;
            padding: 8px;
            margin-top: 10px;
            font-size: 14px;
        }
        label {
            display: block;
            margin-top: 10px;
            font-size: 14px;
        }
        button {
            background: teal;
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
        h2 {
            margin-bottom: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form action="RegisterVoter" method="post">
        <h2>Voter Registration</h2>

        <input type="text" name="name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="text" name="aadhaar" placeholder="Aadhaar Number (12 digits)" required>

        <label for="dob">Date of Birth:</label>
        <input type="date" name="dob" required max="<%= LocalDate.now().minusYears(18) %>">

        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Register</button>

        <% if (request.getParameter("error") != null) { %>
            <div class="error"><%= request.getParameter("error") %></div>
        <% } %>
    </form>
</body>
</html>
