<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	boolean loginSuccess = false;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/b1","root","");
		String sql="SELECT username FROM admin WHERE username=? AND password=?";
		PreparedStatement p=c.prepareStatement(sql);
		p.setString(1,username);
		p.setString(2, password);
	    ResultSet r=p.executeQuery();
	    if (r.next()) { 
             loginSuccess = true; 
        }
	    r.close();
	    p.close();
	    c.close();

	}catch(Exception e){
		e.printStackTrace();
		out.println(e);
	}
%>
<script type="text/javascript">
function name() {
	var re =<%= loginSuccess %>;
	if(re==true){
		alert("Login successful! Welcome Admin");
		window.location.replace("admindashboard.jsp");
	}
	else {
        alert("Check your details");
        window.location.replace("admin.jsp");
    }
}
name();
</script>
