<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vote Now</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f9f9f9;
            padding: 50px;
            text-align: center;
        }
        .candidate-box {
            display: inline-block;
            background: #fff;
            width: 300px;
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            vertical-align: top;
        }
        img.symbol {
            width: 80px;
            height: 80px;
            margin-bottom: 15px;
        }
        .party {
            color: #0072ff;
            font-weight: bold;
            margin: 8px 0;
        }
        .manifesto {
            font-size: 14px;
            margin: 10px 0;
        }
        form {
            margin-top: 10px;
        }
        button {
            padding: 10px 20px;
            background-color: #0072ff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0057d8;
        }
    </style>
</head>
<body>
    <h2>Choose Your Candidate</h2>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM candidates");

            while (rs.next()) {
    %>
        <div class="candidate-box">
            
            <h3><%= rs.getString("name") %></h3>
            <div class="party">(<%= rs.getString("party") %>)</div>
            <div class="manifesto"><%= rs.getString("manifesto") %></div>
            <form action="CastVote" method="post">
                <input type="hidden" name="candidate_id" value="<%= rs.getString("Id") %>" />
                <input type="hidden" name="candidate_name" value="<%= rs.getString("name") %>" />
                <button type="submit">Vote</button>
            </form>
        </div>
    <%
            }
            con.close();
        } catch (Exception e) {
            out.println("Error loading candidates: " + e.getMessage());
        }
    %>
</body>
</html>
