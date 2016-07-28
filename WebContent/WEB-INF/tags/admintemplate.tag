<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true" rtexprvalue="true"%>
<%@ attribute name="dashboard" required="false" rtexprvalue="true"%>
<%@ attribute name="allnews" required="false" rtexprvalue="true"%>
<%@ attribute name="allfile" required="false" rtexprvalue="true"%>
<%@ attribute name="allgallery" required="false" rtexprvalue="true"%>
<%@ attribute name="allstaff" required="false" rtexprvalue="true"%>
<%@ attribute name="registration" required="false" rtexprvalue="true"%>
<%@ attribute name="newproject" required="false" rtexprvalue="true"%>
<%@ attribute name="allproject" required="false" rtexprvalue="true"%>
<%@ attribute name="alltraining" required="false" rtexprvalue="true"%>
<%@ attribute name="allruleteacher" required="false" rtexprvalue="true"%>
<%@ attribute name="ingallery" required="false" rtexprvalue="true"%>
<%@ attribute name="allsar" required="false" rtexprvalue="true"%>
<%@ attribute name="allevent" required="false" rtexprvalue="true"%>
<%@ attribute name="content" fragment="true" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>${title}</title>
        <!-- Global stylesheets -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
        <link href="assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
        <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="assets/css/core.css" rel="stylesheet" type="text/css">
        <link href="assets/css/components.css" rel="stylesheet" type="text/css">
        <link href="assets/css/colors.css" rel="stylesheet" type="text/css">
        <!-- /global stylesheets -->
        <!-- Core JS files -->
        <script type="text/javascript" src="assets/js/plugins/loaders/pace.min.js"></script>
        <script type="text/javascript" src="assets/js/core/libraries/jquery.min.js"></script>
        <script type="text/javascript" src="assets/js/core/libraries/bootstrap.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/loaders/blockui.min.js"></script>
        <!-- /core JS files -->
        <!-- /global stylesheets -->
<link href="froala_editor_2.3.4/css/froala_editor.min.css"
	rel="stylesheet" type="text/css" />
<link href="froala_editor_2.3.4/css/froala_style.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Include Code Mirror style -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css">

<!-- Include Editor Plugins style. -->
<link rel="stylesheet"
	href="froala_editor_2.3.4/css/plugins/char_counter.css">
<link rel="stylesheet"
	href="froala_editor_2.3.4/css/plugins/code_view.css">
<link rel="stylesheet" href="froala_editor_2.3.4/css/plugins/colors.css">
<link rel="stylesheet"
	href="froala_editor_2.3.4/css/plugins/emoticons.css">
<link rel="stylesheet" href="froala_editor_2.3.4/css/plugins/file.css">
<link rel="stylesheet"
	href="froala_editor_2.3.4/css/plugins/fullscreen.css">
<link rel="stylesheet" href="froala_editor_2.3.4/css/plugins/image.css">
<link rel="stylesheet"
	href="froala_editor_2.3.4/css/plugins/image_manager.css">
<link rel="stylesheet"
	href="froala_editor_2.3.4/css/plugins/line_breaker.css">
<link rel="stylesheet"
	href="froala_editor_2.3.4/css/plugins/quick_insert.css">
