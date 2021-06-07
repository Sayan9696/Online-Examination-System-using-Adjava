<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="pack.GetD,java.sql.*,java.util.*" %>




<%
Connection cn=GetD.getC();int p=0;
try{
	
	String sql="select * from QUES where QID=1";
	PreparedStatement ps=cn.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
	%>
	
	<br><center><h3><span><%=rs.getString(2)%></span></h3></center> 
	<section id="login-reg">
	<%}
	
	ResultSet gs=ps.executeQuery();
int v=0;
	while(gs.next()){
		v++;
	}
	v=v*2;
	
	ResultSet ns=ps.executeQuery();int c=0;
	String[] row = new String[2];
	while(ns.next())
	{ 
		
		p++;
%>	<form method="get" id="form" action="examMR.jsp">
 	
 	
        <div class="container">
            <!-- Top content -->
            <div class="row">
                
                    <div class="section-heading"><div align="left">
<h5>Qs:<%out.print(++c); %>)<%=ns.getString(3)%></h5>
 	
 	
 	<% 
		String a[]= new String[v];
		for (int i=0; i <2 ; i++)
        {
          row[i] = ns.getString((i+3) + 1);
          //out.println(row[i]);
         // if(row.length==5)
        	//  i=0;
        
		}
		Random r=new Random();
		
        for(int i=0;i<row.length;i++)
        {
        	int s= (int)(r.nextInt(row.length));
        	
        	String t=row[s];
        	row[s]=row[i];
        	row[i] = t;
        	
        }
        
        
        for (int i=0; i <2 ; i++)
        {
        	//out.println(row[i]);
        } int ms=0;
        %>

 	
 	<br><h5><span>
1)<%out.print(row[ms]);%><input type="radio"   name="rh<%out.print(p);%>" value="<%out.print(row[ms]);%>" >    
 	    <br>  2)<%out.print(row[ms+1]);%><input type="radio"  name="rh<%out.print(p);%>" value="<%out.print(row[ms+1]);%>" >
 	<input type="hidden" name="rh<%out.print(p);%>" value="xyz">
 	</span></h5>
</div>
</div></div></div>
<%} %><center><button type="submit" class="button">submit</button></center>
</div>
<%}catch(Exception e){
	out.print(e);
}%>

 	</form>
</body>
</html>