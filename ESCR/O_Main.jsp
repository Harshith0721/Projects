<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Owner Main</title>
<link href="css/s19.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style19 {color: #FF00FF}
.style20 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li><a href="index.html">Home</a></li>
            <li><a href="C_Login.jsp">CLOUD</a></li>
            <li><a href="KDC_Login.jsp">Third Party Regulator</a></li>
			<li class="current_page_item"><a href="U_Login.jsp">Data owner </a></li>
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
			  <h2 class="title"><span class="style20">Welcome Data Owner:: </span> <%=application.getAttribute("oname")%></h2>
			   <p class="style19"><img src="images/Owner.jpg" alt="" width="439" height="263" /></p>
	      </div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
				<h2>Data Owner Menu</h2>
			  </li>
				<li>

					  <ul>
		  			    <li><a href="O_AddImage.jsp">Add Medical Images</a></li>
           				 <li><a href="O_ViewImages.jsp">View All Repositd Medical Images</a></li>
            			 <li><a href="O_ImageKeyPermit.jsp">View Medical Secret Key Request</a></li>
						 <li><a href="U_Login.jsp">LogOut</a></li>
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
