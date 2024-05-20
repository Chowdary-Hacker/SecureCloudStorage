
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style3 {color: #FFFFFF}
.style5 {
	font-weight: bold;
	color: #FF0000;
}
.style6 {color: #FF0000}
-->
            </style>
		      




          <title>A_View_All_Datasets_By_Transport_Blockchain</title><h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,hsign,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(hashcode1) from datasets";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from datasets where hashcode1 = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(3);
							
							%>
       
				 
			 <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
        <tr>
        	  
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>RID	</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Text_Location</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Date_Time</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Text_Desc</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Text hashcode</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Location hashcode1</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>uname</strong></div></td>	
	
</td>
        </tr>
		   
		 
         <h3 align="center">
<p align="center" class="style12"><span class="style2">Text Location Name Block Chain--->::</span> <%=s111%><br>
			    <span class="style12">Text Location Name Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
									s1=rs.getString(2);
				                		s2=rs.getString(3);//
										s3=rs.getString(4);
										s4=rs.getString(5);//
										s5=rs.getString(6);
										s6=rs.getString(7);
										s7=rs.getString(8);
		
					%>
	      </div>  
			   <tr>
        
          <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style2">&nbsp;</p>
                <%out.println(s1);%>
                <p>&nbsp; </p>
              </div></td>
          <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style2">&nbsp;</p>
                <%out.println(s2);%>
                <p>&nbsp; </p>
              </div></td>
         
          <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style3">&nbsp;</p>
                <%out.println(s3);%>
                <p>&nbsp; </p>
              </div></td>
		  
		  <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style4">&nbsp;</p>
                <textarea cols="30" rows="6"><%out.println(s4);%></textarea>
                <p>&nbsp; </p>
              </div></td>
		  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style5">&nbsp;</p>
		  <%out.println(s5);%>
              <p>&nbsp; </p>
              </div></td>
			  
		  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style6">&nbsp;</p>
		  <%out.println(s6);%>
              <p>&nbsp; </p>
              </div></td>
			  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style1 style7">&nbsp;</p>
		          <span class="style6">
		          <%out.println(s7);%>
                  </span>
		          <p>&nbsp; </p>
              </div></td>
        </tr>
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        