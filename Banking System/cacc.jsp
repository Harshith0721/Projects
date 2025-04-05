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
    <table>
    <tr>
    <th>user id</th>
    <th>account_number</th>
    <th>first_name</th>
    <th>last_name</th>
    <th>address</th>
    <th>phone</th>
    <th>balance</th>
    <th>created_at</th>
    </tr>
    
   <%
   try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/b1","root","");
	   String sql="SELECT * FROM accounts";
	   PreparedStatement ps=con.prepareStatement(sql);
	   ResultSet r=ps.executeQuery();
	  while(r.next()){
		   %>
		   <tr>
		   <td><%=r.getString("user id") %></td>
		   <td><%= r.getString("account_number")%></td>
		   <td><%= r.getString("first_name")%></td>
		   <td><%=r.getString("last_name") %></td>
		   <td><%= r.getString("address")%></td>
		   <td><%=r.getString("phone")%></td>
		   <td><%= r.getString("balance")%></td>
		   <td><%=r.getTimestamp("created_at") %></td>
		   </tr>
		   
	<% 
	   }
   }catch(Exception e){
	   e.printStackTrace();
   }   
   %>
   </table>
     <footer>
        <p>&copy; 2025 SecureTrust Bank. All Rights Reserved.</p>
    </footer>

</body>
</html>