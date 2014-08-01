<%-- 
    Document   : index
    Created on : Jun 17, 2014, 5:35:38 PM
    Author     : ROHITH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<html>

<head>
  <title>A Decentralized Self-Adaptation Mechanism</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
  <script>
function validateForm()
{
var x=document.forms["myForm"]["uname"].value;
if (x==null || x=="")
  {
  alert("Please enter User Name");
  return false;
  }
  var y=document.forms["myForm"]["pwd"].value;
if (y==null || y=="")
  {
  alert("Please enter Your Password");
  return false;
  }
}
</script>
  <style>
        #menu-bar {
  width: 95%;
  margin: 0px 0px 0px 0px;
  padding: 6px 6px 4px 6px;
  height: 34px;
  line-height: 100%;
  border-radius: 38px;
  -webkit-border-radius: 38px;
  -moz-border-radius: 38px;
  box-shadow: 2px 2px 3px #666666;
  -webkit-box-shadow: 2px 2px 3px #666666;
  -moz-box-shadow: 2px 2px 3px #666666;
  background: #8B8B8B;
  background: linear-gradient(top,  #A9A9A9,  #7A7A7A);
  background: -ms-linear-gradient(top,  #A9A9A9,  #7A7A7A);
  background: -webkit-gradient(linear, left top, left bottom, from(#A9A9A9), to(#7A7A7A));
  background: -moz-linear-gradient(top,  #A9A9A9,  #7A7A7A);
  border: solid 5px #6D6D6D;
  position:relative;
  z-index:999;
}
#menu-bar li {
  margin: 0px 0px 6px 0px;
  padding: 0px 6px 0px 6px;
  float: left;
  position: relative;
  list-style: none;
}
#menu-bar a {
  font-weight: bold;
  font-family: arial;
  font-style: normal;
  font-size: 12px;
  color: #E7E5E5;
  text-decoration: none;
  display: block;
  padding: 6px 20px 6px 20px;
  margin: 0;
  margin-bottom: 6px;
  border-radius: 10px;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  text-shadow: 2px 2px 3px #000000;
}
#menu-bar li ul li a {
  margin: 0;
}
#menu-bar .active a, #menu-bar li:hover > a {
  background: #0399D4;
  background: linear-gradient(top,  #EBEBEB,  #A1A1A1);
  background: -ms-linear-gradient(top,  #EBEBEB,  #A1A1A1);
  background: -webkit-gradient(linear, left top, left bottom, from(#EBEBEB), to(#A1A1A1));
  background: -moz-linear-gradient(top,  #EBEBEB,  #A1A1A1);
  color: #444444;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
  -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
  box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
  text-shadow: 2px 2px 3px #FFFFFF;
}
#menu-bar ul li:hover a, #menu-bar li:hover li a {
  background: none;
  border: none;
  color: #666;
  -box-shadow: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
}
#menu-bar ul a:hover {
  background: #0399D4 !important;
  background: linear-gradient(top,  #04ACEC,  #0186BA) !important;
  background: -ms-linear-gradient(top,  #04ACEC,  #0186BA) !important;
  background: -webkit-gradient(linear, left top, left bottom, from(#04ACEC), to(#0186BA)) !important;
  background: -moz-linear-gradient(top,  #04ACEC,  #0186BA) !important;
  color: #483BFF !important;
  border-radius: 0;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  text-shadow: 2px 2px 3px #FF3224;
}
#menu-bar ul {
  background: #DDDDDD;
  background: linear-gradient(top,  #FFFFFF,  #CFCFCF);
  background: -ms-linear-gradient(top,  #FFFFFF,  #CFCFCF);
  background: -webkit-gradient(linear, left top, left bottom, from(#FFFFFF), to(#CFCFCF));
  background: -moz-linear-gradient(top,  #FFFFFF,  #CFCFCF);
  display: none;
  margin: 0;
  padding: 0;
  width: 185px;
  position: absolute;
  top: 34px;
  left: 0;
  border: solid 1px #B4B4B4;
  border-radius: 10px;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  -webkit-box-shadow: 2px 2px 3px #222222;
  -moz-box-shadow: 2px 2px 3px #222222;
  box-shadow: 2px 2px 3px #222222;
}
#menu-bar li:hover > ul {
  display: block;
}
#menu-bar ul li {
  float: none;
  margin: 0;
  padding: 0;
}
#menu-bar ul a {
  padding:10px 0px 10px 15px;
  color:#424242 !important;
  font-size:12px;
  font-style:normal;
  font-family:arial;
  font-weight: normal;
  text-shadow: 2px 2px 3px #FFFFFF;
}
#menu-bar ul li:first-child > a {
  border-top-left-radius: 10px;
  -webkit-border-top-left-radius: 10px;
  -moz-border-radius-topleft: 10px;
  border-top-right-radius: 10px;
  -webkit-border-top-right-radius: 10px;
  -moz-border-radius-topright: 10px;
}
#menu-bar ul li:last-child > a {
  border-bottom-left-radius: 10px;
  -webkit-border-bottom-left-radius: 10px;
  -moz-border-radius-bottomleft: 10px;
  border-bottom-right-radius: 10px;
  -webkit-border-bottom-right-radius: 10px;
  -moz-border-radius-bottomright: 10px;
}
#menu-bar:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
#menu-bar {
  display: inline-block;
}
  html[xmlns] #menu-bar {
  display: block;
}
* html #menu-bar {
  height: 1%;
}
body {
	margin: 0;
	padding: 0;
	background: #f4f4f4;
	font: 14px;
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}

.link { text-align: center; clear: both; padding: 20px 0; }
.link a { color: #333333; }

.wrapper {
	width: 960px;
	margin: 50px auto;
}

/* Form 1 style */

.form1 {
	width: 450px;
	float: left;
	background: #fff;
	color: #777;
	-webkit-box-shadow: 0px 0px 8px 2px #d1d1d1;
	-moz-box-shadow: 0px 0px 8px 2px #d1d1d1;
	box-shadow: 0px 0px 8px 2px #d1d1d1; 
	-webkit-border-top-left-radius: 0px;
	-webkit-border-top-right-radius: 0px;
	-webkit-border-bottom-right-radius: 6px;
	-webkit-border-bottom-left-radius: 6px;
	-moz-border-radius-topleft: 0px;
	-moz-border-radius-topright: 0px;
	-moz-border-radius-bottomright: 6px;
	-moz-border-radius-bottomleft: 6px;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 6px;
	border-bottom-left-radius: 6px; 
	overflow: hidden;
}

.formtitle {
	padding: 10px;
	line-height: 16px;
	font-size: 13px;
	text-shadow: -1px -1px #e87c19;
	color: #fff;
	font-weight: bold;
	border-bottom: 1px solid #eb8d19;
	width: 430px;
	background: #ffbd27; /* Old browsers */
	background: -moz-linear-gradient(top, #ffbd27 0%, #ffb119 50%, #ff9d19 51%, #ff9d19 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffbd27), color-stop(50%,#ffb119), color-stop(51%,#ff9d19), color-stop(100%,#ff9d19)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #ffbd27 0%,#ffb119 50%,#ff9d19 51%,#ff9d19 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #ffbd27 0%,#ffb119 50%,#ff9d19 51%,#ff9d19 100%); /* Opera11.10+ */
	background: -ms-linear-gradient(top, #ffbd27 0%,#ffb119 50%,#ff9d19 51%,#ff9d19 100%); /* IE10+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffbd27', endColorstr='#ff9d19',GradientType=0 ); /* IE6-9 */
	background: linear-gradient(top, #ffbd27 0%,#ffb119 50%,#ff9d19 51%,#ff9d19 100%); /* W3C */
}

.input {
	width: 410px;
	border-bottom: 1px solid #ddd;
	margin-bottom: 10px;
	margin: 20px;
	overflow: hidden;
}

.inputtext {
	float: left;
	line-height: 18px;
	height: 35px;
	font-size: 14px;
	width: 120px;
}

.inputcontent {
	float: left;
	width: 290px;
	height: 50px;
}

.inputcontent input {
	padding: 5px;
	height: 18px;
	width: 200px;
	line-height: 18px;
	border: 1px solid #c7c7c7;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	color: #777;
}

.inputcontent a {
	color: #0084ff;
	font-size: 12px;
	text-decoration: none;
	line-height: 12px;
}

.nobottomborder {
	border-bottom: 0;
}

.buttons {
	background: #f1f1f1;
	border-top: 1px solid #ddd;
	padding: 15px;
	height: 34px;
}

.greybutton {
	background: #e1e1e1; /* Old browsers */
	background: -moz-linear-gradient(top, #e1e1e1 0%, #bababa 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#e1e1e1), color-stop(100%,#bababa)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #e1e1e1 0%,#bababa 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #e1e1e1 0%,#bababa 100%); /* Opera11.10+ */
	background: -ms-linear-gradient(top, #e1e1e1 0%,#bababa 100%); /* IE10+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e1e1e1', endColorstr='#bababa',GradientType=0 ); /* IE6-9 */
	background: linear-gradient(top, #e1e1e1 0%,#bababa 100%); /* W3C */ 
	border: 1px solid #bababa;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px; 
	line-height: 20px;
	font-size: 16px;
	padding: 6px 12px;
	color: #fff;
	text-shadow: -1px -1px #bababa;
	float: right;
	margin-left: 10px;
	cursor: pointer;
}

.greybutton:hover{
	background: #bababa; /* Old browsers */
	background: -moz-linear-gradient(top, #bababa 0%, #e1e1e1 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#bababa), color-stop(100%,#e1e1e1)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #bababa 0%,#e1e1e1 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #bababa 0%,#e1e1e1 100%); /* Opera11.10+ */
	background: -ms-linear-gradient(top, #bababa 0%,#e1e1e1 100%); /* IE10+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#bababa', endColorstr='#e1e1e1',GradientType=0 ); /* IE6-9 */
	background: linear-gradient(top, #bababa 0%,#e1e1e1 100%); /* W3C */ 
}

.orangebutton {
	background: #ffc339; /* Old browsers */
	background: -moz-linear-gradient(top, #ffc339 0%, #ff9b19 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffc339), color-stop(100%,#ff9b19)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #ffc339 0%,#ff9b19 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #ffc339 0%,#ff9b19 100%); /* Opera11.10+ */
	background: -ms-linear-gradient(top, #ffc339 0%,#ff9b19 100%); /* IE10+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffc339', endColorstr='#ff9b19',GradientType=0 ); /* IE6-9 */
	background: linear-gradient(top, #ffc339 0%,#ff9b19 100%); /* W3C */
	border: 1px solid #ff9b19;
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px; 
	line-height: 20px;
	font-size: 16px;
	padding: 6px 12px;
	color: #fff;
	text-shadow: -1px -1px #ff9b19;
	float: right;
	margin-left: 10px;
	cursor: pointer;
}

.orangebutton:hover{
	background: #ff9b19; /* Old browsers */
	background: -moz-linear-gradient(top, #ff9b19 0%, #ffc339 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ff9b19), color-stop(100%,#ffc339)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #ff9b19 0%,#ffc339 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #ff9b19 0%,#ffc339 100%); /* Opera11.10+ */
	background: -ms-linear-gradient(top, #ff9b19 0%,#ffc339 100%); /* IE10+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ff9b19', endColorstr='#ffc339',GradientType=0 ); /* IE6-9 */
	background: linear-gradient(top, #ff9b19 0%,#ffc339 100%); /* W3C */
}

/* Form 2 Style */

.form2 {
	width: 450px;
	float: right;
	background: #fff;
	color: #777;
	-webkit-box-shadow: 0px 0px 8px 2px #d1d1d1;
	-moz-box-shadow: 0px 0px 8px 2px #d1d1d1;
	box-shadow: 0px 0px 8px 2px #d1d1d1; 
	-webkit-border-top-left-radius: 0px;
	-webkit-border-top-right-radius: 0px;
	-webkit-border-bottom-right-radius: 6px;
	-webkit-border-bottom-left-radius: 6px;
	-moz-border-radius-topleft: 0px;
	-moz-border-radius-topright: 0px;
	-moz-border-radius-bottomright: 6px;
	-moz-border-radius-bottomleft: 6px;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 6px;
	border-bottom-left-radius: 6px; 
	overflow: hidden;
}

.textarea {
	padding: 5px;
	height: 100px;
	width: 200px;
	line-height: 18px;
	border: 1px solid #c7c7c7;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	color: #777;
}

.inputtextbox {
	width: 410px;
	margin-bottom: 10px;
	margin: 20px;
	overflow: hidden;
}

.inputtextbox .inputcontent {
	height: 114px;
}
</style>
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text"><br>
          <!-- class="logo_colour", allows you to change the colour of the text -->
   <font size="6" color="white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Changing the QoS Requirements<br> 
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for Service Based Applications in Cloud&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;using Decentralized Self-Adaptation Mechanism</font>
          
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index.jsp">Home</a></li>
          <li><a href="admin.jsp">Admin</a></li>
          <li><a href="user.jsp">User Login</a></li>
          <li><a href="reg.jsp">Registration</a></li>
          
          <li><a href="chair.jsp">Market</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content"><br>
      <h2><font color="orange"> Welcome to Admin Login</h2><br>
          
      <form class="form1" action="adminlog1.jsp"  name="myForm" onsubmit="return validateForm()" method="post">
    <table align='center'>
      <tr>
          <td align='center'>
			<div class="formtitle">Admin Login</div>

			<div class="input">
				<div class="inputtext">Username: </div>
				<div class="inputcontent">

					<input type="text" name='uname' />

				</div>
			</div>

			<div class="input nobottomborder">
				<div class="inputtext">Password: </div>
				<div class="inputcontent">

					<input type="password" name='pwd' />
                                        
					

				</div>
			</div>
                        	<div class="buttons">

				<input class="orangebutton" type="submit" value="Login" />

				

			</div>

	
  
  </div>
          </td>
      </tr></table>
  
  	</form>
      <div id="content">
          
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      Sree Vidyanikethan Engineering College
    </div>
  </div>
</body>
</html>
