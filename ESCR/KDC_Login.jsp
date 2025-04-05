<%@ include file="connect.jsp" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>SERVER2 LOGIN</title>
    <link href="css/s12.css" rel="stylesheet" type="text/css" media="screen" />
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/cufon-ptsans.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/coin-slider.min.js"></script>
    <style type="text/css">
        .style3 { color: #FF00FF; }
    </style>
    <script language="javascript" type="text/javascript">      
        function valid() {
            var na3 = document.s.userid.value;
            if (na3 == "") {
                alert("Please Enter KDC Name");
                document.s.userid.focus();
                return false;
            }
            var na4 = document.s.pass.value;
            if (na4 == "") {
                alert("Please Enter Password");
                document.s.pass.focus();
                return false;
            }
        }
    </script>
</head>
<body>
<div id="wrapper">
    <div id="menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="C_Login.jsp">CLOUD</a></li>
            <li class="current_page_item"><a href="KDC_Login.jsp">Third Party Regulator</a></li>
            <li><a href="U_Login.jsp">DATA OWNER OR DATA USERs</a></li>
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
                <h2 class="style3">Third Party Regulator LOGIN</h2>
                <P>&nbsp;</P>
                <div class="clr"></div>
                <form name="s" action="KDC_Authentication.jsp" method="post" onSubmit="return valid()" target="_top">
                    <div align="center">
                        <table border="0" width="88%" height="165">
                            <tr>
                                <td height="25" colspan="2"><img src="images/Klogin.jpg" alt="" width="487" height="126" /></td>
                            </tr>
                            <tr>
                                <td width="48%" height="25"><span class="style3"><strong><font size="5" face="Courier New, Courier, monospace">Username</font> </strong></span></td>
                                <td width="52%" height="25">
                                    <input type="text" name="userid" size="15">
                                </td>
                            </tr>
                            <tr>
                                <td width="48%" height="25"><span class="style3"><strong><font size="5" face="Courier New, Courier, monospace">Password</font></strong></span></td>
                                <td width="52%" height="25">
                                    <input type="password" name="pass" size="15">
                                </td>
                            </tr>
                            <tr>
                                <td height="78" colspan="2">
                                    <p align="center">
                                        <input type="submit" value="Login" name="B1" class="button" />
                                        <input type="reset" value="Reset" name="B2" class="button" />
                                    </p>
                                </td>
                            </tr>
                        </table>
                        <p>&nbsp;</p>
                    </div>
                </form>
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
                        <li><a href="index.html">HOME</a></li>
                        <li><a href="C_Login.jsp">CLOUD</a></li>
                        <li class="current_page_item"><a href="KDC_Login.jsp">Third Party Regulator</a></li>
                        <li><a href="U_Login.jsp">USERs</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- end #sidebar -->
    </div>
</div>
<!-- end #footer -->
<div align=center></div>
</body>
</html>