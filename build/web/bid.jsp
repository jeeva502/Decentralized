<%-- 
    Document   : index
    Created on : Jun 17, 2014, 5:35:38 PM
    Author     : ROHITH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<html>

<head>
  <title>A Decentralized Self-Adaptation Mechanism</title>
  <body>
           <% 
try
{
 String a[]=new String[20];   
 String b[]=new String[20];
Class.forName("com.mysql.jdbc.Driver");	
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
 Statement st=con.createStatement();
 Statement st1=con.createStatement();
 ResultSet rs=st.executeQuery("select size,ssl,latency,cost from account");
 ResultSet rs1=st1.executeQuery("select file,ssl,latency,amt from upload");
 for(int i=0;rs.next();i++)
  {
      a[i]=rs.getString(1);
      a[++i]=rs.getString(2);
      a[++i]=rs.getString(7);
      a[++i]=rs.getString(8);
  }
for(int i=0;rs1.next();i++)
  {
      b[i]=rs1.getString(3);
      b[++i]=rs1.getString(7);
      b[++i]=rs1.getString(12);
      b[++i]=rs1.getString(13);
  }
int flag=1;
for(int i=0;i<4;i++)
{
  if(a[i].equals(b[i]))
{
    flag=1;
}  
  else
  {
      flag=0;
      break;
  }
}
out.println("hello"+flag);
}
catch(Exception ex)
{
   out.println("Error in connection : "+ex);
       
}
%>
             
                      
  </body>     
</html>
