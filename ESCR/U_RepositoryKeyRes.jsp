<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>user Repository key Response</title>
<link href="css/s20.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #FF00FF}
.style4 {color: #990099}
-->
</style>

</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li><a href="index.html">Home</a></li>
            <li><a href="C_Login.jsp">CLOUD SERVER</a></li>
            <li><a href="KDC_Login.jsp">Third Party Regulator</a></li>
			<li class="current_page_item"><a href="U_Login.jsp">USERs</a></li>
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
	<div id="page-bgtop">
	<div id="page-bgbtm">
		<div id="content">
			<div class="post">
				<h2 class="title style3"><span class="style3">Welcome</span> <span class="style3">to</span> <span class="style3">User</span> <span class="style3">Repository</span> <span class="style3">Key</span> <span class="style3">Search</span> </h2>
				  <form id="form1" name="form1" method="post" action="U_RepositoryKeyRes1.jsp">
                    <label></label>
                    <p>&nbsp;</p>
                    <div align="center">
                      <p>
                        <label><span class="style4">Enter Your Login Password :</span>
                        <input  type="password" name="pass" />
                        </label>
</p>
                      <p>&nbsp;</p>
                      <p>
                        <input type="submit" name="Submit" value="View Search Token" />
                      </p>
                    </div>
					<%String msg=(String)application.getAttribute("msg");
			  if(msg!=(null))
			  {%>
          <p align="center" class="style4"><strong> Status : <%=msg%>&nbsp;</strong>
          </p>
          <%application.removeAttribute("msg");
		  %><a href="U_RepositoryLogin.jsp" >Click here to confirm</a><%
			  }%>
                    <label></label>
                     <p align="right">
    <a href="U_RepositeConf.jsp" class="back-button">Back</a>
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
           				 <li><a href="C_Login.jsp">CLOUD SERVER</a></li>
            			<li><a href="KDC_Login.jsp">THIRD PARTY REGULATOR</a></li>
						<li class="current_page_item"><a href="U_Login.jsp">USERS</a></li>
					</ul>
				</li>
		  </ul>
		</div>
		<!-- end #sidebar -->
	</div>
	</div>
	</div>
	<!-- end #page -->
</div>
	<!-- end #footer -->
<div align=center></div>
</body>
</html>
