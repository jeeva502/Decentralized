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
var x=document.forms["myForm"]["email"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Please Enter Valid Email Id");
  return false;
  }

var x=document.forms["myForm"]["name"].value;

if (x==null || x=="")
  {
  alert("Please Enter Name");
  return false;
  }
  
        var y=document.forms["myForm"]["lname"].value;
  if (y==null || y=="")
  {
  alert("Please enter User Name");
  return false;
  }
     var a=document.forms["myForm"]["disis"].value;
  if (a==null || a=="")
  {
  alert("Please enter Your Problem");
  return false;
  }
     var c=document.forms["myForm"]["date"].value;
  if (c==null || c=="")
  {
  alert("Please enter Your Joining Date");
  return false;
  }
     var d=document.forms["myForm"]["city"].value;
  if (d==null || d=="")
  {
  alert("Please enter City");
  return false;
  }
     var e=document.forms["myForm"]["mobile"].value;
  if (e==null || e=="")
  {
  alert("Please enter Mobile number");
  return false;
  }
  if(e.length!=10)
  {
      alert("Mobile number must be 10 Digits");
      return false;
  }
     var f=document.forms["myForm"]["zip"].value;
  if (f==null || f=="")
  {
  alert("Please enter Zip code ");
  return false;
  }
  if (f.length!=6)
  {
  alert("Pin Code Must be 6 Digits ");
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
.htmlForm td{
    font-family:Verdana, Arial, Helvetica, sans-serif;
    font-size:12px;
    color:#CC3300;
    border-bottom:1px #EAE3C8 solid;
}
.htmlForm input,select{
    border:1px #BDB597 solid;
    font-family:tahoma;
    font-size:12px;
    padding:2px;
}
.points{
    font-family:tahoma;
    font-size:11px;
    color:#CC3300;
    padding-left:20px;
    padding-top:20px;
}
.points li{
    padding-top:5px;
}
.formHeading{
    font-family:Arial, Helvetica, sans-serif;
    font-size:16px;
    font-weight:bold;
    color:#CC3300;
    padding:10px;
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
      <h2><font color="orange"> Welcome to User Registration</h2><br>
 
                     <table align="center" width="800" ><tr><td align="center">   
                    
                             
                        <form action='reg1.jsp' method='post' name="myForm" onsubmit="return validateForm()">
             <table width="350px" border="0" cellpadding="2px" cellspacing="1px" bgcolor="" align='center'>
        <tr bgcolor="#FFFFDD">
            <td width="2px" bgcolor=""></td>
            <td width="400px" align='center'>
                <div class="formHeading">User Registration Form</div>
                <!-- The inner table below is a container for form -->             
                <table width="200%" border="0" cellpadding="3px" class="htmlForm" cellspacing="0">
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    
                     
                    <tr>
                        <td align="left">Name</td>
                        <td width="220px"><input type="text" size="23" name="name" placeholder="Name"/></td>
                    </tr>
                    <tr>
                        <td align="left">User Name</td>
                        <td><input type="text" size="23" name="lname" placeholder="User Name"/></td>
                    </tr>
                     
                    <tr>
                        <td align="left">Email</td>
                        <td><input type="text" size="23" name="email" placeholder="Mail Id"/></td>
                    </tr>
                    <tr>
                        <td align="left">Password</td> 
                        <td><input type="password" size="23" name="pwd" placeholder="Password"/></td><td> <li>Password must be at least 6 characters long</li></td>
                    </tr>   
                       
                      <tr>
                        <td align="left"> Date of Birth </td>
                        <td><input type="date" size="23" id="datepicker" name="date"></td>
                    </tr>
                    <tr>
                        <td align="left">Mobile </td>
                        <td><input type="text" size="23" id="datepicker" name="mobile"></td>
                    </tr>
                    <tr>
                        <td align="left">Address</td>
                        <td><input type="text" size="23" name="city" placeholder="City"/></td>
                    </tr>
                   
                              
                    <tr>
                        <td align="left">Gender</td>
                        <td>
                            <input type="radio" name="gender" value="male" />Male
                            <input type="radio" name="gender" value="female"/>Female
                        </td>
                    </tr>  
                    <tr>
                        <td align="left">Select Your Secret Question</td>
                        <td><select name="select">
                        <option value="">--Select Question--</option>
                        <option value="What ia Your Pet Name">What ia Your Pet Name</option>
                        <option value="What is Your First School Name">What is Your First School Name</option>
                        <option value="Who is Your Favarate Hero">Who is Your favorite Hero</option>
                        </select></td>
                    </tr>
                   
                    <tr>
                        <td align="left">Answer</td>
                        <td><input type="text" size="23" name="ans" placeholder=""/></td>
                    </tr>
                     <tr>
                        <td align="left">Enter PAN Card No/Voter Id</td>
                        <td><input type="text" size="23" name="id" placeholder="City"/></td>
                    </tr>
        <tr bgcolor="" align='center'>
            <td>&nbsp;</td>
            <td colspan="2">
                <input type="submit" value="Save"  />&nbsp;&nbsp;
                <input type="submit" value="Cancel" />             
            </td>
        </tr>
       
    </table>
                     
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
