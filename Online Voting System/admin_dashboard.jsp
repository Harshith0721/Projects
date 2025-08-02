<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page session="true" %>
<%
    String admin = (String) session.getAttribute("adminUser");
    if (admin == null) {
        response.sendRedirect("admin_login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f9f9f9;
            padding: 50px;
            text-align: center;
        }
        .box {
            display: inline-block;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 10px #ccc;
        }
        h2 {
            color: #0072ff;
        }
        .btn {
            display: inline-block;
            margin: 20px;
            padding: 15px 25px;
            font-size: 16px;
            background-color: #0072ff;
            color: white;
            border: none;
            border-radius: 10px;
            text-decoration: none;
        }
        .msg {
            color: green;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2>Welcome, <%= admin %>!</h2>
        <a class="btn" href="view_results.jsp">View Results</a>
        <a class="btn" href="add_candidate.jsp">Add Candidate</a>
        <a class="btn" href="logout.jsp">Logout</a>
        <div class="msg"><%= request.getParameter("msg") != null ? request.getParameter("msg") : "" %></div>
        <div class="error"><%= request.getParameter("error") != null ? request.getParameter("error") : "" %></div>
    </div>
</body>
</html>
