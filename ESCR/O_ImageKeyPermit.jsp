<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User</title>
<link href="css/s19.css" rel="stylesheet" type="text/css" media="screen" />
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
    <div id="header">
        <div id="logo">
            <h1>Enabling Simultaneous Content Regulation and Privacy Protection for Cloud Storage</h1>
        </div>
    </div>
    <div id="page">
        <div id="content">
            <div class="post">
                <h2 class="title">Secret Key Response</h2>
                <table border="1" cellpadding="5" cellspacing="0" align="center">
                    <tr>
                        <th>ID</th>
                        <th>User Name</th>
                        <th>File Name</th>
                        <th>Permission</th>
                    </tr>
                    <%  
                        try {
                            String dname = (String) application.getAttribute("oname");
                            String query = "SELECT * FROM request WHERE owner='" + dname + "'";
                            Statement st = connection.createStatement();
                            ResultSet rs = st.executeQuery(query);
                            while (rs.next()) {
                                int i = rs.getInt(1);
                                String s2 = rs.getString(2);
                                String s4 = rs.getString(4);
                                String s5 = rs.getString(5);
                    %>
                    <tr>
                        <td align="center"><%= i %></td>
                        <td align="center"><a href="O_UserProfile.jsp?value=<%= s2 %>&type=user2"><%= s2 %></a></td>
                        <td align="center"><a href="O_ImageDetail.jsp?title=<%= s4 %>&type=user7"><%= s4 %></a></td>
                        <td align="center">
                            <% if (s5.equalsIgnoreCase("Requested")) { %>
                                <a href="O_ImageKeyPermit1.jsp?usid=<%= i %>">Permit</a>
                            <% } else if (s5.equalsIgnoreCase("No")) { %>
                                Not Requested
                            <% } else { %>
                                <%= s5 %>
                            <% } %>
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
                <p align="right">
                    <button class="back-button" onclick="window.location.href='O_Main.jsp'">Back</button>
                </p>
            </div>
        </div>
        <div id="sidebar">
            <h2>Menu</h2>
            <ul>
                <li><a href="O_Main.jsp">Home</a></li>
                <li><a href="U_Login.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
</div>
<div id="footer">
    <p>&copy; 2025 Cloud Security System. All rights reserved.</p>
</div>
</body>
</html>
