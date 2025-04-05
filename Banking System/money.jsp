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
	<form action="mdb.jsp" method="post">
		<label>Sender Account Number:</label> <input type="text" name="sender"
			required><br> <label>Receiver Account Number:</label> <input
			type="text" name="receiver" required><br> <label>Amount:</label>
		<input type="number" name="amount" required><br> <input
			type="submit" value="Transfer">
	</form>
	</section>
	<footer>
		<p>&copy; 2025 Secure Bank. All Rights Reserved.</p>
	</footer>
</body>
</html>