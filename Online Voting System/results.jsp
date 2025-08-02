<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Results</title>
    <style>
        body {
            font-family: Arial;
            background: #f3f3f3;
            text-align: center;
            padding-top: 40px;
        }
        .result-card {
            background: white;
            padding: 25px;
            margin: 20px auto;
            border-radius: 10px;
            width: 400px;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
        }
        img {
            width: 70px;
            height: 70px;
        }
        .name {
            font-size: 20px;
            margin: 10px 0;
        }
        .party {
            color: #444;
        }
        .votes {
            margin-top: 15px;
            font-weight: bold;
            font-size: 18px;
            color: green;
        }
    </style>
</head>
<body>
    <h2>Live Voting Results</h2>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(
                "SELECT c.id, c.name, c.party, c.symbol, COUNT(v.id) AS votes " +
                "FROM candidates c LEFT JOIN votes v ON c.id = v.candidate_id " +
                "GROUP BY c.id");

            while (rs.next()) {
    %>
        <div class="result-card">
            <img src="images/<%= rs.getString("symbol") %>" alt="Symbol" />
            <div class="name"><%= rs.getString("name") %></div>
            <div class="party"><%= rs.getString("party") %></div>
            <div class="votes">Votes: <%= rs.getInt("votes") %></div>
        </div>
    <%
            }
            con.close();
        } catch (Exception e) {
            out.println("Error loading results: " + e.getMessage());
        }
    %>
</body>
</html>
