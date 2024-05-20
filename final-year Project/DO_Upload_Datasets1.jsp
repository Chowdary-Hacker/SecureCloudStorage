
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload Datasets</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style5">An Effective Privacy Preserving Blockchain Assisted Security Protocol for Cloud Based Digital Twin Environment</h1>
      </div>
      <div class="menu_nav">
        <ul>
		<%String user=(String)application.getAttribute("user"); %>
          <li><a href="DU_Main.jsp"><span>Home</span></a></li>
          <li><a href="#"><span><%=user%></span></a></li>
		  <li><a href="DU_Login.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <div class="post_content">
            <p align="justify">		
         <h2><span>Upload Datasets !!! </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p> 
		  
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
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
      
	  
        String uname=(String)application.getAttribute("doname");	  
		String fname=request.getParameter("fname");
									
		/* String sql="delete from datasets";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql); */
		
		String RID,Text_Location,Date_Time,Text_Desc;
		
			
	 
       connection.setAutoCommit(false);
        PreparedStatement pstm = null ;   
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); 
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){
           row = (Row) sheet.getRow(i);  
		   
		   
	   		      if( row.getCell(0)==null) { RID = "0";}  
                  else RID = row.getCell(0).toString();   
				  
				  if( row.getCell(1)==null) { Text_Location = "0";}  
                  else Text_Location = row.getCell(1).toString();   
				  
				  if( row.getCell(2)==null) { Date_Time = "0";}  
                  else Date_Time = row.getCell(2).toString();   
				  
		   
	   		      if( row.getCell(3)==null) { Text_Desc = "0";}  
                  else Text_Desc= row.getCell(3).toString();   
 
                 String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Text_Desc));
			
					MessageDigest md = MessageDigest.getInstance("SHA-512");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1 = bi1.toString(16);
					
					
					String filename1="filename1.txt";
      				PrintStream p1 = new PrintStream(new FileOutputStream(filename1));
					p1.print(new String(Text_Location));
			
					MessageDigest md1 = MessageDigest.getInstance("SHA-512");
					FileInputStream fis111 = new FileInputStream(filename1);
					DigestInputStream dis11 = new DigestInputStream(fis111, md1);
					BufferedInputStream bis11 = new BufferedInputStream(dis11);
					//Read the bis so SHA-512 is auto calculated at dis
					while (true) {
						int b11 = bis11.read();
						if (b11 == -1)
							break;
					}
 
					BigInteger bi11 = new BigInteger(md1.digest());
					String spl11 = bi11.toString();
					String h11= bi11.toString(16);
					
					
					String keys = "ef50a0ef2c3e3a5f";
			    byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue,"AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE,key);
				String keyy = String.valueOf(keyValue);
				
      	       
				
				String Text_Desc1= new String(Base64.encode(Text_Desc.getBytes()));
					
				SimpleDateFormat sdffDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdffTime = new SimpleDateFormat("HH:mm:ss");
			Date noww = new Date();

			String strrDate = sdffDate.format(noww);
			String strrTime = sdffTime.format(noww);
			String dat = strrDate + "   " + strrTime;	
								
					Statement stss=connection.createStatement();
					stss.executeUpdate("insert into datasets(RID,Text_Location,Date_Time,Text_Desc,hashcode,hashcode1,uname,upload_time) values ('"+RID+"','"+Text_Location+"','"+Date_Time+"','"+Text_Desc1+"','"+h1+"','"+h11+"','"+uname+"','"+dat+"')"); 
			
				 
      		

       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
      
   }
 
   response.sendRedirect("blocktestchain.jsp");
%>
		  <h2>Datasets Imported Successfully !!!</h2>

				</p>
                <p align="center"><a href="DO_Main.jsp">Back</a></p>
				
				</p>
          </div>
          <div class="clr"></div>
        </div>
        <p align="right" class="pages"><a href="DO_Main.jsp">Back</a></p>
      </div>
      <div class="sidebar">
       
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="DU_Main.jsp">Home</a></li>
            <li><a href="DU_Login.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div></body>
</html>
