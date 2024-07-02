<%@ page language="java"  session="true" import="java.sql.*"%>
<%
       
        String  errmsg = "";
        String msg="";
        String comefrom = request.getParameter("id");
        String res=request.getParameter("res");
        if(res!=null){
              errmsg="Invalid username or password, Login failed";
            }
        
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>my-matrimonial.com</title>
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="CSS/reg-base-style.css" type="text/css" />
        <script language="javascript" type="text/javascript" src="jscript.js"></script>
        <style type="text/css">
            #leftpane{
                width:750px;
                height:350px;
                margin:0 auto;
            }

            .style1 {
                color: #FF3300;
                font-weight: bold;
            }
        </style>

    </head>

    <body>
        <div id="container" style="height:600px">
            <div><jsp:include page="header.jsp"></jsp:include></div>
            <div id="contentarea" style="height:370px;  float:left; width:900px">
                <div id="leftpane">
                    <table width="631"  border="0" align="center" style="margin-top:20px; width:750px; margin-top:25px" >
                        <tr>
                            <td width="510">
                                <div id="leftarea">
                                    <div id="items">Become part of the largest community of Malayalee brides and bridegrooms.</div>
                                    <div id="items">Add photos, videos, audio profiles, horoscope and blog along with your profile.</div>
                                    <div id="items">Privacy options for photos, videos, profiles and horoscopes.</div>
                                    <div id="items">Chat with members, get profile updates in your mail.</div>
                                    <div id="items">Live customer support.</div>
                                    <div style="height:10px;"></div>
                                </div>
                            </td>
                            <td width="230" >
							 <%
					 if(!comefrom.equals("userhome.jsp")){
					 %>
                                <form method="post" action="login_code.jsp">

                                    <table width="228" border="0" style="font-size:12px">
                                        <tr>
                                            <td colspan="2" style="background:#FFCCCC"><span class="style1">Login</span></td>
                                        </tr>
                                        <tr>
                                            <td>User ID</td>
                                            <td><input type="text" name="userid" id="userid"  style="width:100px"/></td>
                                        </tr>
                                        <tr>
                                            <td>Password</td>
                                            <td><input type="password" name="passwd" id="passwd"  style="width:100px"/></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><input type="submit" name="login" id="login" value="Login" style="border:thin; border-style:solid; height:25px" /></td>
                                        </tr>
                                    </table>
                                    <div style="color:#FF0000; font-size:12px; font-weight:bold"><%=errmsg%></div>
                            </form>    
							<%
							}
		%>           
							</td>
                        </tr>
                    </table>
					<div style="margin-top:25px; font-size:18px; color:#3366FF; font-family:'Courier New', Courier, monospace; font-weight:bold">
					  <%
					 if(comefrom.equals("userhome.jsp")){
            out.println("You are now logged in... Please, logout and try again");
        }
		%>
					</div>
                </div>
            </div>
            <div style="height:75px;"><jsp:include page="footer.html"></jsp:include></div>
        </div>
    </body>
</html>
