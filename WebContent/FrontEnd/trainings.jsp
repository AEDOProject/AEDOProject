<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.mfu.entity.*" %>
 <%@ page import="com.mfu.dao.*" %>
<!DOCTYPE HTML>
<!--
	Colorized by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Academic Extension and Development Office MFU</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">        
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>        
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
	</head>
	<body>

	<!-- Header -->
				<div id="header">
			<div id="logo-wrapper"  style="padding-bottom:125px;">
				<div class="container">
						
					<!-- Logo -->
                    <div id="logo">
                        <a href="index.html">
							<img src="images/aedo2.png" alt="" style="width:300px; hieght:auto; margin-top:18px;"> 
                        </a>
						</div>
                    <div class="wrap-position">
                            <div class="wrap-icon">
                                <a href="#">
                                    <img src="images/8.png" class="icon"/><br>
                                    <center>HLLC</center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a  href="#">
                                    <img src="images/7.png" class="icon"/><br>
                                    <center>อาจารย์ดีเด่น</center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a href="#">
                                    <img src="images/6.png" class="icon"/><br>
                                    <center>ห้องเรียน <p style="margin-top:-10px; margin-left:0px; font-size:14px;">Active Learning</p></center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a href="developFund.html">
                                    <img src="images/5.png" class="icon"/><br>
                                    <center>ทุนพัฒนา<p style="margin-top:-10px; margin-left:0px;">ภาษา</p></center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a href="researchFund.html">
                                    <img src="images/4.png" class="icon"/><br>
                                    <center>ทุนวิจัย</center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a  href="textBookFund.html">
                                    <img src="images/3.png" class="icon"/><br>
                                    <center>ทุนตำรา</center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a href="#">
                                    <img src="images/2.png" class="icon"/><br>
                                    <center>KM</center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a  href="trainings.html">
                                    <img src="images/1.png" class="icon"/><br>
                                    <center>อบรม</center> 
                                </a>
                            </div>                         
                         </div>
				</div>                
			</div>
            
			<div class="container">
				<!-- Nav -->
					<nav id="nav">
						<ul>
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href="AboutUs.html">About Us</a></li>
							<li><a href="OurServices.html">Our Services</a></li>
							<li><a href="SAR.html">SAR</a></li>
							<li><a href="WebBlogs.html">Web Blogs</a></li>
                            <li><a href="PhotoAlbems.html">Photo Albums</a></li>
						</ul>
					</nav>
			</div>
		</div>
	<!-- Header -->
	
	<!-- Main -->
		<div id="main">

			<!-- Main Content -->
			<div class="container">
				<div class="row">
                    <div id="sidebar1" class="0u">
						<section>
							<header>
								<h2>การอบรม</h2>
							</header>
							<ul class="default alt">
							<%TrainingTypeDAO dao = new TrainingTypeDAO();
							List<TrainingType> list = dao.getAllTrainingType();
							for(TrainingType type : list){
								
							
							%>
                                <li style="font-family:'Thai Sans Lite'; font-size:21px;">&#9679;<a href="trainings.html"><%=type.getTrainingtypename()%></a></li>						
							<%} %>
							</ul>
						</section>
						
					</div>
                    
				
					<div class="9u skel-cell-important">
						<section>
							<p style="font-size:36px; font-weight:bold;">Staff Trainings 2016</p>
                            
                            <div class="container">
                                
                                <div class="row">
                                    <section class="0u"> 
                                        <center><a> วันพฤหัสบดีที่ 14 กรกฎาคม 2559 </a><br><a>โครงการแลกเปลี่ยนเรียนรู้ เรื่อง การวิจัยเชิงปริมาณทางด้านสังคมศาสตร์</a></center>     
                                        <center><a href="#" class="image full"><img src="images/Thai.png" alt="" style="width:240px; height:360px;"></a></center>
                                    </section>
                                    <section class="0u">
                                        <center><a>วันพฤหัสบดีที่ 16 มิถุนายน 2559</a><br><a>อบรมเชิงปฎิบัติการ เรื่อง การวิจัยในชั้นเรียนเพื่อพัฒนาการเรียนการสอน</a></center>
                                        <center><a href="#" class="image full"><img src="images/poster.jpg" alt="" style="width:240px; height:360px;"></a></center> 
                                    </section>                                    
                                </div>
                                
                            </div>
                            
                            <a style="font-size:18pt; font-weight:bold; color:red;">คำแนะนำในการลงทะเบียนเข้าร่วมกิจกรรม</a>
                            <p style="font-size:16pt; color:red;"> เมื่อท่านคลิกที่ข้อความ "คลิกเพื่อลงทะเบียน" ระบบจะขอให้ท่าน Sign in เข้าสู่ MFU mail ก่อน </p>
                           
                            <a style="font-size:24px; font-weight:bold;">สำหรับท่านที่ยังไม่เคยเข้าระบบ MFU mail</a>
                            
                            <p style="text-indent:40px; font-size:16pt;">&#9679; Username ของท่านเป็น ชื่อภาษาอังกฤษ ตามด้วยเครื่องหมาย " . " และนามสกุลภาษาอังกฤษ 3 ตัวอักษรแรก ตัวอย่างเช่น สำหรับอาจารย์ชื่อ Mr.Harry Potter จะมี username เป็น  harry.pot@mfu.ac.th</p>
                            <p style="text-indent:40px; font-size:16pt;">&#9679; Password เป็นรหัสพนักงาน (ท่านสามารถเปลี่ยน Password ได้เมื่อเข้าสู่ระบบ MFU mail)</p>
                            
                            <a style="font-size:14pt; font-weight:bold; color:blue">สำหรับท่านที่มีปัญหาในการใช้ MFU mail โปรดแ้จ้งศูนย์บริการเทคโนโลยีสารสนเทศผ่านทางอีเมล์  superadmin@mfu.ac.th เบอร์โทรภายใน 6397</a> 
                            
                            
                            
                            <p style="font-size:20px;">***อาจารย์ใหม่ หมายถึง อาจารย์ที่เริ่มปฏิบัติงานมาแล้วไม่เกิน 2 ปี  (นับตั้งแต่เดือนตุลาคม 2556 - มิถุนายน 2558)</p>
                            <a style="font-size:18pt; font-weight:bold; color:red;">ยกเว้น </a> 
                            <p style="text-indent:40px;">1. อาจารย์ที่เริ่มปฏิบัติงานในปี พ.ศ. 2557  ที่เคยเข้าร่วมการอบรมหัวข้อ เรื่อง บทบาทและหน้าที่อาจารย์ที่ปรึกษา และ หัวข้อเรื่อง การออกข้อสอบและหลักการวัดและประเมินผลการศึกษา ประจำปีงบประมาณ พ.ศ. 2558 แล้ว แต่ยังไม่ได้เข้าร่วมการซ้อมสอนเป็นภาษาอังกฤษ ให้ท่านเข้าร่วมโครงการซ้อมสอนเป็นภาษาอังกฤษ กับเลือกเข้ากิจกรรมของ Training for All Faculty Staff และทำการลงทะเบียนเข้าร่วมการอบรม/กิจกรรมแลกเปลี่ยนเรียนรู้ ตามวันเวลาที่ได้ระบุไว้</p>
                            <p style="text-indent:40px;">2. อาจารย์ที่เริ่มปฏิบัติงานในปี พ.ศ. 2557 ที่เคยเข้าร่วมการซ้อมสอนเป็นภาษาอังกฤษ ประจำปีงบประมาณ พ.ศ. 2558 แล้ว แต่ยังไม่ได้เข้าร่วมการอบรมหัวข้อ เรื่อง บทบาทและหน้าที่อาจารย์ที่ปรึกษา และ หัวข้อเรื่อง การออกข้อสอบและหลักการวัดและประเมินผลการศึกษา ให้ท่านเข้าร่วมโครงการสัมมนาอาจารย์ใหม่ ประจำปีงบประมาณ พ.ศ.2558</p>                  
                            
						</section>
                        
					</div>
                    <section class="12u">    
                             <center>
                                 <br>
                                 <br>
                              <table class="table table-hover">
                                <thead>
                                <tr style="font-family:'Thai Sans Lite'; font-weight:bold; font-size:14pt;">
                                    <th style="width:15%;"><center>หัวข้ออบรม/กิจกรรม</center></th>
                                    <th style="width:15%;"><center>คำอธิบาย</center></th>
                                    <th style="width:7%;"><center>จำนวนรับ</center></th>
                                    <th style="width:12%;"><center>วัน เวลา และสถานที่</center></th>
                                    <th style="width:13%;"><center>ช่วงเวลาที่รับสมัคร</center></th>
                                    <th style="width:18%;"><center>ลงทะเบียนเข้าร่วมอบรม/กิจกรรม</center></th>                                     
                                    <th style="width:20%;"><center>รายชื่อผู้เข้าร่วมอบรม/กิจกรรม</center></th>
                                </tr>                                     
                                </thead>
                                <% TrainingProjectDAO traingProject = new TrainingProjectDAO();
                                List<TrainingProject> listTrainingProject = traingProject.getAllTrainingProject();
                                
                                for(TrainingProject project : listTrainingProject){
                                %>	
                                
                                <tbody>
                                  <tr>
                                    <td><%=project.getTrainingname()%></td>
                                    <td><%=project.getDetail()%></td>
                                    <td></td>
                                    <td>วันเสาร์ที่ 14 พฤศจิกายน 2558 ณ ห้องประชุมแม่สาย อาคารสำนักงานอธิการบดี AD1</td>
                                    <td>วันอังคารที่ 27 ตุลาคม - วันอังคารที่ 10 พฤศจิกายน 2558</td>
                                    <td>ปิดรับการลงทะเบียน</td>
                                    <td>ตรวจสอบรายชือการลงทะเบียนเข้าร่วม</td>  
                                  </tr>                                 
                                </tbody>
                               <%
                                }
                                %> 
                              </table>
                            </center> 
                        </section>
				
				</div>
			
			</div>
			<!-- /Main Content -->
			
		</div>
	<!-- /Main -->

	

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				<section>
					Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
				</section>
			</div>
		</div>


	</body>
</html>