<%@ page import="java.sql.*" %>
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("login.jsp?msg=Please login first");
        return;
    }

    int userId = (int) session.getAttribute("user_id");
    String firstName = (String) session.getAttribute("first_name");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="Styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 20px;
        }
        .container {
            max-width: 500px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
            margin: auto;
        }
        h2 {
            color: #004080;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            text-decoration: none;
            background: #004080;
            color: white;
            border-radius: 5px;
        }
        .btn:hover {
            background: #002d5a;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">SecureTrust Bank</div>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h2>Welcome!</h2>

        <a href="update.jsp" class="btn">Update Profile</a>
        
        <a href="money.jsp" class="btn">Transfer Money</a>
        <a href="bal.jsp" class="btn">Balance</a>
        <a href="index.jsp" class="btn" style="background: red;">Logout</a>
    </div>
    <footer>
        <p>&copy; 2025 SecureTrust Bank. All Rights Reserved.</p>
    </footer>
</body>
</html>
