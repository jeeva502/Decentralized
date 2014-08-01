    
<%-- 
    Document   : reg1
    Created on : Jun 20, 2014, 12:13:11 PM
    Author     : ThanuSri
--%>

<%@page import="java.text.SimpleDateFormat"%>
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
        

ResultSet rs=null;
PreparedStatement psmt1=null;
String a11=request.getQueryString();
session.setAttribute("a11", a11);
String a = request.getParameter("select");
String b = request.getParameter("select1");
String c = request.getParameter("select2");
//String d = request.getParameter("pwd");
//String e = request.getParameter("pwd1");
//String f =(String)session.getAttribute("name");
String g = request.getParameter("select3");
String h = request.getParameter("select4");
try{

    Class.forName("com.mysql.jdbc.Driver");	
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");

String sql=null;

psmt1=con.prepareStatement("insert into account values(?,?,?,?,?)");
psmt1.setString(2,a);
psmt1.setString(3,b);
psmt1.setString(1,c);
//psmt1.setString(4,d);
//psmt1.setString(5,e);
//psmt1.setString(6,f);
psmt1.setString(4,g);
psmt1.setString(5,h);
int s = psmt1.executeUpdate();
response.sendRedirect("submit.jsp?message=success");

con.close();
psmt1.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}
%>
    </body>
</html>
