
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<%@ page language="java" import="javazoom.upload.*,java.util.*" %>
<%@ page errorPage="ExceptionHandler.jsp" %>

<jsp:useBean id="upBean" scope="page" class="javazoom.upload.UploadBean" >
  <jsp:setProperty name="upBean" property="folderstore" value="c:/uploads" />
</jsp:useBean>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style2 {
	font-size: 16px;
	font-family: "Times New Roman", Times, serif;
}
.style6 {
	color: #CC0033;
	font-weight: bold;
}
.style7 {color: #CC0000; font-weight: bold; }

</style>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1>CrimeStation</h1>
		<h2>within the hands of safe </h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="adminhome.html">my home </a></li>
			<li><a href="latestnews.jsp">latest news </a></li>
			<li><a href="feedback.jsp">feedbacks</a></li>
			<li><a href="login.jsp">logout</a></li>
		</ul>
  </div>
</div>
<div id="content">

  <div id="colOne">
    <p>&nbsp;</p>
    <div>
		  <form id="form1" name="form1" method="post" action="mostwantedaction.jsp">
<table width="502" border="1" align="center">
  
  <tr>
    <td width="486" height="65">
      <label>
        
        <div align="center">
		<ul class="style1">
<%
      if (MultipartFormDataRequest.isMultipartFormData(request))
      {
         // Uses MultipartFormDataRequest to parse the HTTP request.
         MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
         String todo = null;
         if (mrequest != null) todo = mrequest.getParameter("todo");
	     if ( (todo != null) && (todo.equalsIgnoreCase("upload")) )
	     {
                Hashtable files = mrequest.getFiles();
                if ( (files != null) && (!files.isEmpty()) )
                {
                    UploadFile file = (UploadFile) files.get("uploadfile");
                    if (file != null) out.println("<li>Form field : uploadfile"+"<BR> Uploaded file : "+file.getFileName()+" ("+file.getFileSize()+" bytes)"+"<BR> Content Type : "+file.getContentType());
                    // Uses the bean now to store specified by jsp:setProperty at the top.
                    upBean.store(mrequest, "uploadfile");
                }
                else
                {
                  out.println("<li>No uploaded files");
                }
	     }
         else out.println("<BR> todo="+todo);
      }
%>
</ul>
	  <form method="post" action="simple.jsp" name="upform" enctype="multipart/form-data">
	  <div style="padding-bottom:450px">
  <table width="75%" border="0" cellspacing="0" cellpadding="1" align="center" class="style1">
    <tr>
      <td align="left"><b>Select a file to upload :</b></td>
    </tr>
    <tr>
      <td align="left">
        <input type="file" name="uploadfile" size="50">
      </td>
    </tr>
    <tr>
      <td align="left">
		<input type="hidden" name="todo" value="upload">
        <input type="submit" name="Submit" value="Upload">
        <input type="reset" name="Reset" value="Cancel">
      </td>
    </tr>
  </table></div>
  <br>
	  </form>
    </div>
      </label>      </td>
  </tr>

</form>
	</div>
  </div>
	<div id="colTwo">
		<ul>
			<li>
			  <div align="center"><strong> 
			    </strong>
		      </div>
			  <form method="get" action="#">
					<div>
						<div align="center">
						  <input type="text" id="textfield1" name="textfield1" value="" size="18" />
						  <input type="submit" id="submit1" name="submit1" value="Search" />
				      </div>
					</div>
			  </form>
		  </li>
			<li>
				<h2>New Additions</h2>
				<ul>
					<li><a href="complaint.jsp">Complaint</a></li>
					<li><a href="crimereport.jsp">Crime Report</a></li>
					<li><a href="usermostwanted.jsp">Most Wanted </a></li>
				    <li><a href="feedback.jsp">Feedback  </a></li>
				</ul>
			</li>
			<li>
				<h2>Account Settings </h2>
				<ul>
					<li><a href="changepassword.jsp">Change Password</a></li>
				    <li><a href="editcomplaint.jsp">Edit Complaint</a></li>
			        <li><a href="editregister.jsp">Edit Account </a></li>
		        </ul>
			</li>
			<li>
				<h2>More Facilities </h2>
				<ul>
					<li><a href="chat.jsp">Chat</a></li>
					<li><a href="compose.jsp">Mail</a></li>
				</ul>
			</li>
		</ul>
  </div>

<div id="footer">
	<p>Copyright &copy; 2009 cfm. Designed by<em class="style1"> <a href="http://www.freecsstemplates.org/">www.crimefilemanagement.com</a></em></p>
</div>

</body>
</html>



