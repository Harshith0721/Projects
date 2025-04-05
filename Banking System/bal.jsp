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
		<div class="logo">Secure Bank</div>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="admin.jsp">Admin</a></li>
				<li><a href="lb.jsp">Login</a></li>
				<li><a href="register.jsp">Register</a></li>
				<li><a href="contact.jsp">Contact Us</a></li>
			</ul>
		</nav>
	</header>
	<section class="content">
	<form action="balance.jsp" method="post">
		<label> Account Number:</label> <input type="text" name="acn" required><br>
		<button type="submit">Submit</button> 
	</form>
	</section>
	<footer>
		<p>&copy; 2025 Secure Bank. All Rights Reserved.</p>
	</footer>
</body>
</html>