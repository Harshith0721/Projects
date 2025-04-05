<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Styles.css">
<style type="text/css">
 body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 20px;
        }
        .container {
            max-width: 500px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
            margin: auto;
        }
        h2 {
            color: #004080;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            text-decoration: none;
            background: #004080;
            color: white;
            border-radius: 5px;
        }
        .btn:hover {
            background: #002d5a;
        }
    </style>
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
    
    <form action="updatedb.jsp" class="content" method="post">
    <label for="account_number">Account_number</label>
    <input type="text" id="account_number" name="account_number" placeholder="Enter account number" required>
    <label for="password">Old Password</label>
    <input type="password" id="password" name="password" placeholder="Enter old password" required>
    <label for="npassword">new Password</label>
    <input type="password" id="npassword" name="npassword" placeholder="Enter new password" required>
    <button type="submit">Submit</button>
    </form>
     <footer>
        <p>&copy; 2025 SecureTrust Bank. All Rights Reserved.</p>
    </footer>
</body>
</html>