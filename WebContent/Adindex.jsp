<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Faculty Home</title>
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
                <div class="col-md-7 col-sm-7 col-xs-7 top-header-links">
                    <ul class="contact_links">
                        <li><i class="fa fa-phone"></i><a href="#">+918777854515</a></li>
                        <li><i class="fa fa-envelope"></i><a href="#">www.recruitmate.in</a></li>
                    </ul>
                </div>
                <div class="col-md-5 col-sm-5 col-xs-5 social">
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
                <div class="row">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
                        <a class="navbar-brand" href="facIndex.html">
                            <h1>Recruitmate</h1><span>Online Examination System</span></a>
                    </div>
                    <div id="navbar" class="collapse navbar-collapse navbar-right">
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
            </div>
        </nav>
    </header>
    <!--/.nav-ends -->

    <div id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('img/banner-slide-1.jpg');"></div>
                <div class="carousel-caption slide-up">
                    <h1 class="banner_heading">Providing latest<span> Exams </span>for Staff Recruitment</h1>
                    <p class="banner_txt">Our website conducts latest recruitment examinations for engineers by various services & products based companies across the globe.</p>
                  <!--  <div class="slider_btn">
                        <button type="button" class="btn btn-default slide"> <i class="fa fa-caret-right"></i></button>
                        <button type="button" class="btn btn-primary slide"><i class="fa fa-caret-right"></i></button>
                    </div>-->
                </div>
            </div>

            <div class="item">
                <div class="fill" style="background-image:url('img/banner-slide-2.jpg');"></div>
                <div class="carousel-caption slide-up">
                    <h2 class="banner_heading">???Success is no accident. It is  <span>hard work, perseverance,learning, studying, sacrifice  </span>and most of all, love of what you are doing or learning to do.???</h2>
                    <p class="banner_txt">???Pel??, Brazilian football legend</p>
                  <!--  <div class="slider_btn">
                        <button type="button" class="btn btn-default slide">Learn More <i class="fa fa-caret-right"></i></button>
                        <button type="button" class="btn btn-primary slide">Learn More <i class="fa fa-caret-right"></i></button>
                    </div>-->
                </div>
            </div>

            <div class="item">
                <div class="fill" style="background-image:url('img/banner-slide-3.jpg');"></div>
                <div class="carousel-caption slide-up">
                    <h2 class="banner_heading"><span>???Failure</span> is the opportunity to <span>begin again</span> more intelligently.???</h2>
                    <p class="banner_txt">??? Henry Ford</p>
                    <!--<div class="slider_btn">
                        <button type="button" class="btn btn-default slide">Learn More <i class="fa fa-caret-right"></i></button>
                        <button type="button" class="btn btn-primary slide">Learn More <i class="fa fa-caret-right"></i></button>
                    </div>-->
                </div>
            </div>
        </div>

        <!-- Left and right controls -->

        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <i class="fa fa-angle-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <i class="fa fa-angle-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
        </a>

    </div>
    <%@page import="pack.GetD,java.sql.*" %>
<% 
Connection cn=GetD.getC();

