<%@ include file="connect.jsp" %>
<%
try{
	String id=request.getParameter("id");
	String str="Authorized";
	Statement st1=connection.createStatement();
	String query1="update ownerreq set status='"+str+"' where id='"+id+"'";
	st1.executeUpdate(query1);
	connection.close();
	response.sendRedirect("DO_Request_Ownership.jsp");
}
catch(Exception e)
{
out.println(e);
}
%>
