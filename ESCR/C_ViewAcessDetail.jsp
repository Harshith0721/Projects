<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Cloud View Images Access Details</title>
    <link href="css/s9.css" rel="stylesheet" type="text/css" media="screen" />
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/cufon-ptsans.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/coin-slider.min.js"></script>
    <style type="text/css">
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e3f2fd, #f8f9fa);
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Wrapper */
        #wrapper {
            width: 1200px; /* Increased width */
            margin: 20px auto;
            background: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        /* Menu */
        #menu {
            background: linear-gradient(to right, #a8dadc, #f1faee);
            padding: 15px 0;
            text-align: center;
            border-bottom: 2px solid #457b9d;
        }
        #menu ul {
            padding: 0;
            margin: 0;
            list-style: none;
            display: flex;
            justify-content: center;
        }
        #menu ul li {
            margin: 0 15px;
        }
        #menu ul li a {
            color: #1d3557;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 15px;
            transition: color 0.3s ease;
        }
        #menu ul li a:hover {
            color: #e63946;
        }

        /* Header */
        #header {
            background: linear-gradient(to right, #f1faee, #a8dadc);
            color: #1d3557;
            padding: 25px;
            text-align: center;
        }
        #header h1 {
            margin: 0;
            font-size: 26px;
        }

        /* Page Layout */
        #page {
            display: flex; /* Use flexbox to align items side by side */
            flex-direction: row; /* Keep items in a row */
            align-items: flex-start; /* Align items at the start */
            gap: 20px; /* Space between items */
            padding: 20px;
        }

        #content {
            flex: 2; /* Take more space */
            min-width: 600px; /* Minimum width for content */
        }

        #sidebar {
            flex: 1; /* Take less space */
            max-width: 250px; /* Maximum width for sidebar */
            background: linear-gradient(to right, #dff6ff, #a8dadc);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* Table Styling */
        table {
            width: 100%; /* Full width */
            border-collapse: collapse;
        }
        table td, table th {
            padding: 10px;
            border: 1px solid #8ab6d6;
            text-align: left;
        }
        table th {
            background-color: #99FF99;
            color: #2c83b0;
        }
        .back-button {
    display: inline-block;
    padding: 10px 15px;
    background: #457b9d;
    color: white;
    text-decoration: none;
    font-weight: bold;
    border-radius: 5px;
    transition: background 0.3s ease;
    border: none;
    cursor: pointer;
    text-align: center;
}
.back-button:hover {
    background: #e63946;
}

        /* Footer */
        #footer {
            background: linear-gradient(to right, #f1faee, #a8dadc);
            color: #1d3557;
            text-align: center;
            padding: 15px;
            margin-top: 20px;
            border-top: 2px solid #457b9d;
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            #wrapper {
                width: 90%;
            }
            #page {
                flex-direction: column;
            }
            #sidebar {
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
<div id="wrapper">
    <div id="menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li class="current_page_item"><a href="C_Login.jsp">CLOUD SERVER</a></li>
            <li><a href="KDC_Login.jsp">Third Party Regulator</a></li>
            <li><a href="U_Login.jsp">USERs</a></li>
        </ul>
    </div>
    <!-- end #menu -->
    <div id="header">
        <div id="logo">
            <h1><a href="#">Enabling Simultaneous Content Regulation And Privacy Protection For Cloud Storage Image</a></h1>
        </div>
    </div>
    <!-- end #header -->
    <div id="page">
        <div id="content">
            <div class="post">
                <h2 class="title">View All Medical Images Search Details</h2>
                <p>
                    <table width="400" border="1.5" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="86" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
                                <div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Image</div>
                            </td>
                            <td width="86" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
                                <div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">User </div>
                            </td>
                            <td width="86" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
                                <div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Image Title</div>
                            </td>
                            <td width="87" height="44" valign="middle" bgcolor="#99FF99" style="color: #2c83b0;">
                                <div align="left" class="style3 style4 style14 style7" style="margin-left:20px;">Date</div>
                            </td>
                        </tr>

                        <%@ include file="connect.jsp" %>
                        <%@ page import="org.bouncycastle.util.encoders.Base64"%>

                        <%
                            int i = 0;
                            try {
                                String sql = "select * from search_history ";
                                Statement st = connection.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                                    int count = 0;
                                    i = rs.getInt(1);
                                    String s1 = rs.getString(2);
                                    String s2 = rs.getString(3);
                                    String s3 = rs.getString(4);
                                    String s4 = rs.getString(5);
                        %>

                        <tr>
                            <td width="86">
                                <div class="style7" style="margin:10px 13px 10px 13px;">
                                    <a class="#" id="img1" href="#">
                                        <input name="image" type="image" src="images.jsp?id=<%=s4%>&value=<%="image"%>" style="width:50px; height:50px;" />
                                    </a>
                                </div>
                            </td>
                            <td width="86" valign="middle" height="44" style="color:#000000;">
                                <div align="left" class="style6 style10" style="margin-left:20px;">
                                    <a href="U_UserProfile.jsp?value=<%=s1%>&type=<%="user11"%>"><%out.println(s1);%></a>
                                </div>
                            </td>
                            <td width="109" valign="middle" height="44" style="color:#000000;">
                                <div align="left" class="style6 style10" style="margin-left:20px;">
                                    <a href="C_ImageDetail.jsp?title=<%=s2%>&type=<%="user1"%>"><%out.println(s2);%></a>
                                </div>
                            </td>
                            <td width="75" valign="middle" height="44" style="color:#000000;">
                                <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s3);%></div>
                            </td>
                        </tr>
                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                out.println(e.getMessage());
                            }
                        %>
                    </table>
                </p>
                <p align="right"><a href="C_Main.jsp" class="back-button">Back</a></p>
                <p class="meta">&nbsp;</p>
            </div>
        </div>
        <!-- end #content -->

        <div id="sidebar">
            <ul>
                <li>
                    <h2>Menu</h2>
                </li>
                <li>
                    <ul>
                        <li><a href="C_Main.jsp">HOME</a></li>
                        <li><a href="C_Login.jsp">LOGOUT</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- end #sidebar -->
    </div>
    <!-- end #page -->
</div>
<!-- end #wrapper -->
<div align="center"></div>
</body>
</html>