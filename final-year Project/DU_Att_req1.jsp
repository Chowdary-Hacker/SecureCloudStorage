<title>Authentication Page</title>
<%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%


   	String fname=request.getParameter("t14");  
	String oname=request.getParameter("oname");    
   	String uname=(String)application.getAttribute("uname");
	String key="",uname1,status="";
	try
	{
	
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
	
		
			Statement stss=connection.createStatement();
				  status="Requested";
					key="Data Attributes Requested";
					application.setAttribute("key",key);
			  		stss.executeUpdate("insert into request(uname,dt,status,oname) values ('"+uname+"','"+dt+"','"+status+"','"+oname+"')"); 
					response.sendRedirect("DU_Att_req.jsp");
			
		
	}
	catch(Exception e)
	{
	out.print(e);
	}
%>