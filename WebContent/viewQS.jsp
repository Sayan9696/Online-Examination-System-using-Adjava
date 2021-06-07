<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Question Set</title><u>View Question Set</u>

</head>
<body>
<%@page import="pack.GetD,java.sql.*,java.util.*" %>




<%
Connection cn=GetD.getC();int p=0;
try{
	
	String sql="select * from QUES";
	PreparedStatement ps=cn.prepareStatement(sql);

	ResultSet rs=ps.executeQuery();
	if(rs.next()){
	%>
	
	<br>faculty name:<%=rs.getString(2)%> 
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
%>	<form method="get">
 	<br>Qs:<%out.print(++c); %>:<%=ns.getString(3)%></a>
 	
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

 	
 	<br>1.<%out.print(row[ms]);%><input type="radio"   name="rh<%out.print(p);%>" value="<%out.print(row[ms]);%>" >    
 	      2.<%out.print(row[ms+1]);%><input type="radio"  name="rh<%out.print(p);%>" value="<%out.print(row[ms+1]);%>" >
 	
 	
</div>

<%} %>

<%}catch(Exception e){
	out.print(e);
}%>
<button>submit</button>
 	</form><br><br>
<script type='text/javascript' src='jquery-3.4.1.js'></script>
<script>
$(function(){
$("button").click(function(){
var i=0; 
var x="";
var p=parseInt(<%out.print(p);%>);

for(i=1;i<=p;i++)
{	
	x=x+$("input[name='rh"+i+"']:checked").val()+",";
}	
//alert(x);
var xhttp=new XMLHttpRequest();
xhttp.onreadystatechange=function(){
if(this.readyState==4 && this.status==200)
{//alert(this.responseText);
window.location.replace("2.html");
}	
};
xhttp.open("GET","cal.jsp?key="+x,true);
xhttp.send();

});
});


</script>

</body>
</html>