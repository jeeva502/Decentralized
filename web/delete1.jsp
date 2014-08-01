<%-- 
    Document   : delete1
    Created on : Jun 24, 2014, 11:29:29 AM
    Author     : ThanuSri
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      String a=request.getQueryString();
      Class.forName("com.mysql.jdbc.Driver");	
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
 Statement st=con.createStatement();
 int x=st.executeUpdate("delete from reg where uname='"+a+"'");
 if(x==1)
   {
response.sendRedirect("delete.jsp?Delete Success");
}
else{
     response.sendRedirect("delete.jsp?Delete Failed");
}
%>
    </body>
</html>
