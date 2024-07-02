<%@ page language="java" import="javazoom.sendmail.Keys,javazoom.sendmail.ComposeBean,java.util.*" %>
<%@ page errorPage="errorhandler.jsp" %>
<%-- ComposeBean Setup : Begin --%>
<jsp:useBean id="composebean" scope="session" class="javazoom.sendmail.ComposeBean"/>
<jsp:setProperty name="composebean" property="smtpserver" value="smtp.yourcompany.com"/>
<jsp:setProperty name="composebean" property="allowattachment" value="false"/>
<jsp:setProperty name="composebean" property="to" value="support@yourcompany.com"/>
<%-- ComposeBean Setup : End --%>
<% String PREURI = request.getContextPath()+request.getServletPath().substring(0,request.getServletPath().lastIndexOf("/")); %>
<html>
<head>
<LINK REL=STYLESHEET TYPE="text/css" HREF="styles.css">
<script language="JavaScript"><!--
function sendmail()
{
  document.compose.submit();
}
<% if (composebean.getAllowattachment()) {%>
function attachform()
{
  document.compose.action="<%= response.encodeURL(PREURI+Keys.ATTACHFORM+"?nocache="+System.currentTimeMillis()) %>";
  document.compose.submit();
}
<% } %>
function checkForm()
{
  var field = "<%= request.getAttribute(Keys.ERRORKEY)%>";
  if (field != "<%= ComposeBean.NOERROR %>")
  {
    alert("<%= request.getAttribute(Keys.ERRORMSGKEY)%>");
    document.compose.<%= request.getAttribute(Keys.ERRORKEY)%>.focus();
  }
}
//-->
</script>
<title>Contact technical support</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
}
.style2 {color: #CC6633}
-->
</style>
</head>
<body bgcolor="#CC6633" onLoad="checkForm()">
<span class="style2"></span>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#EEEEEE">
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr bgcolor="#CC6633">
          <td><font face="Arial, Helvetica, sans-serif" size="-2"><a href="../blank/index.html"></a></font></td>
          <td align="center"><span class="style1"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1">Crimefile Management  : Email to support
            <font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>contact</b></font><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b></b></font></font></span></td>
          <td align="right"><font face="Arial, Helvetica, sans-serif" size="-2"><a href="../resume/index.html"></a></font></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<hr noshade size="1">
 <form name="form1" method="post" action="mailsent.jsp">

  <table border="0" cellspacing="0" cellpadding="0" align="center" width="585">
    <tr>
      <td width="10">&nbsp;</td>
      <td width="525" align="center" class="Field"><p>&nbsp;</p>
      </td>
      <td width="7" align="center" bgcolor="#EEEEFF">&nbsp;</td>
    </tr>
    <tr>
      <td bgcolor="#EEEEEE"> </td>
      <td align="center" valign="top">
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td bgcolor="#CC6633">
              <table border="0" cellspacing="1" cellpadding="0">
                <tr>
                  <td width="15%" align="right" nowrap class="MandatoryField">To
                    : </td>
                  <td>
                    <input type="text" name="to" value ="crimestation@gmail.com"/>                  </td>
                </tr>
                <tr>
                  <td width="15%" align="right" nowrap class="MandatoryField">From
                    : </td>
                  <td>
                    <input type="text" name="from" >                  </td>
                </tr>
                <tr>
                  <td width="15%" align="right" nowrap class="Field">CC
                    : </td>
                  <td>
                    <input type="text" name="cc" >                  </td>
                </tr>
                <tr>
                  <td width="15%" align="right" class="MandatoryField">Bcc
                    : </td>
                  <td><input type="text" name="bcc"></td>
                </tr>
                <tr>
                  <td width="15%" align="right" class="MandatoryField">Subject
                    : </td>
                  <td>
                    <input type="text" name="subject" >                  </td>
                </tr>
                <tr align="center">
                  <td colspan="2" class="Field">&nbsp;</td>
                </tr>
              </table>            </td>
          </tr>
          <tr>
            <td bgcolor="#EEEEFF"><textarea name="msg" cols="54" rows="8" wrap="HARD" />
            
            </textarea>            </td>
          </tr>
          <tr>
            <td align="center" bgcolor="#EEEEEE"><label>
              <input type="submit" name="Submit" value="send">
              <input type="reset" name="Submit2" value="clear">
            </label></td>
          </tr>
        </table>
      </td>
      <td valign="top" bgcolor="#EEEEEE">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td nowrap>&nbsp;</td>
          </tr>
          <tr>
            <td>
              <hr noshade size="1">
            </td>
          </tr>
          <tr>
            <td class="homelink" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" >&nbsp;</td>
          </tr>
          <tr>
            <td align="center">&nbsp;</td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</form>
<hr noshade size="1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-2">cfms</font><font face="Verdana, Arial, Helvetica, sans-serif" size="-2">
      &copy; Copyright  2005-2009</font></td>
  </tr>
</table>
</body>
</html>
