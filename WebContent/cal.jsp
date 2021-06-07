
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%@page import="pack.GetD,java.sql.*" %>
<% try{
	String s=request.getParameter("key");
//PrintWriter out=response.getWriter();
//out.println(s);
int id=1;
String a[]= s.split(","); 
Connection cn=GetD.getC();

String sql="select ANS from QUES";
int marks=0;
PreparedStatement ps=cn.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
int i=0;
while(rs.next()){	
if(a[i].equals(rs.getString(1)))
{
	marks++;
}
i++;
}

out.print(marks);
String sql1="update STUD set MARKS="+marks+" where ID=1";

Statement st=cn.createStatement();

st.executeUpdate(sql1);

}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>