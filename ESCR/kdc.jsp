<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>KDC Repository Key Access</title>
    <link href="css/s18.css" rel="stylesheet" type="text/css" media="screen" />
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/cufon-ptsans.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/coin-slider.min.js"></script>
    <style>
        /* Layout adjustments */
        #main-container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }
        .table-container {
            width: 70%; /* Adjusted width */
            margin-right: 20px; /* Added margin for spacing */
        }
        #sidebar {
            width: 25%; /* Adjusted width */
            padding: 15px;
            background: #f4f4f4;
            border-left: 2px solid #ddd;
            text-align: center;
        }
        .table-container table {
            width: 100%;
            border-collapse: collapse;
        }
        .table-container th, .table-container td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        .table-container th {
            background-color: #f2f2f2;
        }
        .back-button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <div id="logo">
            <h1><a href="#">Enabling Simultaneous Content Regulation And Privacy Protection For Cloud Storage</a></h1>
        </div>
    </div>

    <div id="page">
        <div id="main-container">
            <div class="table-container">
                <h2><span>KDC View Images</span></h2>
                <table border="1" cellpadding="5" cellspacing="0">
                    <tr>
                        <th>Image</th>
                        <th>Image Title</th>
                        <th>Image Key</th>
                        <th>Description</th>
                        <th>Image Uses</th>
                        <th>Date</th>
                        <th>Rank</th>
                    </tr>
                    <% 
                    try {
                        String sql = "SELECT * FROM images";
                        Statement st = connection.createStatement();
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                            int i = rs.getInt(1);
                            String title = rs.getString(3);
                            String key = rs.getString(10);
                            String description = rs.getString(5);
                            String uses = rs.getString(6);
                            String date = rs.getString(7);
                            String rank = rs.getString(9);
                            String decryptedDes = new String(Base64.decode(description.getBytes()));
                    %>
                    <tr>
                        <td>
                            <img src="images.jsp?id=<%=i%>&value=image" width="50" height="50" />
                        </td>
                        <td><%= title %></td>
                        <td><%= key %></td>
                        <td><%= decryptedDes %></td>
                        <td><%= uses %></td>
                        <td><%= date %></td>
                        <td><%= rank %></td>
                    </tr>
                    <% 
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    %>
                </table>
                <a href="KDC_Main.jsp" class="back-button">Back</a>
            </div>

            <div id="sidebar">
                <h2>Menu</h2>
                <ul>
                    <li><a href="KDC_Main.jsp">HOME</a></li>
                    <li><a href="KDC_Login.jsp">LogOut</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="footer">
        <p>&copy; 2023 Your Company. All rights reserved.</p>
    </div>
</div>
</body>
</html>