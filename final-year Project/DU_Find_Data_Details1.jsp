
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
.style4 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style5 {font-size: 24px}
.style6 {
	color: #FF0000;
	font-size: 14px;
}
.style7 {font-weight: bold}
.style8 {color: #FF0000}
.style9 {font-size: 14px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style5">An Effective Privacy Preserving Blockchain Assisted Security Protocol for Cloud Based Digital Twin Environment</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
        
          <li class="active"><a href="DU_Main.jsp"><span>user</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>An Effective Privacy Preserving Blockchain Assisted Security Protocol for Cloud Based Digital Twin Environment</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>An Effective Privacy Preserving Blockchain Assisted Security Protocol for Cloud Based Digital Twin Environment</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>An Effective Privacy Preserving Blockchain Assisted Security Protocol for Cloud Based Digital Twin Environment</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
         <h2><span class="style2">View  Data Details !!! </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
		  
		  		  
		  <table width="423" height="169" border="3" align="center"  cellpadding="0" cellspacing="0"  ">
					<tr bgcolor="#99FF33">
					
					     
					 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
 
 <td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style25 style14 style15 style16 style10"><strong>RID	</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style25 style14 style15 style16 style10"><strong>Text_Location</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style25 style14 style15 style16 style10"><strong>Date_Time</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style25 style14 style15 style16 style10"><strong>Text_Desc</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style25 style14 style15 style16 style10"><strong>Text hashcode</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style25 style14 style15 style16 style10"><strong>Location hashcode1</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style25 style14 style15 style16 style10"><strong>uname</strong></div></td>
 
 
 
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17;
						
int i=0,count=0;
try 
{

					String RID=request.getParameter("RID");	
					String query="select * from datasets where RID='"+RID+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(2);
				                		s2=rs.getString(3);//
										s3=rs.getString(4);
										s4=rs.getString(5);//
										s5=rs.getString(6);
										s6=rs.getString(7);
										s7=rs.getString(8);
										
								
								
								String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
						
						String decryptedValue2 = new String(Base64.decode(s4.getBytes()));
							
		

		%>
			<tr>
                        <td height="113" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style2 style9">&nbsp;</p>
                <%out.println(s1);%>
                <p>&nbsp; </p>
              </div></td>
          <td height="113" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style9 style8">&nbsp;</p>
                <%out.println(s2);%>
                <p>&nbsp; </p>
              </div></td>
         
          <td height="113" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style3 style9 style8">&nbsp;</p>
                <%out.println(s3);%>
                <p>&nbsp; </p>
              </div></td>
		  
		  <td height="113" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style4">&nbsp;</p>
                <textarea cols="30" rows="3"><%out.println(decryptedValue2);%></textarea>
                <p>&nbsp; </p>
              </div></td>
		  <td height="113" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style9 style8">&nbsp;</p>
		  <%out.println(s5);%>
              <p>&nbsp; </p>
              </div></td>
			  
		  <td height="113" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style6">&nbsp;
		      </p>
		      <%out.println(s6);%>
              
		    <p>&nbsp; </p>
              </div></td>
			  <td height="113" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style1 style7 style9 style8">&nbsp;</p>
		 <%out.println(s7);%>
              <p>&nbsp; </p>
              </div></td>
                      </tr>
					<%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>
		 
         <p align="right"><a href="DU_Main.jsp">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">User Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
