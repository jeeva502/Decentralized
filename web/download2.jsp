<%@page import="java.io.OutputStream"%>
<%@page import="sun.security.util.Password"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%
 

try
               {
    //String id=(String)session.getAttribute("id1");
    
         //String fn=request.getParameter("fn");
        
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/decentralized","root","");
   Statement st=con.createStatement();
   ResultSet rs1=st.executeQuery("select * from upload");
      while(rs1.next())
                 {
           Blob b = rs1.getBlob(3);
          String dataname =rs1.getString(4);
			dataname+=".exe";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("APPLICATION/DOWNLOAD");
			response.setHeader("Content-Disposition","attachment; filename=\""+dataname+"\"");
			 OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
                        response.sendRedirect("download.jsp?Success");
                 }       
         
         
               }
catch(Exception r)
               {
     r.printStackTrace();
       
}
%>
    </body>
</html>