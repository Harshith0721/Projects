<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String account_number=request.getParameter("account_number");
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
int balance = Integer.parseInt(request.getParameter("balance"));

int re=0;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/b1","root","");
	String sq="INSERT INTO accounts (account_number, first_name, last_name, address, phone, balance) values(?,?,?,?,?,?)";
	PreparedStatement ps=c.prepareStatement(sq);
	ps.setString(1, account_number);
	ps.setString(2, first_name);
	ps.setString(3, last_name);
	ps.setString(4, address);
	ps.setString(5, phone);
	ps.setInt(6, balance);
	int r=ps.executeUpdate();
	if(r>0){
		re=1;
	}

}catch(Exception e){
	e.printStackTrace();
}
%>
<script type="text/javascript">
function name() {
	let re=<%=re%>;
	if(re>0){
		alert("Account Created Successfully");
	}else{
		alert("Account Not Created");
	}
}
name();
</script>