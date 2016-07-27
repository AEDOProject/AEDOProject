<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true" rtexprvalue="true"%>
<%@ attribute name="content" fragment="true"%>
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
        <!-- Theme JS files -->
        
        
        
       
        
        
        
        
        
        <script type="text/javascript" src="assets/js/plugins/uploaders/fileinput.min.js"></script>

	
	  <script type="text/javascript" src="assets/js/pages/uploader_bootstrap.js"></script>
        <script type="text/javascript" src="assets/js/plugins/visualization/d3/d3.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/styling/switchery.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/styling/uniform.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
        <script type="text/javascript" src="assets/js/plugins/ui/moment/moment.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/pickers/daterangepicker.js"></script>
        <script type="text/javascript" src="assets/js/core/app.js"></script>
        <script type="text/javascript" src="assets/js/pages/dashboard.js"></script>
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
                    <li class="dropdown">
                        <div class="dropdown-menu dropdown-content">
                            <div class="dropdown-content-heading">
                                Git updates
                                <ul class="icons-list">
                                    <li>
                                        <a href="#"><i class="icon-sync"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <ul class="media-list dropdown-content-body width-350">
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#" class="btn border-primary text-primary btn-flat btn-rounded btn-icon btn-sm"><i class="icon-git-pull-request"></i></a>
                                    </div>
                                    <div class="media-body">
                                        Drop the IE 
                                        <a href="#">specific hacks</a> for temporal inputs
                                        <div class="media-annotation">4 minutes ago</div>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#" class="btn border-warning text-warning btn-flat btn-rounded btn-icon btn-sm"><i class="icon-git-commit"></i></a>
                                    </div>
                                    <div class="media-body">
                                        Add full font overrides for popovers and tooltips
                                        <div class="media-annotation">36 minutes ago</div>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#" class="btn border-info text-info btn-flat btn-rounded btn-icon btn-sm"><i class="icon-git-branch"></i></a>
                                    </div>
                                    <div class="media-body">
                                        <a href="#">Chris Arney</a> created a new 
                                        <span class="text-semibold">Design</span> branch
                                        <div class="media-annotation">2 hours ago</div>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#" class="btn border-success text-success btn-flat btn-rounded btn-icon btn-sm"><i class="icon-git-merge"></i></a>
                                    </div>
                                    <div class="media-body">
                                        <a href="#">Eugene Kopyov</a> merged 
                                        <span class="text-semibold">Master</span> and 
                                        <span class="text-semibold">Dev</span> branches
                                        <div class="media-annotation">Dec 18, 18:36</div>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#" class="btn border-primary text-primary btn-flat btn-rounded btn-icon btn-sm"><i class="icon-git-pull-request"></i></a>
                                    </div>
                                    <div class="media-body">
                                        Have Carousel ignore keyboard events
                                        <div class="media-annotation">Dec 12, 05:46</div>
                                    </div>
                                </li>
                            </ul>
                            <div class="dropdown-content-footer">
                                <a href="#" data-popup="tooltip" title="All activity"><i class="icon-menu display-block"></i></a>
                            </div>
                        </div>
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
                                <a href="#"><i class="icon-user-plus"></i> My profile</a>
                            </li>
                            <li>
</li>
                            <li>
</li>
                            <li class="divider"></li>
                            <li>
                                <a href="#"><i class="icon-cog5"></i> Account settings</a>
                            </li>
                            <li>
                                <a href="login_simple.jsp"><i class="icon-switch2"></i> Logout</a>
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
                                        <span>Main mENU</span> 
                                        <i class="icon-menu" title="Main Menu"></i>
                                    </li>
                                    <li class="active">
                                        <a href="index.jsp"><i class="icon-home4"></i> <span>Dashboard</span></a>
                                    </li>
                                                <li>
                                        <a href="#"><i class="icon-newspaper"></i><span> ข่าวสารกิจกรรม</span></a>
                                        <ul>
                                            <li>
                                                <a href="#newsevents" data-toggle="modal"><i class=" icon-file-plus"></i>New News/Events</a>
                                            </li>
                                            <li>
                                                <a href="allnewsandevent.jsp"><i class="icon-files-empty"></i>All News/Events</a>
                                            </li>
                                             <li>
                                                <a href="newseventsdraft.jsp"><i class="icon-pencil7"></i>Draft <span class="badge bg-warning-400">9</span></a>
                                            </li>
                                            
                                            <li>
