<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Green Forest  
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20110306

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Cloud login</title>
<link href="css/s6.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-ptsans.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style3 {color: #FF00FF}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter server Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
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
            <li class="current_page_item"><a href="C_Login.jsp">Cloud</a></li>
            <li><a href="KDC_Login.jsp">Third Party Regulator</a></li>
			<li><a href="U_Login.jsp">DATA OWNER OR DATA USER</a></li>
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
				<h2 class="title"><span class="style3">Welcome</span> <span class="style3">to</span> <span class="style3">Server</span> <span class="style3">Login</span>   </h2>

 <form name="s" action="C_Authentication.jsp" method="post" onSubmit="return valid()"  ons target="_top">
   <p></p>
  <div align="center">
    <table border="0" width="89%" height="165">
      <tr>
        <td height="25" colspan="2"><img src="images/Clogin.png" alt="" width="370" height="139" /></td>
        </tr>
      <tr>
        <td width="48%" height="25"><span class="style3"><strong><font size="5" face="Courier New, Courier, monospace">User Name</font> </strong></span></td>
        <td width="52%" height="25">
  <input type="text"  name="userid" size="15"></td>
      </tr>
      <tr>
        <td width="48%" height="25"><span class="style3"><strong> <font size="5" face="Courier New, Courier, monospace">Pasword</font></strong></span></td>
        <td width="52%" height="25">
  <input type="password"  name="pass" size="15"></td>
      </tr>
      <tr>
        <td height="78" colspan="2">
        <p align="center">
          <input type="submit"  value="Login" name="B1" />
          <input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  <p> </p>
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
						<li class="current_page_item"><a href="C_Login.jsp">CLOUD1</a></li>
            			<li><a href="KDC_Login.jsp">Third Party Regulator</a></li>
						<li><a href="U_Login.jsp">DATA OWNER OR DATA USER</a></li>
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
