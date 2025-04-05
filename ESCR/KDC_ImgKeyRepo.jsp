<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>KDC Images Key Report</title>
<link href="css/s11.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/custom-style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<style>
    .container {
        display: flex;
        align-items: flex-start;
        justify-content: space-between;
    }
    .table-container {
        flex: 2;
        padding-right: 20px;
    }
    .wide-sidebar {
        flex: 1;
        min-width: 250px;
        background: #f4f4f4;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
</style>
</head>
<body>
<div id="wrapper">
    <div id="menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="C_Login.jsp">CLOUD SERVER</a></li>
            <li class="current_page_item"><a href="KDC_Login.jsp">Third Party Regulator</a></li>
            <li><a href="U_Login.jsp">USERs</a></li>
        </ul>
    </div>
    <div id="header">
        <div id="logo">
            <h1><a href="#">Enabling Simultaneous Content Regulation And Privacy Protection For Cloud Storage Image</a></h1>
        </div>
    </div>
    <div id="page">
        <div id="page-bgtop">
            <div id="page-bgbtm">
                <div class="container">
                    <div class="table-container">
                        <h2 class="title">View Secret Key Access</h2>
                        <table class="styled-table">
                            <tr>
                                <th>USER</th>
                                <th>SECRET KEY</th>
                                <th>IMAGE TITLE</th>
                                <th>USER</th>
                                <th>DATE</th>
                            </tr>
                            <%  
                                try {
                                    String query="select * from image_keyreport"; 
                                    Statement st=connection.createStatement();
                                    ResultSet rs=st.executeQuery(query);
                                    while (rs.next()) {
                            %>
                            <tr>
                                <td align="center"><%=rs.getInt(1)%></td>
                                <td align="center"><%=rs.getString(2)%></td>
                                <td align="center"><a href="C_ImageDetail.jsp?title=<%=rs.getString(3)%>&type=user4" class="no-underline"><%=rs.getString(3)%></a></td>
                                <td align="center"><a href="U_UserProfile.jsp?value=<%=rs.getString(4)%>&type=user10" class="no-underline"><%=rs.getString(4)%></a></td>
                                <td align="center"><%=rs.getString(5)%></td>
                            </tr>
                            <%  
                                    }
                                    connection.close();
                                } catch(Exception e) {
                                    out.println(e.getMessage());
                                }
                            %>
                        </table>
                       <p align="right"><a href="KDC_Main.jsp" class="button">Back</a></p>
                    </div>
                    <div id="sidebar" class="wide-sidebar">
                        <h2>Menu</h2>
                        <ul>
                            <li><a href="KDC_Main.jsp" class="no-underline">HOME</a></li>
                            <li><a href="KDC_Login.jsp" class="no-underline">LogOut</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
