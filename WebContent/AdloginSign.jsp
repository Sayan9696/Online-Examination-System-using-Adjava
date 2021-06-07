<html>
<head>
<title>Login Form Design</title>
    <link rel="stylesheet" type="text/css" href="style.css"></head>
<body>
    <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
        <form action="Adindex.jsp">
            <p>Username</p>
            <input type="text" id="id" name="id" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" id="pw" name="pw" placeholder="Enter Password">
            <input type="submit" name="" value="Login" onclick="age()">
           <font color="red"><h3><center> Sign Up Successful....</center></h3></font>
        </form>
        
    </div>
   <%@page import="pack.*,java.sql.*" %>
   
<%Connection cn=GetD.getC();
try{

	
	
	String cname=request.getParameter("cname");
	String pw=request.getParameter("pw");

	String ph=request.getParameter("ph");
	String ml=request.getParameter("ml");
	
	
	
	
	if(pw.equals("")||cname.equals("")||ml.equals("")||ph.equals(""))
	{out.print("please fill the form");
		RequestDispatcher rd=request.getRequestDispatcher("adSign.html");
		rd.include(request,response );
		out.print("please give id");
	
	}else{
		int id=0;
		PreparedStatement p=cn.prepareStatement("select max(ID) from STUD");
		ResultSet rs=p.executeQuery();
		if(rs.next()){
			id=rs.getInt(1);
			id++;
			String sql="insert into STUD values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=cn.prepareStatement(sql);
			int xp=0;int xp1=0,xp2=0;
			ps.setInt(1, id);
			ps.setString(2, cname);
			ps.setString(3, pw);
			ps.setString(4, ph);
			ps.setString(5, ml);
			ps.setInt(6, xp);
			ps.setInt(7, xp);
			ps.setInt(8, xp);
			ps.execute();	}
}
	}
catch(Exception e)
{System.out.println(e);
}

%> 
</body>


<script>
function age(){
	var x=document.getElementById("id").value;
	
	if(x==""){
		alert("please enter id");
		return false}	
	var y=document.getElementById("pw").value;
	
	if(y==""){
		alert("please enter password");
		return false}	
		

}
</script>
</html>