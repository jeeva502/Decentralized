<%-- 
    Document   : index
    Created on : Jun 17, 2014, 5:35:38 PM
    Author     : ROHITH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
          <li><a href="view.jsp">View Account</a></li>
          <li><a href="update.jsp">Update</a></li>
          <li><a href="upload.jsp">Application Upload</a></li>
          
          <li><a href="download.jsp">Application Download</a></li>
          <li><a href="user.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content"><br>
      
                      
           <%
 try
{
 String a="",b="",c="",d="",e="",f="",g="",h="";
 String x=request.getParameter("select");
 String a11=request.getQueryString();
 session.setAttribute("a11", a11);
 //String f=(String)session.getAttribute("select");
 //String d = request.getParameter("select");
  Class.forName("com.mysql.jdbc.Driver");	
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
 Statement st=con.createStatement();
 Statement st1=con.createStatement();
 ResultSet rs=st.executeQuery("select * from upload");
 ResultSet rs1=st1.executeQuery("select * from account");
 while(rs.next())
 {
   
           // a= rs.getString(4);
            b= rs.getString(7);
            //c= rs.getString(12);
            //d=rs.getString(13);
            //out.println(a);
            
 }     
   while(rs1.next())
 {
            //e= rs1.getString(2);
            f=rs1.getString(3);
            //g=rs1.getString(4);
            //h=rs1.getString(5);
            //out.println(b);
 }    
  // int i=Integer.parseInt(a);
   int j=Integer.parseInt(b);
  // int k=Integer.parseInt(c);
   //int l=Integer.parseInt(d);
   
  // int m=Integer.parseInt(e);
   int n=Integer.parseInt(f);
   //int o=Integer.parseInt(g);
   //int p=Integer.parseInt(h);
    //if(c.equals(d))
    //{
   if(j<n)
         { 
             
             out.println(" Bids submitted successfully ");
             %>
             <br><br>
             <font size="4"color="blue">
             <%
             out.println("Download the Application by clicking download button");
         
         %>
         <br><br>
          <td>
          <form action="download2.jsp"method="post">
              <input type="submit" value="Download"/>
              </td>
           <%
         }
        else 
   {
       %>
       <font size="4"color="red">
       <%
             out.println("Bids and Asks are not matched");
   
               %>
                <br><br>      <td>
          <form action="download.jsp"method="post">
              <input type="submit" value="Again Place a Bid"/>
              </td>
                     
      
              <%
   }
   
     
        
}      
 catch(Exception ex)
{
   out.println("Error in connection : "+ex);
       
}                    
            
                %>

			
                        
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
