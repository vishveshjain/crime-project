<%@ page language="java" contentType="text/html" import="java.sql.*" session="true"%>
<%
try
{
    String preno=request.getParameter("prn");
    String postno=request.getParameter("psn");
    String docna=request.getParameter("dn");
    String polst=request.getParameter("ps");
    String pre=request.getParameter("da");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
    Statement st = con1.createStatement();
    st.executeUpdate("insert into premortem values('"+preno+"','"+postno+"','"+docna+"','"+polst+"','"+pre+"')");
    out.println("Data submitted successfully");
   
}

catch(Exception e)
        {
    out.println(e);
}
 %> 
