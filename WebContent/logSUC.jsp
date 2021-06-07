<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>login Success</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="scss/main.css">
    <link rel="stylesheet" href="scss/skin.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
  
</head>

<body id="wrapper">

    <section id="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 top-header-links">
                    <ul class="contact_links">
                        <li><i class="fa fa-phone"></i><a href="#">+918777854515</a></li>
                        <li><i class="fa fa-envelope"></i><a href="#">www.recruitmate.in</a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <ul class="social_links">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        </div>

    </section>

    <header>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
                    <a class="navbar-brand" href="index.html">
                        <h1>Recruitmate</h1><span>Online Examination System</span></a>
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="loginCS.html">Exams</a></li>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="NOTcs.jsp">Notice Board</a></li>
                        <li><a href="Faq.html">FAQ</a></li>
                        <li><a href="index1.html">Contact</a></li>
                        <li><a href="Freeqs.html">Practice Questions</a></li>
                        <li><a href="registration.html">Sign Up</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <!--/.nav-ends -->
    </header>
     <section id="top_banner">
        <div class="banner">
            <div class="inner text-center">
                <h2> You are<span> LOGGED In.....</span></h2> 
            </div>
        </div>
    </section>
    
 <%@page import="pack.GetD,java.sql.*" %>
<% 
Connection cn=GetD.getC();

try{
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	if(id.equals("")||pw.equals(""))
	{
		RequestDispatcher rd=request.getRequestDispatcher("loginCS.html");
		rd.include(request,response );
		out.print("please give id");
	
	}else{
	String sql="select * from STUD where MAILID=? and PASS=?";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, pw);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next()){

		
		HttpSession n=request.getSession();
		n.setAttribute("id", rs.getString(1));
		/*out.print("login success"+"<br>");
		out.print("your id is "+rs.getString(1)+"<br>");
		out.print("your name is "+rs.getString(2)+"<br>");
		out.print("your mailId is "+rs.getString(6)+"<br>");
		out.print("your address is "+rs.getString(5)+"<br>");
		HttpSession s=request.getSession();
		s.setAttribute("cid", rs.getString(1));*/
		//RequestDispatcher rd=request.getRequestDispatcher("index.html");
		//rd.include(request,response );
	}
	else{
		
		RequestDispatcher rd=request.getRequestDispatcher("loginCS.html");
		rd.include(request,response );
		out.print("wrong user id or password");
	}
	}
}catch(Exception e){
	System.out.println(e);
}
%>

    <section id="login-reg">
        <div class="container">
            <!-- Top content -->
            <div class="row">
                <div class="col-md-6 col-sm-12 forms-right-icons">
                    <div class="section-heading">
                        <h2>Now you are <span> Logged in</span></h2><br>
                        <h3>If you want to <span> give exam</span><a href="examOOP.jsp?rd=1">     click here</a></h3><br>
                        <p class="subheading">
                        </p>
                    </div>
                    

                </div>
               

                    <!--<div class="social-login">
                        <h3>...or login with:</h3>
                        <div class="social-login-buttons">
                            <a class="btn btn-link-1 btn-link-1-facebook" href="#">
                                <i class="fa fa-facebook"></i> Facebook
                            </a>
                            <a class="btn btn-link-1 btn-link-1-twitter" href="#">
                                <i class="fa fa-twitter"></i> Twitter
                            </a>
                            <a class="btn btn-link-1 btn-link-1-google-plus" href="#">
                                <i class="fa fa-google-plus"></i> Google Plus
                            </a>
                        </div>
                    </div>

                </div>
-->
    </section>

<section id="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-12 block">
                    <div class="footer-block">
                        <h4>Address</h4>
                        <hr/>
                        <p> 994, Chowbaga Road, Anandapur, P.O.: East Kolkata Township, Kolkata-700107, West Bengal, India
                        </p>
                        <!--<a href="#" class="learnmore">Learn More <i class="fa fa-caret-right"></i></a>-->
                    </div>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12 block">
                    <div class="footer-block">
                        <h4>Useful Links</h4>
                        <hr/>
                        <ul class="footer-links">
                          <li><a href="index.html">Home</a></li>
                        <li><a href="loginCS.html">Exams</a></li>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="NOTcs.jsp">Notice Board</a></li>
                        <li><a href="Freeqs.html">Practice Questions</a></li>
                        <li ><a href="registration.html">Sign Up</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12 block">
                    <div class="footer-block">
                        <h4>Community</h4>
                        <hr/>
                        <ul class="footer-links">
                            <li><a href="index1.html">Contact Us</a></li>
                            <li><a href="Faq.html">FAQ</a></li>
                            <li><a href="Privacy Policy.html">Privacy Policy</a></li>
                            <li><a href="Terms & Conditions.html">Terms & Conditions</a></li>
                        </ul>
                    </div>
                </div>

              <!--  <div class="col-md-3 col-sm-3 col-xs-12 <block></block>">
                    <div class="footer-block">
                        <h4>Recent Posts</h4>
                        <hr/>
                        <ul class="footer-links">
                            <li>
                                <a href="#" class="post">Lorem ipsum dolor sit amet</a>
                                <p class="post-date">May 25, 2017</p>
                            </li>
                            <li>
                                <a href="#" class="post">Lorem ipsum dolor sit amet</a>
                                <p class="post-date">May 25, 2017</p>
                            </li>
                            <li>
                                <a href="#" class="post">Lorem ipsum dolor sit amet</a>
                                <p class="post-date">May 25, 2017</p>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
-->

    </section>

    <section id="bottom-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 btm-footer-links">
                    <a href="#"></a>
                    <a href="#"></a>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 copyright">
                    Developed by <a href="index.html">Recruitmate</a> designed by <a href="about.html">Our Team</a>
                </div>
            </div>
        </div>
    </section>

    <div id="panel">
        <div id="panel-admin">
            <div class="panel-admin-box">
                <div id="tootlbar_colors">
                    <button class="color" style="background-color:#1abac8;" onclick="mytheme(0)"></button>
                    <button class="color" style="background-color:#ff8a00;" onclick="mytheme(1)"> </button>
                    <button class="color" style="background-color:#b4de50;" onclick="mytheme(2)"> </button>
                    <button class="color" style="background-color:#e54e53;" onclick="mytheme(3)"> </button>
                    <button class="color" style="background-color:#1abc9c;" onclick="mytheme(4)"> </button>
                    <button class="color" style="background-color:#159eee;" onclick="mytheme(5)"> </button>
                </div>
            </div>

        </div>
        <a class="open" href="#"><span><i class="fa fa-gear fa-spin"></i></span></a>
    </div>

</html>
