<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Styles.css">

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
    
    
    
   <%
   String account_number=request.getParameter("acn");
   int bal=0;
   try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/b1","root","");
	   String sql="SELECT balance FROM accounts WHERE account_number=?";
	   PreparedStatement ps=con.prepareStatement(sql);
	   ps.setString(1, account_number);
	   ResultSet r=ps.executeQuery();
	  while(r.next()){
		   bal=r.getInt("balance");
		   out.println("Balance Remaining Is $"+bal);
	   }
   }catch(Exception e){
	   e.printStackTrace();
   }   
   %>
   
     <footer>
        <p>&copy; 2025 SecureTrust Bank. All Rights Reserved.</p>
    </footer>

</body>
</html>