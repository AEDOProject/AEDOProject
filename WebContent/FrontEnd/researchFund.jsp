<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
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
                        <a href="index.jsp">
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
                                <a href="developFund.jsp">
                                    <img src="images/5.png" class="icon"/><br>
                                    <center>ทุนพัฒนา<p style="margin-top:-10px; margin-left:0px;">ภาษา</p></center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a href="researchFund.jsp">
                                    <img src="images/4.png" class="icon"/><br>
                                    <center>ทุนวิจัย</center> 
                                </a>
                            </div>
                            <div class="wrap-icon">
                                <a  href="textBookFund.jsp">
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
                                <a  href="trainings.jsp">
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
							<li><a href="index.jsp">Home</a></li>
							<li><a href="AboutUs.jsp">About Us</a></li>
							<li><a href="SAR.jsp">SAR</a></li>
							<li><a href="WebBlogs.jsp">Web Blogs</a></li>
							<li><a href="Download.jsp">Download</a></li>
                            <li><a href="PhotoAlbems.jsp">Photo Albums</a></li>
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
					<div class="12u skel-cell-important">
						
							<header>
                                <a style="font-family: 'Thai Sans Lite'; font-size: 28px;"><span class="fa fa-hdd-o"></span> ฐานข้อมูลทุนวิจัย</a>
                                <hr style=" border-top: 1px solid #60c2c8;">
							</header>
                            
						      <div class="container">
                                    <div class="row"> 
                                        <a>คำสืบค้น : </a>
                                            <form id="custom-search-form" class="form-search form-horizontal pull-left">
                                                <div class="input-append">
                                                    <input type="text" class="search-query mac-style" placeholder="Search">
                                                    <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                                                </div>
                                            </form>
                                    </div>
                               </div>
                               <br>
                            <div class="container">
                                    <div class="row"> 
                                        <a> ปีการศึกษา : </a>
                                        <form>
                                            <select class="custom-select-form">
                                                <option>ทุนปีการศึกษา</option>
                                                <option>2008</option>
                                                <option>2009</option>
                                                <option>2010</option>
                                                <option>2011</option>
                                                <option>2012</option>
                                                <option>2013</option>
                                                <option>2014</option>
                                                <option>2015</option>
                                                <option>2016</option>
                                            </select>                                             
                                        </form>
                                        <a> ภาคการศึกษา : </a>
                                        <form>
                                            <select class="custom-select-form">
                                                <option>ภาคทุนการศึกษา</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                            </select>                                             
                                        </form>
                                        <a> สำนักวิชา : </a>
                                        <form>
                                            <select class="custom-select-form">
                                                <option>สำนักวิชา</option>
                                                <option>สำนักวิชาศิลปศาสตร์</option>
                                                <option>สำนักวิชาวิทยาศาสตร์</option>
                                                <option>สำนักวิชาการจัดการ</option>
                                                <option>สำนักวิชาเทคโลยีสารสนเทศ</option>
                                                <option>สำนักวิชาอุตสาหกรรมเกษตร</option>
                                                <option>สำนักวิชานิติศาสตร์</option>
                                                <option>สำนักวิชาวิทยาศาสตร์เครื่องสำอาง</option>
                                                <option>สำนักวิชาวิทยศาสตร์สุขภาพ</option>
                                                <option>สำนักวิชาพยาบาลศาสตร์</option>
                                                <option>สำนักวิชาแพทยศาสตร์</option>
                                                <option>สำนักวิชาทันตแพทยศาสตร์</option>     
                                                <option>สำนักวิชาจีนวิทยา</option>               
                                                <option>สำนักวิชานวัตกรรมสังคม</option>                                 
                                            </select>                                             
                                        </form>
                                    </div>                                
                            </div>
                        <br>
                            <div class="container">
                                    <div class="row"> 
                                         <a> ประเภทหลัก : </a>
                                        <form>
                                            <select class="custom-select-form">
                                                <option>ทุนประเภทหลัก</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>                          <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>                                
                                            </select>                                             
                                        </form>                                    
                                        <a> ประเภทรอง : </a>
                                        <form>
                                            <select class="custom-select-form">
                                                <option>ทุนประเภทรอง</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>                          <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                                <option>Recent Files : Useful Documents for Faculty Staff</option>
                                            </select>                                             
                                        </form>
                                    </div>                                
                            </div>
                            <br>
                            <div class="container">                                     
                                <button class="button" type="submit" value="submit"><span class="fa fa-search" style="font-family: 'Thai Sans Lite'; font-size: 24px;"> ค้นหา</span></button>                                      
                            </div>                   
                    </div>
					<section class="12u">    
                             <center>
                                 <br>
                              <table class="table table-hover">
                                <thead>
                                <tr style="font-family:'Thai Sans Lite'; font-weight:bold; font-size:14pt;">
                                    <th style="width:15%;"><center>ภาคการศึกษา/ปีการศึกษา</center></th>                                    
                                    <th style="width:20%;"><center>หัวข้อ</center></th>
                                    <th style="width:18%;"><center>หัวหน้าโครงการ</center></th>
                                    <th style="width:18%;"><center>งบประมาณ(บาท)</center></th>
                                </tr>                                     
                                </thead>
                                <tbody>
                                  <tr>
                                    <td><center>1/2015</center></td>
                                    <td>ประสิทธิผลของนวัตกรรมสื่อโฆษณาเชิงทดลอง: สื่อแฝงในสภาพแวดล้อมผ่านโครงงานกลุ่มของนักศึกษารายวิชา ADS 446: นวัตกรรมสื่อโฆษณา</td>
                                    <td><center>อาจารย์สุกัล กฤตลักษณ์วงศ์</center></td>
                                    <td><center>50,000</center></td>
                                  </tr>
                                    <tr>
                                    <td><center>3/2011</center></td>
                                    <td>ประสิทธิผลของนวัตกรรมสื่อโฆษณาเชิงทดลอง: สื่อแฝงในสภาพแวดล้อมผ่านโครงงานกลุ่มของนักศึกษารายวิชา ADS 446: นวัตกรรมสื่อโฆษณา</td>
                                    <td><center>อาจารย์สุกัล กฤตลักษณ์วงศ์</center></td>
                                    <td><center>50,000</center></td>
                                  </tr>
                                    <tr>
                                    <td><center>2/2016</center></td>
                                    <td>ประสิทธิผลของนวัตกรรมสื่อโฆษณาเชิงทดลอง: สื่อแฝงในสภาพแวดล้อมผ่านโครงงานกลุ่มของนักศึกษารายวิชา ADS 446: นวัตกรรมสื่อโฆษณา</td>
                                    <td><center>อาจารย์สุกัล กฤตลักษณ์วงศ์</center></td>
                                    <td><center>50,000</center></td>
                                  </tr>
                                  <tr>
                                    <td><center>1/2014</center></td>
                                    <td>ประสิทธิผลของนวัตกรรมสื่อโฆษณาเชิงทดลอง: สื่อแฝงในสภาพแวดล้อมผ่านโครงงานกลุ่มของนักศึกษารายวิชา ADS 446: นวัตกรรมสื่อโฆษณา</td>
                                    <td><center>อาจารย์สุกัล กฤตลักษณ์วงศ์</center></td>
                                    <td><center>50,000</center></td>
                                  </tr>   
                                </tbody>
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