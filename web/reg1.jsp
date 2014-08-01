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


String a = request.getParameter("name");
String b = request.getParameter("lname");
String c = request.getParameter("email");
String d = request.getParameter("pwd");
String e = request.getParameter("date");
String f = request.getParameter("mobile");
String g = request.getParameter("city");
String h = request.getParameter("gender");
String i = request.getParameter("select");
String j = request.getParameter("ans");
String k = request.getParameter("id");

java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;

try{

    Class.forName("com.mysql.jdbc.Driver");	
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");

String sql=null;

psmt1=con.prepareStatement("insert into reg values(?,?,?,?,?,?,?,?,?,?,?,?)");
psmt1.setString(1,a);
psmt1.setString(2,b);
psmt1.setString(3,c);
psmt1.setString(4,d);
psmt1.setString(5,e);
psmt1.setString(6,f);
psmt1.setString(7,g);
psmt1.setString(8,h);
psmt1.setString(9,strDateNew);
psmt1.setString(10,i);
psmt1.setString(11,j);
psmt1.setString(12,k);

int s = psmt1.executeUpdate();
response.sendRedirect("user.jsp?message=success");

con.close();
psmt1.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}
%>
    </body>
</html>
