<%-- 
    Document   : userlogin
    Created on : Jun 20, 2014, 12:37:34 PM
    Author     : ThanuSri
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       try
               {
String a = request.getParameter("uname");
session.setAttribute("name",a);
String b = request.getParameter("pwd");
 Class.forName("com.mysql.jdbc.Driver");	
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from reg where uname='"+a+"' and password='"+b+"'");
 if(rs.next())
         {
 response.sendRedirect("userpage.jsp?Login Success");
 }
 else{
     response.sendRedirect("user.jsp?Login Failed");
 }
 
       }
catch(Exception e)
 {
e.printStackTrace();
}
%>
    </body>
</html>
