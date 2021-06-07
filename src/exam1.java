
import pack.*;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class exam1
 */
@WebServlet("/exam1")
public class exam1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try{String s=request.getParameter("key");
		PrintWriter out=response.getWriter();
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
		
		//out.print(marks);
		/*String sql1="update STUD set MARKS="+marks+" where ID=1";
		
		Statement st=cn.createStatement();
		
		st.executeUpdate(sql1);*/
		
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
