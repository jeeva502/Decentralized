<%-- 
    Document   : uploadcon
    Created on : Jun 20, 2014, 3:52:14 PM
    Author     : ThanuSri
--%>

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
String a=(String)session.getAttribute("name");
String b = request.getParameter("lname");
String c = request.getParameter("email");
String d = request.getParameter("pwd");
String e = request.getParameter("date");
String f = request.getParameter("mobile");
String g = request.getParameter("city");
String h = request.getParameter("gender");
      
 Class.forName("com.mysql.jdbc.Driver");	
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
 Statement st=con.createStatement();
 int x=st.executeUpdate("update reg set uname='"+b+"',email='"+c+"',password='"+d+"',date='"+e+"',mobile='"+f+"',city='"+g+"',gender='"+h+"' where uname='"+a+"'") ;
if(x==1)
{
response.sendRedirect("userpage.jsp?Updation Success");
}
else
{
     response.sendRedirect("update.jsp?Updation Failed");
}           }
catch(Exception ex)
 {
ex.printStackTrace();
}%>
    </body>
</html>
