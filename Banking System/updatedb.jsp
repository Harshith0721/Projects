<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String account_number = request.getParameter("account_number");
    String password = request.getParameter("password");
    String npassword=request.getParameter("npassword");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/b1", "root", "");


     
        String sq = "SELECT password FROM users WHERE account_number=? AND password=?";
        PreparedStatement ps = c.prepareStatement(sq);
        ps.setString(1, account_number);
        ps.setString(2, password);
        ResultSet r = ps.executeQuery();

        if (r.next()==true) { 
            String sq1="UPDATE users SET password=? WHERE password=?";
            PreparedStatement psq=c.prepareStatement(sq1);
            psq.setString(1, npassword);
            psq.setString(2,password);
            int r1=psq.executeUpdate();
            if(r1>0){
            out.println("Password Changed successfully");
            }
        } else {
            out.println("Password not matched");
        }

 
        r.close();
        ps.close();
        c.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
