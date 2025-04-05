<%@ page import="java.sql.*" %>
<%
    String account_number = request.getParameter("username");
    String password = request.getParameter("password");

     
    boolean loginSuccess = false;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/b1", "root", "");
        String sql = "SELECT user_id FROM users WHERE account_number = ? AND password = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, account_number);
        stmt.setString(2, password);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            loginSuccess = true;
            session.setAttribute("user_id", rs.getInt("user_id")); 
        }

    } catch (Exception e) {
        e.printStackTrace();
   
    }
    if (loginSuccess) {
        response.sendRedirect("userdashboard.jsp"); 
    } else {
        response.sendRedirect("login.jsp?error=Invalid credentials"); 
    }
%>
