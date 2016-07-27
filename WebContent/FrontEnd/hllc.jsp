<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
        <!-- Bootstrap Core CSS -->
   
            <script type="text/javascript" src="Templates/slide/js/jquery-1.11.3.min.js"></script>
            <script type="text/javascript" src="Templates/slide/js/jssor.slider.mini.js"></script>
            <!-- use jssor.slider.debug.js instead for debug -->
            <script>
        jQuery(document).ready(function ($) {
            
            var jssor_1_SlideoTransitions = [
              [{b:5500,d:3000,o:-1,r:240,e:{r:2}}],
              [{b:-1,d:1,o:-1,c:{x:51.0,t:-51.0}},{b:0,d:1000,o:1,c:{x:-51.0,t:51.0},e:{o:7,c:{x:7,t:7}}}],
              [{b:-1,d:1,o:-1,sX:9,sY:9},{b:1000,d:1000,o:1,sX:-9,sY:-9,e:{sX:2,sY:2}}],
              [{b:-1,d:1,o:-1,r:-180,sX:9,sY:9},{b:2000,d:1000,o:1,r:180,sX:-9,sY:-9,e:{r:2,sX:2,sY:2}}],
              [{b:-1,d:1,o:-1},{b:3000,d:2000,y:180,o:1,e:{y:16}}],
              [{b:-1,d:1,o:-1,r:-150},{b:7500,d:1600,o:1,r:150,e:{r:3}}],
              [{b:10000,d:2000,x:-379,e:{x:7}}],
              [{b:10000,d:2000,x:-379,e:{x:7}}],
              [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:9100,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:10000,d:1600,x:-200,o:-1,e:{x:16}}]
            ];
            
            var jssor_1_options = {
              $AutoPlay: true,
              $SlideDuration: 800,
              $SlideEasing: $Jease$.$OutQuint,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
            
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>
        
        <style>
        
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('Templates/slide/img/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 22 css */
        /*
        .jssora22l                  (normal)
        .jssora22r                  (normal)
        .jssora22l:hover            (normal mouseover)
        .jssora22r:hover            (normal mouseover)
        .jssora22l.jssora22ldn      (mousedown)
        .jssora22r.jssora22rdn      (mousedown)
        */
        .jssora22l, .jssora22r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 58px;
            cursor: pointer;
            background: url('Templates/slide/img/a22.png') center center no-repeat;
            overflow: hidden;
        }
        .jssora22l { background-position: -10px -31px; }
        .jssora22r { background-position: -70px -31px; }
        .jssora22l:hover { background-position: -130px -31px; }
        .jssora22r:hover { background-position: -190px -31px; }
        .jssora22l.jssora22ldn { background-position: -250px -31px; }
        .jssora22r.jssora22rdn { background-position: -310px -31px; }
    </style>
        
	</head>
	<body class="homepage">

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
		                  
       
        
	<!-- Banner -->
		
			<!-- /Srart slide -->
              <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden; visibility: hidden;">
                <!-- Loading Screen -->
                <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>

                </div>
                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
                    <div data-p="225.00" style="display: none;">
                        <img data-u="image" src="images/hllclogo.png" />

                        <div data-u="caption" data-t="0" style="position: absolute; top: 100px; left: 600px; width: 445px; height: 300px;">



                        </div>
                        <div data-u="caption" data-t="5" style="position: absolute; top: 120px; left: 650px; width: 470px; height: 220px;">

                            <div style="position: absolute; top: 4px; left: 45px; width: 379px; height: 213px; overflow: hidden;">

                            </div>

                        </div>
                    </div>
                    <div data-p="225.00" style="display: none;">
                        <img data-u="image" src="images/hllc10.jpg" />
                    </div>
                    <div data-p="225.00" data-po="80% 55%" style="display: none;">
                        <img data-u="image" src="images/hllc11.jpg" />
                    </div>


                </div>
                <!-- Bullet Navigator -->
                <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
                    <!-- bullet navigator item prototype -->
                    <div data-u="prototype" style="width:16px;height:16px;"></div>
                </div>
                <!-- Arrow Navigator -->
                <span data-u="arrowleft" class="jssora22l" style="top:0px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
                <span data-u="arrowright" class="jssora22r" style="top:0px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
            </div>

    <!-- /End slide -->
		
	<!-- /Banner -->

	<!-- Main -->
		<div id="main">

			<!-- Featured -->
            <p style="font-size:36px;"><center style="font-size:42px; color:red;">Welcome to How to Live and Learn on Campus 2016 (HLLC2016) Program</center></p>
            <br>   

			<div class="container">                   
			<!-- /Featured -->
			
			<!-- Main Content -->
			<div class="container">				
				<div class="row">
                    <div id="sidebar1" class="3u">
						<section>
							<header>
								<h2 style="font-size:23px; font-weight: bold;">How to Live & Learn on Campus</h2>
							</header>
							<ul class="default alt" style="font-family:'Thai Sans Lite'; font-size:21px; border:0px;" >
								<li>&#9679;<a href="#">Home</a></li>
								<li>&#9679;<a href="#">About HLLC</a></li>
								<li>&#9679;<a href="#">Program</a></li>
								<li>&#9679;<a href="#">Activities</a></li>
								<li>&#9679;<a href="#">MFU'S Got Talent</a></li>
							</ul>
						</section>						
					</div>
                    
				
					<div class="9u skel-cell-important">
						<section>
							<div class="row">
                                <div class="6u">
                                    <section>                            
                                        <figure class="clear">
                                            <div class="imgl boxholder"><img src="images/qrcode1.png" alt="" style="width:100px; hieght:auto;"></div>
                                                <p style="font-size:20px;">รับนักศึกษาช่วยงานทุกสาขาวิชา มีค่าตอบแทน 30 บาท/ชั่วโมง(หากไม่สะดวกตลอดทั้งวันสามารถสมัครได้)เดือนกรกฎาคม 2559 - กันยายน 2559 **รับจำนวนจำกัด.... <a href="#">Read More &raquo;</a>
                                            </p>
                                        </figure>                    

                                    </section>
                                </div>	
                                <div class="6u">
                                    <section>                            
                                        <figure class="clear">
                                            <div class="imgl boxholder"><img src="images/qrcode1.png" alt="" style="width:100px; hieght:auto;"></div>
                                                <p style="font-size:20px;">รับนักศึกษาช่วยงานทุกสาขาวิชา มีค่าตอบแทน 30 บาท/ชั่วโมง(หากไม่สะดวกตลอดทั้งวันสามารถสมัครได้)เดือนกรกฎาคม 2559 - กันยายน 2559 **รับจำนวนจำกัด.... <a href="#">Read More &raquo;</a>
                                            </p>
                                        </figure>                    

                                    </section>
                                </div>
                                <div class="6u">
                                    <section>                            
                                        <figure class="clear">
                                            <div class="imgl boxholder"><img src="images/qrcode1.png" alt="" style="width:100px; hieght:auto;"></div>
                                                <p style="font-size:20px;">รับนักศึกษาช่วยงานทุกสาขาวิชา มีค่าตอบแทน 30 บาท/ชั่วโมง(หากไม่สะดวกตลอดทั้งวันสามารถสมัครได้)เดือนกรกฎาคม 2559 - กันยายน 2559 ** รับจำนวนจำกัด.... <a href="#">Read More &raquo;</a>
                                            </p>
                                        </figure>                    

                                    </section>
                                </div>	
                                <div class="6u">
                                    <section>                            
                                        <figure class="clear">
                                            <div class="imgl boxholder"><img src="images/qrcode1.png" alt="" style="width:100px; hieght:auto;"></div>
                                                <p style="font-size:20px;">รับนักศึกษาช่วยงานทุกสาขาวิชา มีค่าตอบแทน 30 บาท/ชั่วโมง(หากไม่สะดวกตลอดทั้งวันสามารถสมัครได้) เดือนกรกฎาคม 2559 - กันยายน 2559 ** รับจำนวนจำกัด.... <a href="#">Read More &raquo;</a>
                                            </p>
                                        </figure>                    

                                    </section>
                                </div>
                                <div class="6u">
                                    <section>                            
                                        <figure class="clear">
                                            <div class="imgl boxholder"><img src="images/qrcode1.png" alt="" style="width:100px; hieght:auto;"></div>
                                                <p style="font-size:20px;">รับนักศึกษาช่วยงานทุกสาขาวิชา มีค่าตอบแทน 30 บาท/ชั่วโมง(หากไม่สะดวกตลอดทั้งวันสามารถสมัครได้)เดือนกรกฎาคม 2559 - กันยายน 2559 **รับจำนวนจำกัด.... <a href="#">Read More &raquo;</a>
                                            </p>
                                        </figure>                    

                                    </section>
                                </div>	
                                <div class="6u">
                                    <section>                            
                                        <figure class="clear">
                                            <div class="imgl boxholder"><img src="images/qrcode1.png" alt="" style="width:100px; hieght:auto;"></div>
                                                <p style="font-size:20px;">รับนักศึกษาช่วยงานทุกสาขาวิชา มีค่าตอบแทน 30 บาท/ชั่วโมง(หากไม่สะดวกตลอดทั้งวันสามารถสมัครได้)เดือนกรกฎาคม 2559 - กันยายน 2559 **รับจำนวนจำกัด.... <a href="#">Read More &raquo;</a>
                                            </p>
                                        </figure>                    

                                    </section>
                                </div>
				            </div>
                            
						</section>
					</div>
                    
                   				
				
				</div>
			
			</div>
                
                <div id="header"  style="font-size:28px;">
                    <span class="fa fa-volume-up" style="font-family:'Thai Sans Lite';"><span> News / Events</span></span>
                    <a href="#" style="font-size:13pt; margin-left:950px;">ดูเพิ่มเติม &raquo; </a>
                </div>
                <br>
                <div class="9u skel-cell-important">
						<section>
							<div class="row">
                                <div class="2u">
                                    <img src="images/edusr.gif" alt="" style="width:100%;hieght:auto;border:1px solid #000;">                     
                                </div>
                                <div class="10u">                                            
                                    <a class="12u" style="font-size:20px;"> 
                                        <img src="images/new.gif"/>&nbsp; ประชาสัมพันธ์การเข้าระบบเพื่อตอบแบบสอบถามออนไลน์ของเครื่องมือการวิจัย เรื่อง “สถานการณ์และระบบ การผลิตบัณฑิตระดับปริญญาตรีของมหาวิทยาลัยแม่ฟ้าหลวง... 
                                        <a class="read-more"><a href="#">Read More &raquo;</a></a>
                                    </a>
                                    <br>
                                    <small style="font-size:18px; color:#999;">Update : 3 มิ.ย. 2559 10:15 โดย Academic Extension and Development Office MFU</small>
                                </div>                               
                            </div>
                            
                            <div class="row">
                                <div class="2u">
                                    <img src="images/qrcode1.png" alt="" style="width:100%;hieght:auto;border:1px solid #000;">
                                </div>
                                <div class="10u">                                            
                                    <a class="12u" style="font-size:20px;"> 
                                        <img src="images/new.gif"/>&nbsp; รับนักศึกษาช่วยงานทุกสาขาวิชา มีค่าตอบแทน 30 บาท/ชั่วโมง(หากไม่สะดวกตลอดทั้งวันสามารถสมัครได้)เดือนกรกฎาคม 2559 - กันยายน 2559 ** รับจำนวนจำกัด....
                                        <a class="read-more"><a href="#">Read More &raquo;</a></a>
                                    </a>
                                    <br>
                                    <small style="font-size:18px; color:#999;">Update : 3 มิ.ย. 2559 10:15 โดย Academic Extension and Development Office MFU</small>
                                </div>      
                            </div>	                                                          
						</section>
					</div>
                <br>
                
            <div class="container">                
                <div id="header"  style="font-size:28px;">
                    <span class="fa fa-volume-up" style="font-family:'Thai Sans Lite';"><span> News / Events</span></span>
                    <a href="#" style="font-size:13pt; margin-left:950px;">ดูเพิ่มเติม &raquo; </a>
                </div>
                <br>
				<div class="row">
					<section class="3u"> 
						<a href="#" class="image full"><img src="images/poster.jpg" alt=""></a>
						<p style="font-size:20px;">ประชาสัมพันธ์การเข้าระบบเพื่อตอบแบบสอบถามออนไลน์ของเครื่องมือการวิจัย เรื่อง “สถานการณ์และระบบ การผลิตบัณฑิตระดับปริญญาตรีของมหาวิทยาลัยแม่ฟ้าหลวง”....</p><footer class="read-more"><a href="#">Read More &raquo;</a></footer>
					</section>
					<section class="3u">
						<a href="#" class="image full"><img src="images/pics02.jpg" alt=""></a>
						<p style="font-size:20px;">Vestibulum imperdiet, magna nec eleifend rutrum. Duis enim nulla, luctus eu, dapibus lacinia quam. </p>
					</section>
					<section class="3u">
						<a href="#" class="image full"><img src="images/pics03.jpg" alt=""></a>
						<p style="font-size:20px;">Nulla enim eros, porttitor eu, tempus varius non, nibh. Duis enim nulla, luctus eu, dapibus lacinia, venenatis quam.</p>
					</section>
					<section class="3u">
						<a href="#" class="image full"><img src="images/pics04.jpg" alt=""></a>
						<p style="font-size:20px;">Duis enim nulla, luctus eu, dapibus lacinia, venenatis id, quam. Vestibulum imperdiet, magna nec eleifend rutrum.</p>
					</section>
				</div>			
			</div>
            <br>    
            <div class="container">                
                <div id="header" style="font-size:28px;">
                    <span>Recent Files: Useful Documents for Faculty Staff </span>
                </div>
                <br>
				<span>
                    <a class="12u" style="font-size:20px;"> <img src="images/pdf.png" style="width:20px; hieght:auto;"/>
                        <a href="#" >สรุปผลการดำเนินงาน Hllc 2015.pdf </a> 
                    </a>
                    <small style="font-size:18px; color:#999;">Update : 3 มิ.ย. 2559 10:15 โดย Academic Extension and Development Office MFU</small>
                    <img src="images/new.gif"/>
                </span>
                <br>
				<span>
                    <a class="12u" style="font-size:20px;"> <img src="images/MWord.png" style="width:20px; hieght:auto;"/>
                        <a href="#" >ความคิดเห็นภาพรวมทุกสำนักวิชา.docx</a> 
                    </a>
                    <small style="font-size:18px; color:#999;">Update : 3 มิ.ย. 2559 10:15 โดย Academic Extension and Development Office MFU</small>
                </span>
                <br>
				<span>
                    <a class="12u" style="font-size:20px;"> <img src="images/MWord.png" style="width:20px; hieght:auto;"/>
                        <a href="#" >รายงานผลการอบรม เรื่อง “ครูสนุก เด็กสนุก หากรู้จัก Learning Style” 2.docx</a> 
                    </a>
                    <small style="font-size:18px; color:#999;">Update : 3 มิ.ย. 2559 10:15 โดย Academic Extension and Development Office MFU</small>
                </span>
                <br>
				<span>
                    <a class="12u" style="font-size:20px;"> <img src="images/pdf.png" style="width:20px; hieght:auto;"/>
                        <a href="#" >รายงานผลการอบรมเชิงปฎิบัติการ ประจำปีงบประมาณ ๒๕๕๙ “วัดและประเมิณผล”.pdf </a> 
                    </a>
                    <small style="font-size:18px; color:#999;">Update : 3 มิ.ย. 2559 10:15 โดย Academic Extension and Development Office MFU</small>
                    <img src="images/new.gif"/>
                </span>
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
</html></html>