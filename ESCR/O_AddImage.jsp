<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User - Add Image</title>
<link href="css/s18.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type="text/javascript">
function valid() {
    var form = document.s;
    if (form.title.value.trim() === "") {
        alert("Please Enter Image Title");
        form.title.focus();
        return false;
    }
    if (form.tag.value.trim() === "") {
        alert("Please Enter Image Tag");
        form.tag.focus();
        return false;
    }
    if (form.des.value.trim() === "") {
        alert("Please Enter Description");
        form.des.focus();
        return false;
    }
    if (form.uses.value.trim() === "") {
        alert("Please Enter Uses");
        form.uses.focus();
        return false;
    }
    if (form.img.value.trim() === "") {
        alert("Please Select an Image");
        form.img.focus();
        return false;
    }
    return true;
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
    <div id="header">
        <div id="logo">
            <h1>Enabling Simultaneous Content Regulation and Privacy Protection for Cloud Storage</h1>
        </div>
    </div>
    <div id="page">
        <div id="content">
            <div class="post">
                <h2 class="title">Add Image</h2>
                <form name="s" action="O_AddImageIns.jsp" method="post" enctype="multipart/form-data" onsubmit="return valid()">
                    <p>(<span class="required">* Required</span>)</p>
                    <table align="center">
                        <tr>
                            <td><label>Image Title <span class="required">*</span></label></td>
                            <td><input type="text" name="title" class="text-input" /></td>
                        </tr>
                        <tr>
                            <td><label>Image Tag <span class="required">*</span></label></td>
                            <td><input type="text" name="tag" class="text-input" /></td>
                        </tr>
                        <tr>
                            <td><label>Description <span class="required">*</span></label></td>
                            <td><textarea name="des" rows="3" cols="23"></textarea></td>
                        </tr>
                        <tr>
                            <td><label>Image Uses <span class="required">*</span></label></td>
                            <td><textarea name="uses" rows="3" cols="23"></textarea></td>
                        </tr>
                        <tr>
                            <td><label>Select Image <span class="required">*</span></label></td>
                            <td><input type="file" name="img" class="file-input" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Encrypt & Add Image" class="submit-button" /></td>
                        </tr>
                    </table>
                </form>
                <div class="submit-button">
                   <a href="O_Main.jsp"><input type="submit" value="Back" class="submit-button" /></a> 
                </div>
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
</body>
</html>