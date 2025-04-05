<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - SecureTrust Bank</title>
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
 <marquee>REGISTRATION IS DONE ONLY IF YOU HAVE ACCOUNT IN BANK</marquee>
    <section class="content">
        <h1>Register</h1>
        <form action="registerdb.jsp" method="post">
            <label for="account_number">Account Number</label>
            <input type="text" id="account_number" name="account_number" placeholder="Enter Account Number" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter Email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required>


            <button type="submit">Register</button>
        </form>

        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </section>

    <footer>
        <p>&copy; 2025 SecureTrust Bank. All Rights Reserved.</p>
    </footer>

</body>
</html>
