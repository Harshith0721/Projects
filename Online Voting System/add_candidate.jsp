<%@ page session="true" contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("adminUser") == null) {
        response.sendRedirect("admin_login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Candidate</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #eef2f3;
            padding-top: 80px;
            display: flex;
            justify-content: center;
        }
        .form-box {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
            width: 400px;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        label {
            display: block;
            text-align: left;
            font-weight: bold;
            margin-top: 15px;
            color: #444;
        }
        input[type="text"], textarea, input[type="file"] {
            width: 100%;
            padding: 10px 12px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 15px;
            margin-top: 6px;
        }
        textarea {
            resize: vertical;
            height: 80px;
        }
        input[type="submit"] {
            margin-top: 25px;
            background: #0072ff;
            color: white;
            border: none;
            width: 100%;
            padding: 12px;
            font-weight: bold;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0057d8;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #0072ff;
        }
    </style>
</head>
<body>
    <div class="form-box">
        <h2>Add New Candidate</h2>
        <form action="AddCandidate" method="post" enctype="multipart/form-data">
            <label for="name">Candidate Name</label>
            <input type="text" name="name" id="name" required />

            <label for="party">Party Name</label>
            <input type="text" name="party" id="party" required />


            <label for="manifesto">Manifesto</label>
            <textarea name="manifesto" id="manifesto"></textarea>

            <input type="submit" value="Add Candidate" />
        </form>
        <a href="admin_dashboard.jsp">← Back to Dashboard</a>
    </div>
</body>
</html>
