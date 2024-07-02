
<html>
   <%@ page language="java" contentType="text/html" import="java.sql.*" session="true" %>  
      
  
    <body>
      
                  
                    <%
            try {
                String nam = request.getParameter("name");
                String u1 = request.getParameter("user");
                String ag = request.getParameter("age");
                String addr = request.getParameter("add");
                String typeof = request.getParameter("type");
                String complexn = request.getParameter("complex");
                String ha = request.getParameter("hair");
                String buil = request.getParameter("built");
                String psp = request.getParameter("passno");
                String cased = request.getParameter("desc");


                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
                Statement st = con1.createStatement();
                st.executeUpdate("insert into mostwanted1 values('" + u1 + "','" + nam + "','" + ag + "','" + addr + "','" + typeof + "','" + complexn + "','" + ha + "','" + buil + "','" + psp + "','" + cased + "')");
                out.println("Data completed successfully");

            } catch (Exception e) {
                out.println(e);
            }


                    %>
                    <form id="form1" name="form1" method="post" action="">
                        <table width="502" border="0" align="center">
                            
                            <tr>
                                <td width="486" height="65">
                                    <label>
                                        
                                        <div align="center">
                                            
                                            <form method="post" action="simple.jsp" enctype="multipart/form-data">
                                                <br>
                                                <br>
                                                <p>&nbsp;</p>
                                                <p>&nbsp;</p>
                                                <p align="center">&nbsp;</p>
                                                <p align="center">&nbsp;</p>
                                        </form>
               
               
    </body>
</html>