try{
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	if(id.equals("")||pw.equals(""))
	{
		RequestDispatcher rd=request.getRequestDispatcher("login1.html");
		rd.include(request,response );
		out.print("please give id");
	
	}else{
	String sql="select * from STUD where MAILID=? and PASS=?";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, pw);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next()){

		
		/*HttpSession n=request.getSession();
		n.setAttribute("cname", rs.getString(2));
		out.print("login success"+"<br>");
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
		
		RequestDispatcher rd=request.getRequestDispatcher("login.html");
		rd.include(request,response );
		out.print("wrong user id or password");
	}
	}
}catch(Exception e){
	System.out.println(e);
}
%>
    
    
 <section id="features">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-xs-12 block">
                    <div class="col-md-2 col-xs-2"><i class="fa fa-laptop feature_icon"></i></div>
                    <div class="col-md-10 col-xs-10">
                        <h4>Data Driven</h4>
                        <p>We are not afraid to challenge the status-quo.We debate respectfully and insightfully as often as we can & We never stop learning.</p>
                        <!--<a href="#" class="readmore">Read More <i class="fa fa-caret-right"></i></a>-->
                    </div>
                </div>
                <div class="col-md-4 col-xs-12 block">
                    <div class="col-md-2 col-xs-2"><i class="fa fa-bullhorn feature_icon"></i></div>
                    <div class="col-md-10 col-xs-10">
                        <h4>Extreme Ownership</h4>
                        <p>We operate in a ???no excuse??? zone.We are relentlessly resourceful & We make time to help others achieve their goals.</p>
                      <!--  <a href="#" class="readmore">Read More <i class="fa fa-caret-right"></i></a>-->
                    </div>
                </div>
                <div class="col-md-4 col-xs-12 block">
                    <div class="col-md-2 col-xs-2"><i class="fa fa-support feature_icon"></i></div>
                    <div class="col-md-10 col-xs-10">
                        <h4>Customer Delight</h4>
                        <p>We are obsessed with customer happiness.We sweat the details in every interaction & We optimize for speed.</p>
                        <!--<a href="#" class="readmore">Read More <i class="fa fa-caret-right"></i></a>-->
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section id="about">
        <div class="image-holder col-lg-6 col-md-6 col-sm-6 col-xs-12 pull-left">
            <div class="background-imgholder">
                <img src="img/1.jpg" alt="about" class="img-responsive" style="display:none;" />
            </div>
        </div>

        <div class="container-fluid">

            <div class="col-md-7 col-md-offset-5 col-sm-8 col-sm-offset-2 col-xs-12 text-inner ">
                <div class="text-block">
                    <div class="section-heading">
                        <h1>ABOUT <span>US</span></h1>
                        <p class="subheading"></p>
                    </div>

                    <ul class="aboutul">
                        <li> <i class="fa fa-check"></i>Our vision is to bring credible and genuine assessment to various aspects of education, training and employment.</li>
                        <li> <i class="fa fa-check"></i>Recruitmate strives to help institutions and companies from choosing the 'right' individual rather than the 'best' individual.</li>
                        <li> <i class="fa fa-check"></i>Recruitmate envisions a scalable, equitable, merit driven labor market providing credibility and access to talent and opportunity.</li>
                        <li> <i class="fa fa-check"></i>Our mission is to establish one scientific and credible approach to measuring talent and matching it to opportunity.</li>
                        <li> <i class="fa fa-check"></i>Recruitmate is founded by Sayan, Abhinaba, Amit, Senjuti, Shahbaz, Payal & Sanghita of Heritage Institute of Technology,Kolkata.</li>
                        <li> <i class="fa fa-check"></i>Recruitmate team is committed to servicing its clients and partners at the highest possible standards.</li>
                    </ul>

                    <!--<button type="button" class="btn btn-primary slide">Learn More  <i class="fa fa-caret-right"></i> </button>-->


                </div>
            </div>
        </div>
    </section>


    <section id="process">
        <div class="container">
            <div class="section-heading text-center">
                <div class="col-md-12 col-xs-12">
                    <h1>What Jobseekers <span>have to Do</span></h1>
                  <!--  <p class="subheading">Lorem ipsum dolor sit amet sit legimus copiosae instructior ei ut vix denique fierentis ea saperet inimicu ut qui dolor oratio mnesarchum ea utamur impetus fuisset nam nostrud euismod volumus ne mei.</p>-->
                </div>
            </div>

            <div class="row">
                <div class="col-md-3 col-sm-6 block process-block">
                    <div class="process-icon-holder">
                        <div class="process-border">
                            <span class="process-icon"><a href=""><i class="fa fa-lightbulb-o feature_icon"></i></a></span></div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="process-text-block">
                        <h4><a href="">Sign Up</a></h4>
                        <p>Jobseekers have to first give their personal details & create their accounts then they can be eligible to give exams.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 block process-block">
                    <div class="process-icon-holder">
                        <div class="process-border">
                            <span class="process-icon"><a href=""><i class="fa fa-cloud-download feature_icon"></i></a></span></div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="process-text-block">
                        <h4><a href="">Log In</a></h4>
                        <p>Jobseekers then have to login by giving their usernames & passwords.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 block process-block">
                    <div class="process-icon-holder">
                        <div class="process-border">
                            <span class="process-icon"><a href=""><i class="fa fa-magic feature_icon"></i></a></span></div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="process-text-block">
                        <h4><a href="">Select Exam</a></h4>
                        <p>After successfully logged in, Jobseekers now can choose various latest staff recruitment exams from the list.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 block process-block lastchild">
                    <div class="process-icon-holder">
                        <div class="process-border">
                            <span class="process-icon"><a href=""><i class="fa fa-cog feature_icon"></i></a></span></div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="process-text-block">
                        <h4><a href="">Give Exam</a></h4>
                        <p>Finally, By choosing the exams they are eligible Jobseekers can give exams once at a time.</p>
                    </div>
                </div>
            </div>

        </div>
    </section>


    <!--<section id="testimonial">
        <div class="container">
            <div class="section-heading text-center">
                <div class="col-md-12 col-xs-12">
                    <h1>What Our <span>Client Says</span></h1>
                    <p class="subheading">Lorem ipsum dolor sit amet sit legimus copiosae instructior ei ut vix denique fierentis ea saperet inimicu ut qui dolor oratio mnesarchum ea utamur impetus fuisset nam nostrud euismod volumus ne mei.</p>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-12 block ">
                    <div class="testimonial_box">
                        <p>Lorem ipsum dolor sit amet sit legimus copiosae instructior ei ut vix denique fierentis ea saperet inimicu ut qui dolor oratio mnesarchum ea utamur impetus fuisset. </p>
                    </div>
                    <div class="arrow-down"></div>
                    <div class="testimonial_user">
                        <div class="user-image"><img src="img/user1.png" alt="user" class="img-responsive" /></div>
                        <div class="user-info">
                            <h5>Lorem Ipsum</h5>
                            <p>Manager</p>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 col-sm-12 block">
                    <div class="testimonial_box">
                        <p>Lorem ipsum dolor sit amet sit legimus copiosae instructior ei ut vix denique fierentis ea saperet inimicu ut qui dolor oratio mnesarchum ea utamur impetus fuisset. </p>
                    </div>
                    <div class="arrow-down"></div>
                    <div class="testimonial_user">
                        <div class="user-image"><img src="img/user1.png" alt="user" class="img-responsive" /></div>
                        <div class="user-info">
                            <h5>Lorem Ipsum</h5>
                            <p>Manager</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-12 block">
                    <div class="testimonial_box">
                        <p>Lorem ipsum dolor sit amet sit legimus copiosae instructior ei ut vix denique fierentis ea saperet inimicu ut qui dolor oratio mnesarchum ea utamur impetus fuisset. </p>
                    </div>
                    <div class="arrow-down"></div>
                    <div class="testimonial_user">
                        <div class="user-image"><img src="img/user1.png" alt="user" class="img-responsive" /></div>
                        <div class="user-info">
                            <h5>Lorem Ipsum</h5>
                            <p>Manager</p>
                        </div>
                    </div>
                </div>


            </div>
        </div>

    </section>
-->




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
                        <li><a href="notiST.html">Update Notice</a></li>
                        <li><a href="dFrqs.html">Delete Questions</a></li>
                        <li><a href="adfrVs.html">View Questions</a></li>
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
