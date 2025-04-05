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
    <section class="content">
    <form action="addaccdb.jsp" method="post">
    <label for="account_number">Account Number</label>
    <input type="text" id="account_number" class="account_number"name="account_number"required>
    <label for="first name">First Name</label>
    <input type="text" id="first_name" class="first_name" name="first_name" required>
    <label for="last name">Last Name</label>
    <input type="text" id="last_name" class="last_name" name="last_name" required>
    <label for="address">address</label>
    <input type="text" id="address" class="address" name="address" required>
    <label for="phone">phone</label>
    <input type="text" id="phone" class="phone" name="phone" required>
    <label for="balance">Balance</label>
    <input type="number" id="balance" class="balance" name="balance" required>
    <button type="submit">Create Account</button>
    </form>
      </section>

    <footer>
        <p>&copy; 2025 SecureTrust Bank. All Rights Reserved.</p>
    </footer>

</body>
</html>