<link rel="stylesheet" href="froala_editor_2.3.4/css/plugins/table.css">
<link rel="stylesheet" href="froala_editor_2.3.4/css/plugins/video.css">
<link rel="stylesheet"
	href="froala_editor_2.3.4/css/plugins/fullscreen.css">
        <!-- Theme JS files -->
       
        <script type="text/javascript" src="assets/js/plugins/uploaders/fileinput.min.js"></script>         
        <script type="text/javascript" src="assets/js/plugins/tables/datatables/datatables.min.js"></script>  
        <script type="text/javascript" src="assets/js/plugins/forms/selects/select2.min.js"></script>
        <script type="text/javascript" src="assets/js/pages/datatables_basic.js"></script> 
	    <script type="text/javascript" src="assets/js/pages/uploader_bootstrap.js"></script>
	    <script type="text/javascript" src="assets/js/plugins/media/fancybox.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/visualization/d3/d3.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/styling/switchery.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/styling/uniform.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
        <script type="text/javascript" src="assets/js/plugins/ui/moment/moment.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/pickers/daterangepicker.js"></script>
        <script type="text/javascript" src="assets/js/core/app.js"></script>
        <script type="text/javascript" src="assets/js/pages/dashboard.js"></script>
         <script type="text/javascript" src="assets/js/pages/gallery_library.js"></script>
        
        <!-- /theme JS files -->
    </head>
    <body>
        <!-- Main navbar -->
        <div class="navbar navbar-default header-highlight">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">
                    <img src="assets/images/logo.png" />
                </a>
                <ul class="nav navbar-nav visible-xs-block">
                    <li>
                        <a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a>
                    </li>
                    <li>
                        <a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a>
                    </li>
                </ul>
            </div>
            <div class="navbar-collapse collapse" id="navbar-mobile">
                <ul class="nav navbar-nav">
                    <li>
                        <a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown dropdown-user">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                            <img src="assets/images/placeholder.jpg" alt="">
                            <span>Victoria</span>
                            <i class="caret"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li>
                                <a href="#"><i class="icon-user-plus"></i>โปรไฟล์</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#"><i class="icon-cog5"></i>ตั้งค่าโปรไฟล์</a>
                            </li>
                            <li>
                                <a href="login.jsp"><i class="icon-switch2"></i> ลงชื่อออก</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /main navbar -->
        <!-- Page container -->
        <div class="page-container">
            <!-- Page content -->
            <div class="page-content">
                <!-- Main sidebar -->
                <div class="sidebar sidebar-main">
                    <div class="sidebar-content">
                        <!-- User menu -->
                        <div class="sidebar-user">
                            <div class="category-content">
                                <div class="media">
                                    <a href="#" class="media-left">
                                        <img src="assets/images/placeholder.jpg" class="img-circle img-sm" alt="">
                                    </a>
                                    <div class="media-body">
                                        <span class="media-heading text-semibold">Victoria Baker</span>
                                        <div class="text-size-mini text-muted">
                                            Admin
                                        </div>
                                    </div>
                                    <div class="media-right media-middle">
                                        <ul class="icons-list">
                                            <li>
                                                <a href="#"></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /user menu -->
                        <!-- Main navigation -->
                        <div class="sidebar-category sidebar-category-visible">
                            <div class="category-content no-padding">
                                <ul class="navigation navigation-main navigation-accordion">
                                    <!-- Main -->
                                    <li class="navigation-header">
                                        <span>เมนูหลัก</span> 
                                        <i class="icon-menu" title="เมนูหลัก"></i>
                                    </li>
                                    <li class="${dashboard}">
                                        <a href="index.jsp"><i class="icon-home4"></i> <span>Dashboard</span></a>
                                    </li>
                                                <li>
                                        <a href="#"><i class="icon-magazine"></i><span> บทความ</span></a>
                                        <ul>
                                            <li class="${allnews }">
                                                <a href="AllNews?type=ข่าวสาร"><i class="icon-newspaper"></i>ดูข่าวสารทั้งหมด</a>
                                            </li>
                                             <li class="${allevent }">
                                                <a href="AllEvents?type=กิจกรรม"><i class="icon-accessibility"></i>ดูกิจกรรมทั้งหมด</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon-file-text"></i> <span> ไฟล์</span></a>
                                        <ul>
                                            <li>
                                                <a href="#fileModal" data-toggle="modal"><i class=" icon-file-plus"></i>เพิ่มไฟล์</a>
                                            </li>
                                            <li>
                                            
                                             <li class="${allfile }">
                                                <a href="allfile.jsp"><i class="icon-files-empty"></i>ดูไฟล์ทั้งหมด</a>
                                            </li>
                                            </li>
                                            
                                        </ul>
                                    </li>
                                      <li>
                                        <a href="#"><i class="icon-archive"></i> <span>โครงการทุน</span></a>
                                        <ul>
                                          <li class="${newproject }">
                                                <a href="newproject.jsp"><i class=" icon-file-plus"></i>เพิ่มโครงการใหม่</a>
                                            </li>
                                             <li class="${allproject }">
                                                <a href="allproject.jsp"><i class="icon-files-empty"></i>ดูโครงการทั้งหมด</a>
                                            </li>
                                        </ul>
                                    </li>
                                     <li>
                                        <a href="#"><i class="icon-books"></i> <span>โครงการอบรม</span></a>
                                        <ul>
                                            
                                             <li class="${alltraining }">
                                                <a href="alltraining.jsp"><i class="icon-files-empty"></i>ดูโครงการทั้งหมด</a>
                                            </li>
                                        </ul>
                                    </li>
                                           <li>
                                        <a href="#"><i class="icon-lan2"></i> <span>ระเบียบอาจารย์</span></a>
                                        <ul>
                                           <li class="${allruleteacher}">
                                                <a href="allruleteacher.jsp"><i class="icon-files-empty"></i>ดูระเบียบอาจารย์ทั้งหมด</a>
                                            </li>
                                        </ul>
                                    </li>
                                 <li>
                                        <a href="#"><i class="icon-pencil-ruler"></i> <span>ห้องเรียน</span></a>
                                        <ul>
                                            <li>
                                                <a href="#fileModal" data-toggle="modal"><i class=" icon-file-plus"></i>เพิ่มโครงการใหม่</a>
                                            </li>
                                          <li class="${allfile }">
                                                <a href="allfile.jsp"><i class="icon-files-empty"></i>ดูโครงการทั้งหมด</a>
                                            </li>
                                           <li class="${km }">
                                                <a href="allfile.jsp"><i class="icon-files-empty"></i>Knowledge Managment</a>
                                            </li>
                                        </ul>
                                    </li>
                                           <li>
                                        <a href="#"><i class="icon-books"></i> <span>ข้อมูล SAR</span></a>
                                        <ul>
                                             <li class="${allsar }">
                                                <a href="allsar.jsp"><i class="icon-files-empty"></i>ดูโครงการทั้งหมด</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon-images2"></i> <span>อัลบั้ม </span></a>
                                        <ul>
                                            <li class="${allgallery }">
                                                <a href="allgallery.jsp"><i class="icon-images3"></i>AEDO อัลบั้ม</a>
                                            </li>
                                            
                                            <li class="${allhllcgallery }">
                                                <a href="allgallery.jsp"><i class="icon-images3"></i>HLLC อัลบั้ม</a>
                                            </li>
                                            
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#"><i class="glyphicon glyphicon-user"></i> <span>จัดการพนักงาน</span></a>
                                        <ul>
                                             <li class="${registration }">
                                                <a href="registration.jsp"><i class="icon-user-plus"></i>เพิ่มพนักงาน</a>
                                            </li>
                                            <li class="${allstaff }">
                                                <a href="allstaff.jsp"><i class="icon-users2"></i>ดูพนักงานทั้งหมด</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <!-- /page kits -->
                                </ul>
                            </div>
                        </div>
                        <!-- /main navigation -->
                    </div>
                </div>
                <!-- /main sidebar -->
                <!-- Main content -->
                <div class="content-wrapper">
                    <!-- Content area -->
                    <div class="content">
                        <br>
                        <br>
                        <div class="row">
                        
                        <jsp:invoke fragment="content"></jsp:invoke>
                        
                        
                        
                        <!-- Footer -->
                        <div class="footer text-muted">
                            &copy; 2015. 
                            <a href="#">Limitless Web App Kit</a> by 
                            <a href="http://themeforest.net/user/Kopyov" target="_blank">Eugene Kopyov</a>
                        </div>
                        <!-- /footer -->
                    </div>
                    <!-- /content area -->
                </div>
                <!-- /main content -->
            </div>
            <!-- /page content -->
        </div>
        <!-- /page container -->
        
        
                                                        
        
         
        
        <!--New Video -->
           <div class="modal fade" id="newvideo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">New Video</h4>
                                            </div>
                                            
                                            
                                            <br>    
                                            <div class="form-group">
									<label class="col-lg-2 control-label text-semibold">Select Video:</label>
									<div class="col-lg-10">
										<input type="file" class="file-input"data-browse-class="btn btn-primary" data-remove-class="btn btn-default" accept="image/*, video/*">
										
									</div>
								</div>
                                            <div class="modal-footer">
</div>
                                        </div>
                                    </div>
                                </div>
        <!--file New Video -->
                  <!--File Modal -->
                                <div class="modal fade" id="fileModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">เพิ่มไฟล์</h4>
                                            </div>
                                            <br> 
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label text-semibold">เลือกไฟล์:</label>
                                                <div class="col-lg-10">
                                                    <input type="file" class="file-input">
                                                </div>
                                            </div>
                                            <div class="modal-footer">
</div>
                                        </div>
                                    </div>
                                </div>
                                <!--file Modal -->           
        
        
        
        
        
        
        
    </body>
</html>
