<%@ page language="java" contentType="text/html" import="java.sql.*" session="true"%>
<%
            //String uname = request.getParameter("username");
            //String passd = request.getParameter("password");
            //out.println(uname);
           // out.println(passd);


            try {
                String s1 = request.getParameter("username");
                String s2 = request.getParameter("password");
                session.setAttribute("s1", s1);
                session.setAttribute("s2", s2);
               // out.println(s1);
               // out.println(s2);
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
               // out.println(con1);
                //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                // Connection con = DriverManager.getConnection("jdbc:odbc:crimefilems");
                Statement st = con1.createStatement();
                // Statement st2 = conn.createStatement();
                String stat = "";
                ResultSet rs;
                rs = st.executeQuery("select * from login where Username='" + s1 + "' and Password='" + s2 + "'");

                while (rs.next()) {
                    stat = rs.getString("status");
                } //while
                if (stat.equals("u")) {
                    response.sendRedirect("Userhomepage.html");
                } else if (stat.equals("a")) {
                    response.sendRedirect("adminhome.html");
                } else {
                    response.sendRedirect("login.jsp");
           %>
                    <alert><% out.println("Login Failed!Try Again");%></alert>
<%
                }

            }//try
            catch (Exception e) {
                out.println(e);
            }
%>
