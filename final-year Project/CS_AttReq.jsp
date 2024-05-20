<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CS_AttReq</title>
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
.style4 {font-size: 24px}
.style5 {
	color: #FF0000;
	font-weight: bold;
}
.style6 {color: #FF0000}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style4">Secure and Lightweight Blockchain-Enabled Access Control for Fog-Assisted IoT Cloud</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Secure and Lightweight Blockchain-Enabled Access Control for Fog-Assisted IoT Cloud</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Secure and Lightweight Blockchain-Enabled Access Control for Fog-Assisted IoT Cloud</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Secure and Lightweight Blockchain-Enabled Access Control for Fog-Assisted IoT Cloud</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
          <h2 class="style5">View Data Attributes Requests !!!</h2>
          <p>&nbsp;</p>
		  
		  <%@ include file="connect.jsp" %>
          <table width="567" border="1.5" cellpadding="0" style="border-collapse:collapse" cellspacing="0"  align="center">
              <tr>
                <td width="64" height="30" bgcolor="#FFFF00"><div align="center" class="style6 style24 style21"><strong> ID </strong></div></td>
                <td width="110" bgcolor="#FFFF00"><div align="center" class="style6 style25"><strong>User Name </strong></div></td>
                <td width="113" bgcolor="#FFFF00"><div align="center" class="style6 style25"><strong>Requested Date and Time </strong></div></td>
                <td width="116" bgcolor="#FFFF00"><div align="center" class="style6 style25"><strong>Status </strong></div></td>
              </tr>
              <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

  	try 
	{
           String oname=(String)application.getAttribute("doname");
		  
		   String requested="Requested";
		   String per="No";
		   
		   
      	   String query="select * from request where oname='"+oname+"' ";
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
		   while(rs.next())
		   {
				i=rs.getInt(1);
				s2=rs.getString(2);
				s3=rs.getString(3);
				s4=rs.getString(4);
				
				
		%>
              <tr>
                <td height="28"><div align="center" class="style6 style21"><strong><%=i%></strong></div></td>
                <td><div align="center" class="style6 style21"><strong><%=s2%></strong></div></td>
                <td><div align="center" class="style6 style21"><strong><%=s3%></strong></div></td>
                <td><div align="center" class="style6 style21"><strong><%=s4%></strong></div></td>
                <%
		
					
			}
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
      </table>
            <p>&nbsp;</p>
            <p align="center"><a href="CS_Main.jsp">Back</a></p>
            <h2></h2>
    </div>
      <div class="clr">
        <p>&nbsp;</p>
        
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
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
