<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Voting Results</title>
    <style>
        body {
            font-family: Arial;
            background: #f1f1f1;
            padding-top: 50px;
            text-align: center;
        }
        table {
            margin: auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 0 10px #aaa;
        }
        th, td {
            padding: 15px;
            border: 1px solid #ccc;
        }
        th {
            background-color: #0072ff;
            color: white;
        }
    </style>
</head>
<body>
    <h2>Live Voting Results</h2>
    <table>
        <tr><th>Candidate</th><th>Total Votes</th></tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT candidate_id, candidate_name, COUNT(*) AS total FROM votes GROUP BY candidate_id, candidate_name ORDER BY total DESC");


                while (rs.next()) {
                    String ID = rs.getString("candidate_Id");
                    String name = rs.getString("candidate_name");
                    int count = rs.getInt("total");
        %>
        <tr>
            <td><%= name %></td>
            <td><%= count %></td>
        </tr>
        <%
                }
                con.close();
            } catch (Exception e) {
                out.println("<tr><td colspan='2'>Error loading results</td></tr>");
            }
        %>
    </table>
    <br><a href="admin_dashboard.jsp">← Back to Dashboard</a>
</body>
</html>
