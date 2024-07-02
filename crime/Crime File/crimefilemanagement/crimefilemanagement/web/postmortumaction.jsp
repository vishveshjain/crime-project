<%@ page language="java" contentType="text/html" import="java.sql.*" session="true"%>
<%
try
{
    String postno=request.getParameter("postm");
    String docna=request.getParameter("doctn");
    String polstn=request.getParameter("polst");
    String post=request.getParameter("postd");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
    Statement st = con1.createStatement();
    st.executeUpdate("insert into postmortem values('"+postno+"','"+docna+"','"+polstn+"','"+post+"')");
    out.println("Data submitted successfully");
   
}

catch(Exception e)
        {
    out.println(e);
}
 %> 
