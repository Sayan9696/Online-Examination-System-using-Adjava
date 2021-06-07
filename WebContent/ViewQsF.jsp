<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Question Set</title><u>View Question Set</u>
</head>
<body>
<%@page import="pack.GetD,java.sql.*" %>




<%
Connection cn=GetD.getC();
try{
	
	String sql="select * from QUES";
	PreparedStatement ps=cn.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
	%>
	
	<br>faculty name:<%=rs.getString(2)%> 
	<%}
	ResultSet ns=ps.executeQuery();int c=0;
	while(ns.next())
	{ 
		
%>	
 	<br>Qs:<%out.print(++c); %><a href="deleteQuesF.jsp?rd=<%=ns.getString(1)%>">:<%=ns.getString(3)%></a>
 	<br>1.<%=ns.getString(4)%>          2.<%=ns.getString(5)%>
 	<br>Right answer:<%=ns.getString(6)%><br><br>
</div>




<%} %>

<%}catch(Exception e){
	out.print(e);
}%>


</body>
</html>