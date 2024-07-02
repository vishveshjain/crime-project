<%@page contentType="text/html" pageEncoding="UTF-8" session="true" errorPage="errorpage.jsp"%>

<%
        String username = "";

        if (session.getAttribute("userid") != null) {
            username = session.getAttribute("userid").toString();
        } else {
            username = "Guest";
        }
%>
<link href="CSS/style.css" rel="stylesheet" type="text/css"/>
<div id="header"></div>
<div id="basearea">
    <span style="float:left; margin-left:20px;">
        <a href="login.jsp?id=index.jsp">Login</a>&nbsp;
        <a href="reg-base.jsp?id=free">Register Free</a> &nbsp;
        <a href="contactus.jsp">Contact Us</a>
    </span>

    Welcome <span style="font-size:16px; color:#0000FF; font-weight:bold"><%=username%></span>
</div>
<div id="menu">
    <ul>
        <li class="menuitem"><a href="index.jsp">Home</a></li>
        <li class="menuitem"><a href="actype.jsp">Membership</a></li>
        <li class="menuitem"><a href="normalsearch.jsp?lookfor=Grooms&agefrom=18&ageto=30&religion=&caste=&location=&Search=Search">Search</a></li>
        <li class="menuitem"><a href="contactus.jsp">Services</a></li>        
    </ul>
</div>