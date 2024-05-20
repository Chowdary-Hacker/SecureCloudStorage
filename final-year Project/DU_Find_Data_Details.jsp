
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Find_Data_Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {color: #FF00FF}
.style7 {color: #FFFFFF}
.style8 {font-size: 24px}
.style9 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style8">A Secure and Privacy-Enhanced Blockchain assisted Protocol for Cloud-Based environment</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big></big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big></big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big></big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
         <h2><span class="style2">Find RID For Data Details </span> !!! </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
          <p>&nbsp;</p>
		  
		 <%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%

    try
		{
		
		
		  
		
		   String uname=(String)application.getAttribute("uname");
		   
			String status="Permitted";
			String sql="SELECT * FROM request where status='"+status+"' and uname='"+uname+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if (rs.next()==true) 
					{%>
		
                          
		 <form name="s"  action="DU_Find_Data_Details1.jsp" method="post" >
<table width="423" border="0" align="center"  cellpadding="0" cellspacing="0" >
  <tr>
    <td width="217" height="50" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style7 style9">
      <div align="center"><strong><span class="style10">Enter RID</span></strong></div>
    </div></td>
    <td width="206" height="50" valign="middle" style="color:#000000;"><input name="RID" type="text" value="" /></td>
  </tr>
</span><div > 
<tr>
<td height="30" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><p>&nbsp;
  </p>
  <p>
    <input type="submit" value="Decrypt & Find Data Details" style="width:500px; height:25px; background-color:#000000; color:#FFFFFF;"/>
    <br />
  </p></td>
</tr></div>
		  </table>
		</form>
					
					<%}
			else
			{
				out.print("No Permission To View Data Details");
				 %><br/><br/><a href="DU_Main.jsp">Back</a><%
				 
				 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
	
		
			Statement stss=connection.createStatement();
				  status="Attacked";
					
			  		stss.executeUpdate("insert into impersonation_attacks(uname,dt,status) values ('"+uname+"','"+dt+"','"+status+"')"); 
				 
				 
				 
				 
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
		  
		 
		 
		 
          </p>
          <ul class="sb_menu">
           
            <li><a href="DU_Main.jsp">Back</a></li>
            
          </ul>
      </div>
    </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="clr"></div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>