<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Questions Delete</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="scss/main.css">
    <link rel="stylesheet" href="scss/skin.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
       <script>
	//define your time in second
		var c=36000;//60 for 1 minute.
        var t;
        timedCount();
 
        function timedCount()
		{
 
        	var hours = parseInt( c / 3600 ) % 24;
        	var minutes = parseInt( c / 60 ) % 60;
        	var seconds = c % 60;
 
        	var result = (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes) + ":" + (seconds  < 10 ? "0" + seconds : seconds);
 
            
        	$('.timer').html("<b>"+result+"</b>");
            if(c == 0 )
			{
            	//setConfirmUnload(false);
                //$("#quiz_form").submit();
				//window.location="logout.html";
			}
            c = c - 1;
            t = setTimeout(function()
			{
			 timedCount()
			},
			1000);
        }
	</script>
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
                        <li><a href="facIndex.html">Home</a></li>
                        <li><a href="QsF.html">Set Questions</a></li>
                        <li><a href="Adabout.html">About Us</a></li>
                        <li><a href="notiST.html">Update Notice</a></li>
                        <li><a href="dFrqs.html">Delete Questions</a></li>
                   
                        <li><a href="adfrVs.html">View Questions</a></li>
                        <li><a href="login.html">Logout</a></li>
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

                <h1><p style="color:aliceblue;">ONLINE<span> EXAM</span></p></h1>
            </div>
        </div>
        <div class="page_info">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-8 col-xs-6">
                        <h4></h4>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6" style="text-align:right;"><!-- <h4>TIME LEFT: </h4>
                   -->
                       <h3><span><p id="demo"></p></span></h3>

<!--<span class="timer">--> 	 </span><span class="current"></span></div>
                </div>
            </div>
        </div>

        </div>
    </section>


    <section id="faq">
        <div class="titlebar">
            <div class="container">
                <div class="row">
                    <div class="section-heading text-center">
                        <div class="col-md-12 col-xs-12">
                            <h2><span></span></h2>
                            <!--  <p class="subheading">Exams test your memory, life tests your learning; others will test your patience</p>
                      -->  </div>
                    </div>
                </div>

<%@page import="pack.GetD,java.sql.*" %>


</div>

<%
Connection cn=GetD.getC();
try{
	String rd=request.getParameter("rd");
	int xd=Integer.parseInt(rd);
	String sql="select * from QUES where QID=?";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setInt(1, xd);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
	%>
	
	<br><center><h2><span><%=rs.getString(2)%></span></h2></center> 
	<%}
	ResultSet ns=ps.executeQuery();int c=0;
	while(ns.next())
	{ 
		
%>	
 	







<div align="center">

<h5><p style="color:black;"><br>Qs:<%out.print(++c); %>)<%=ns.getString(3)%></p></h5>

<h5><span>
<p><br>(a)<%=ns.getString(4)%>     <br>     (b)<%=ns.getString(5)%></p>

</span></h5>


<h4><p style="color:black;"><br>Right answer:<span><%=ns.getString(6)%></span><br><br></p></h4>


<h5><p style="color:black;"><br>Do you want to delete this Question:<a href="deleteQuesF.jsp?rd=<%=ns.getString(1)%>">click here</a><br><br></p></h5>


</div>

<%} %>

<%}catch(Exception e){
	out.print(e);
}%>

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
                             <li><a href="QsF.html">Set Questions</a></li>
                        <li><a href="FacUpNT.html">Update Notice</a></li>
                        <li><a href="delQues.html">Delete Questions</a></li>
                        <li><a href="Freeqs.html">View Questions</a></li>
                     <li><a href="ViewStud.html">View Students</a></li>
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
