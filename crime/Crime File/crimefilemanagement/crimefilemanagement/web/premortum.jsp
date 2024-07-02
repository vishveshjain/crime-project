<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Crimefile Management</title>


<script language="javascript">
function doValue()
{
 var a=document.getElementById("prn");
  var b=document.getElementById("psn");
  var c=document.getElementById("dn");
  var d=document.getElementById("ps");
  var e=document.getElementById("date");
  
  
  
  
  
  
  if(a.value == "")
  {
    alert ("enter the premortem no");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the postmortem no");
	b.focus();
	return false;
	}
	
	 if(c.value == "")
  {
    alert ("enter the doctor's name");
	c.focus();
	return false;
	}
   if(d.value == "")
  {
    alert ("enter the police station");
	d.focus();
	return false;
	}
	
	 if(e.value == "")
  {
    alert ("enter the premortem date");
	e.focus();
	return false;
	}

}
</script>
</head>

<body>
<form id="form1" name="form1" method="post" action="premortemaction.jsp">
<table width="432" border="1" align="center">
  <tr>
    <td height="48" colspan="2"><div align="center"><strong>PREMORTEM DETAILS</strong></div></td>
  </tr>
  <tr>
    <td width="186" height="40"><div align="right">Premortem No:</div></td>
    <td width="230"><label>
      <input type="text" name="prn" id="prn" />
    </label></td>
  </tr>
  <tr>
    <td height="41"><div align="right">Postmortem No:</div></td>
    <td><label>
    <input type="text" name="psn" id="psn" />
    </label></td>
  </tr>
  <tr>
    <td height="48"><div align="right">Doctors Name:</div></td>
    <td><label>
    <input type="text" name="dn" id="dn" />
    </label></td>
  </tr>
  <tr>
    <td height="49"><div align="right">Police Station:</div></td>
    <td><label>
    <input type="text" name="ps" id="ps" />
    </label></td>
  </tr>
  <tr>
    <td height="40"><div align="right">Premortem Date:</div></td>
    <td><label>
    <input type="text" name="da" id="da" />
    </label></td>
  </tr>
  <tr>
    <td height="42" colspan="2">
      <label>
        <div align="center">
          <input type="submit" name="button" id="button" value="Save" onclick="return doValue()" />
          <label>
          <input type="reset" name="Reset" value="Reset" />
          </label>

      </div>
      </label>       </td>
  </tr>
</table>
</form> 

</body>
</html>