</li>
                                            <li>
</li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#"><i class="icon-file-text"></i> <span> File</span></a>
                                        <ul>
                                            <li>
                                                <a href="#fileModal" data-toggle="modal"><i class=" icon-file-plus"></i>New File</a>
                                            </li>
                                            <li>
                                                <a href="allfile.jsp"><i class="icon-files-empty"></i>All File</a>
                                            </li>
                                            

                                        </ul>
                                    </li>
                                      <li>
                                        <a href="#"><i class="icon-archive"></i> <span>โครงการทุน</span></a>
                                        <ul>
                                            <li>
                                                <a href="#fileModal" data-toggle="modal"><i class=" icon-file-plus"></i>เพิ่มโครงการใหม่</a>
                                            </li>
                                            <li>
                                                <a href="allfile.jsp"><i class="icon-files-empty"></i>ดูโครงการทั้งหมด</a>
                                            </li>
                                            
                                            
                                        </ul>
                                    </li>
                                     <li>
                                        <a href="#"><i class="icon-books"></i> <span>โครงการอบรม</span></a>
                                        <ul>
                                            <li>
                                                <a href="#fileModal" data-toggle="modal"><i class=" icon-file-plus"></i>เพิ่มโครงการใหม่</a>
                                            </li>
                                            <li>
                                                <a href="allfile.jsp"><i class="icon-files-empty"></i>ดูโครงการทั้งหมด</a>
                                            </li>
                                             <li>
                                                <a href="allfile.jsp"><i class="icon-files-empty"></i>Knowledge Managment</a>
                                            </li>
                                            
                                            
                                        </ul>
                                    </li>
                          

                                    <!-- /main -->
                                    <!-- Forms -->
                                    <li>
                                        <a href="#"><i class="icon-images2"></i> <span>Gallery </span></a>
                                        <ul>
                                           
                                            <li>
                                                <a href="allgallery.jsp"><i class="icon-images3"></i>AEDO Albums</a>
                                            </li>
                                             <li>
                                                <a href="allgallery.jsp"><i class="icon-images3"></i>HLLC Albums</a>
                                            </li>
                                          
                                            
                                        </ul>
                                    </li>
                               
                                    <li>
                                        <a href="#"><i class="glyphicon glyphicon-user"></i> <span>Manage Staff</span></a>
                                        <ul>
                                            <li>
                                                <a href="registration.jsp"><i class="icon-user-plus"></i>Add Staff</a>
                                        
                                            </li>
                                            <li>
                                                <a href="allstaff.jsp"><i class="icon-users2"></i>All Staff</a>
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
        
        
                                                          <!--Gallery Modal -->
           <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">New Albums</h4>
                                            </div>
                                            
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <div class="col-lg-13">
                                        
                                                            <input class="form-control" type="text" placeholder="Name">
                                                        
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
										<div class="col-lg-13">
											<textarea class="form-control" placeholder="Description" rows="5" cols="5"></textarea>
										</div>
									</div>
                                                   <span class="input-group-btn"><button class="btn btn-primary" type="button">Submit</button></span>
                                            </div>
                                            <div class="modal-footer">
</div>
                                        </div>
                                    </div>
                                </div>
        <!--Gallery Modal -->
        
         
        
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
        
        
         <!--News/Events Modal -->
                                <div class="modal fade" id="newsevents" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">New File</h4>
                                            </div>
                                            <br> 
                                            <div class="form-group">
                                                <div class="col-lg-12 ">
                                                    <div class="input-group">
                                                        <input class="form-control" type="text" placeholder="name">
                                                        <span class="input-group-btn"><a href="newfile.jsp">
                                                                <button class="btn btn-primary" type="button">Submit</button>
                                                            </a> </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
</div>
                                        </div>
                                    </div>
                                </div>
                                <!--News/Events Modal -->     
        
        
        
        
        
    </body>
</html>