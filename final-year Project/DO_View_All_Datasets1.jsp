<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {font-weight: bold}
.style3 {font-weight: bold}
.style4 {font-weight: bold}
.style5 {font-weight: bold}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
.style9 {font-weight: bold}
.style10 {font-weight: bold}
.style11 {font-weight: bold}
.style12 {font-weight: bold}
-->
</style>
		  
<table width="535" border="1" align="center"  cellpadding="0" cellspacing="0">
        <tr>

		  	  

<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>RID	</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Text_Location</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Date_Time</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Text_Desc</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Text hashcode</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Location hashcode1</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>uname</strong></div></td>

       
        </tr>
		
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
        <%
		
                        String oname=(String)application.getAttribute("doname");
						
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;
						int i=1;
						try 
						{
								
								
								Statement stmt1=connection.createStatement();
								String strQuery1 = "select * from datasets where uname='"+oname+"'";
								ResultSet rs = stmt1.executeQuery(strQuery1);
					   			while ( rs.next() )
								{
										
										s1=rs.getString(2);
				                		s2=rs.getString(3);//
										s3=rs.getString(4);
										s4=rs.getString(5);//
										s5=rs.getString(6);
										s6=rs.getString(7);
										s7=rs.getString(8);
										

					%>
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
		 <%out.println(s7);%>
              <p>&nbsp; </p>
              </div></td>
			 
			  
        </tr>
			  
        
        
		<%
                
				                
				i=i+1;

						}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      
  </table>		  

		  
		  

		 