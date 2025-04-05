<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User Register</title>
<link href="css/s25.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>

<style>
    .error { color: red; font-size: 14px; }
</style>

<script>
function validateForm(event) {
    let mobileInput = document.getElementById("mobile").value;
    let mobileError = document.getElementById("mobileError");

    if (!/^\d{10}$/.test(mobileInput)) {
        mobileError.textContent = "Please enter a valid 10-digit mobile number.";
        event.preventDefault(); // Prevent form submission
    } else {
        mobileError.textContent = ""; // Clear error if valid
    }
}
</script>

</head>
<body>
<div id="wrapper">
    <div id="menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="C_Login.jsp">Cloud Server</a></li>
            <li><a href="KDC_Login.jsp">Third Party Regulator</a></li>
            <li class="current_page_item"><a href="U_Login.jsp">Users</a></li>
        </ul>
    </div>
    <!-- end #menu -->

    <div id="header">
        <div id="logo">
            <h1>Enabling Simultaneous Content Regulation And Privacy Protection For Cloud Storage</h1>
        </div>
    </div>
    <!-- end #header -->

    <div id="page">
        <div id="content">
            <div class="post">
                <h2 class="title">Welcome to User Register</h2>
                <p class="title"><img src="images/Register.jpg" alt="" width="390" height="93" /></p>

                <form action="U_RegIns.jsp" method="post" enctype="multipart/form-data" onsubmit="validateForm(event)">
                    <label>Select User Type</label>
                    <select name="utype" required>
                        <option value="">---Select---</option>
                        <option value="Data Users">Data Users</option>
                        <option value="Data Owner">Data Owner</option>
                    </select>
                    
                    <label>User Name (required)</label>
                    <input type="text" name="userid" class="text" required />

                    <label>Password (required)</label>
                    <input type="password" name="pass" class="text" required />

                    <label>Email Address (required)</label>
                    <input type="email" name="email" class="text" required />

                    <label>Mobile Number (required)</label>
                    <input type="text" id="mobile" name="mobile" class="text" pattern="\d{10}" maxlength="10" required 
                        oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0,10);" />
                    <span id="mobileError" class="error"></span>

                    <label>Your Address</label>
                    <textarea name="address" cols="50" required></textarea>

                    <label>Date of Birth (required)</label>
                    <input type="date" name="dob" class="text" required />

                    <label>Select Gender (required)</label>
                    <select name="gender" class="text" required>
                        <option value="">-Select-</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>

                    <label>Enter Pincode (required)</label>
                    <input type="text" name="pincode" class="text" pattern="\d{6}" maxlength="6" required 
                        oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0,6);" />

                    <label>Enter Location (required)</label>
                    <input type="text" name="location" class="text" required />

                    <label>Select Profile Picture (required)</label>
                    <input type="file" name="pic" class="text" accept="image/*" required />

                    <input type="submit" value="REGISTER" />
                </form>
                <p align="right">
                    <a href="U_Login.jsp" class="back-button">Back</a>
                </p>
            </div>
        </div>
        <!-- end #content -->

        <div id="sidebar">
            <ul>
                <li><h2>Menu</h2></li>
                <li>
                    <ul>
                        <li><a href="index.html">HOME</a></li>
                        <li><a href="C_Login.jsp">CLOUD SERVER</a></li>
                        <li><a href="KDC_Login.jsp">Third Party Regulator</a></li>
                        <li class="current_page_item"><a href="U_Login.jsp">USERS</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- end #sidebar -->
    </div>
    <!-- end #page -->
</div>
</body>
</html>
