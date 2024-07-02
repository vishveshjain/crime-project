<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />

<script language="javascript">
function Postm()
{
  
var a=document.getElementById("postm");

var b=document.getElementById("doctn");

var c=document.getElementById("polst");


var d=document.getElementById("postd");


if(a.value==" ")
 {
  alert("enter postmortem no:");
  a.focus();
 return false;
  }
  
  
 if(b.value==" ")
 {
  alert("enter doctor's name:");
 b.focus();
 return false;
  } 
  
  if(c.value==" ")
 {
  alert("enter police station :");
 c.focus();
 return false;
  }
  
  
 if(d.value==" ")
 {
  alert("enter postmortem date:");
  d.focus();
 return false;
  } 
  
  }
  
  
</script>

<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}

.style2 {font-size: 18px}
-->
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
		<form name="form1" method="get" action="postmortumaction.jsp" >
<table width="447" border="0" align="center">
  <tr>
    <td colspan="2"><div align="center" class="style2">POSTMORTEM REPORT</div></td>
  </tr>
  
  <tr>
    <td width="219" height="38"><div align="right"><span class="style2">Postmortem No</span><strong>:</strong></div></td>
    <td width="212">
      <label>
      <input type="text" name="postm" id="postm" />
      </label>    </td>
  </tr>
  <tr>
    <td height="30"><div align="right"><span class="style2">Doctor's Name</span><span class="style1">:</span></div></td>
    <td><input type="text" name="doctn" id="doctn" /></td>
  </tr>
  <tr>
    <td height="34"><div align="right" class="style2">Police Station:</div></td>
    <td><input type="text" name="polst" id="polst" /></td>
  </tr>
  <tr>
    <td height="39"><div align="right" class="style2">Postmortem Date:</div></td>
    <td><input type="text" name="postd" id="postd" /></td>
  </tr>
  <tr>
    <td height="39" colspan="2"><label>
      <div align="center">
        <input type="submit" name="button" id="button" value="Submit" onclick="return Postm()"/>
        </div>
    </label></td>
    </tr>
</table>
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
					<li><a href="newadmin.jsp">New admin </a></li>
					<li><a href="hotnews.jsp">Hot News </a></li>
					<li><a href="mostwanted.jsp">Most Wanted </a></li>
					<li><a href="missingperson.jsp">Missing Persons </a></li>
					<li><a href="criminalregister.jsp">Criminal Register </a></li>
					<li><a href="postmortum.jsp">Post Mortem </a></li>
					<li><a href="prisonerreg.jsp">Prisoners Register</a></li>
					<li><a href="history.jsp">History</a></li>
					<li><a href="fir.jsp">FIR</a></li>
					<li><a href="chargesheet.jsp">Chargesheet</a></li>
				</ul>
			</li>
			<li>
				<h2>Account Settings </h2>
				<ul>
					<li><a href="adminchangepass.jsp">Change Password </a></li>
				</ul>
			</li>
			<li>
				<h2>More Facilities </h2>
				<ul>
					<li><a href="chatlogin.jsp">Chat</a></li>
					<li><a href="compose.jsp">Mail</a></li>
				</ul>
			</li>
		</ul>
  </div>
</div>
<div id="footer">
	<p>Copyright &copy; 2009 cfm. Designed by<em class="style1"> <a href="http://www.freecsstemplates.org/">www.crimefilemanagement.com</a></em></p>
</div>

</body>
</html>




















