<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
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
    <h2>Login Page</h2>
    <form action="ldb1.jsp" method="post">
        <label>Account Number:</label>
        <input type="text" name="username" required><br>
        <label>Password:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    </section>
    <footer>
        <p>&copy; 2025 Secure Bank. All Rights Reserved.</p>
    </footer>
    
</body>
</html>
