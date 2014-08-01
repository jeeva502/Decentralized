<%-- 
    Document   : vm2
    Created on : Jun 21, 2014, 12:16:15 PM
    Author     : ThanuSri
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
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
       String a2=(String)session.getAttribute("name");
        String a=request.getParameter("fid");
           String b=request.getParameter("fn");
           String c=request.getParameter("pwd");
            String d=request.getParameter("ct");            
             String f=request.getParameter("amt");
             String g=request.getParameter("ssl");
              String h=request.getParameter("lat");
             int amt=Integer.parseInt(f);
             int amt1=(amt/10);
             String amt2=""+amt1;
              String e=request.getParameter("file");
              String src=request.getParameter("src");
              String pn=request.getParameter("pn");
              java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
              String a1="D:/File/";

String fname=a1+e;
FileInputStream fis = null;
File image=new File(fname);
Class.forName("com.mysql.jdbc.Driver");	
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
PreparedStatement ps=con.prepareStatement("insert into upload  values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,a2);
ps.setString(2,a);
fis=new FileInputStream(image);
double bytes = image.length();
ps.setBinaryStream(3, (InputStream)fis, (int)(image.length()));
ps.setString(4,b);
ps.setString(5,c);
ps.setString(6,d);
ps.setString(7,f);
ps.setDate(8,sqlDate);
ps.setDouble(9,bytes);
ps.setString(10,src);
ps.setString(11,pn);
ps.setString(12,g);
ps.setString(13,h);

int x=ps.executeUpdate();
       if(x==1)
       {
    Class.forName("com.mysql.jdbc.Driver");	
 Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
PreparedStatement ps1=con.prepareStatement("insert into sensex  values(?,?,?)");
ps1.setString(1,a);
ps1.setString(2,amt2);
ps1.setDate(3,sqlDate);
int x1=ps1.executeUpdate();
       
response.sendRedirect("upload.jsp?Success");
}
       else
       {
response.sendRedirect("upload.jsp?Failed");}%>
    </body>
</html>
