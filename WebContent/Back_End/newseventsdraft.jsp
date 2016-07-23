<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en"> 
    <head> 
        <meta charset="utf-8"> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <title>Limitless - Responsive Web Application Kit by Eugene Kopyov</title>         
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
        <script type="text/javascript" src="assets/js/plugins/tables/datatables/datatables.min.js"></script>         
        <script type="text/javascript" src="assets/js/plugins/forms/selects/select2.min.js"></script>         
        <script type="text/javascript" src="assets/js/core/app.js"></script>         
        <script type="text/javascript" src="assets/js/pages/datatables_basic.js"></script>         
        <script type="text/javascript" src="assets/js/pages/uploader_bootstrap.js"></script>         
        <script type="text/javascript" src="assets/js/plugins/media/fancybox.min.js"></script>         
        <script type="text/javascript" src="assets/js/plugins/forms/styling/uniform.min.js"></script>         
        <script type="text/javascript" src="assets/js/plugins/forms/selects/select2.min.js"></script>         
        <script type="text/javascript" src="assets/js/plugins/tables/datatables/datatables.min.js"></script>         
        <script type="text/javascript" src="assets/js/pages/gallery_library.js"></script>         
        <!-- /theme JS files -->         
    </head>     
    <body> 
        <!-- Main navbar -->         
        <div class="navbar navbar-default header-highlight"> 
            <div class="navbar-header"> 
                <a class="navbar-brand" href="index.html"> 
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
                                <a href="login_simple.html"><i class="icon-switch2"></i> Logout</a> 
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
                                        <a href="index.html"><i class="icon-home4"></i> <span>Dashboard</span></a> 
                                    </li>                                     
                                    <li> 
                                        <a href="#"><i class="icon-file-text"></i> <span> File</span></a> 
                                        <ul> 
                                            <li> 
                                                <a href="#"><i class=" icon-file-plus"></i>New File</a> 
                                            </li>                                             
                                            <li> 
                                                <a href="#"><i class="icon-files-empty"></i>All File</a> 
                                            </li>                                             
                                            <li> 
                                                <a href="#"><i class=" icon-file-text2"></i><span class="badge bg-warning-400">9</span> Draft </a> 
                                            </li>                                             
                                            <li> 
                                                <ul> 
</ul>                                                 
                                            </li>                                             
                                            <li> 
                                                <a href="#"><i class="icon-bin"></i>Bin</a> 
                                            </li>                                             
                                            <li> 
</li>                                             
                                            <li> 
</li>                                             
                                        </ul>                                         
                                    </li>                                     
                                    <li> 
</li>                                     
                                    <li> 
</li>                                     
                                    <!-- /main -->                                     
                                    <!-- Forms -->                                     
                                    <li> 
                                        <a href="#"><i class="icon-images2"></i> <span>Gallery</span></a> 
                                        <ul> 
                                            <li> 
                                                <a href="#"><i class="icon-plus3"></i>New Albums</a> 
                                            </li>                                             
                                            <li> 
                                                <a href="#"><i class="icon-images3"></i>All Albums</a> 
                                            </li>                                             
                                            <li> 
</li>                                             
                                            <li> 
</li>                                             
                                            <li> 
                                                <ul> 
</ul>                                                 
                                            </li>                                             
                                            <li> 
</li>                                             
                                            <li> 
</li>                                             
                                            <li> 
</li>                                             
                                            <li> 
</li>                                             
                                            <li> 
                                                <a href="#"><i class="icon-bin"></i>Bin</a> 
                                            </li>                                             
                                        </ul>                                         
                                    </li>                                     
                                    <li> 
                                        <a href="#"><i class="icon-film2"></i> <span>Video</span></a> 
                                        <ul> 
                                            <li> 
                                                <a href="#"><i class="icon-plus3"></i>New Video</a> 
                                            </li>                                             
                                            <li> 
                                                <a href="#"><i class="icon-video-camera"></i>All Video</a> 
                                            </li>                                             
                                            <li> 
                                                <a href="#"><i class="icon-bin"></i>Bin</a> 
                                            </li>                                             
                                        </ul>                                         
                                    </li>                                     
                                    <li> 
                                        <a href="#"><i class="glyphicon glyphicon-user"></i> <span>Manage Staff</span></a> 
                                        <ul> 
                                            <li> 
                                                <a href="#"><i class="icon-user-plus"></i>Add Staff</a> 
                                                <ul> 
                                                    <li> 
                                                        <a href="registration.html">Admins</a> 
                                                    </li>                                                     
                                                    <li> 
                                                        <a href="registration.html">AEDO Staff</a> 
                                                    </li>                                                     
                                                    <li> 
                                                        <a href="registration.html">HLLC Staff</a> 
                                                    </li>                                                     
                                                </ul>                                                 
                                            </li>                                             
                                            <li> 
                                                <a href="allstaff.html"><i class="icon-users2"></i>All Staff</a> 
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
                        <!-- Basic datatable -->                         
                        <div class="panel panel-flat"> 
                            <div class="panel-heading"> 
                                <h5 class="panel-title"> <i class="icon-files-empty2"></i> File Draft</h5> 
                                <div class="heading-elements"> 
                                    <ul class="icons-list"> 
                                        <li>
                                            <a data-action="reload"></a>
                                        </li>                                         
                                    </ul>                                     
                                </div>                                 
                            </div>                             
                            <table class="table datatable-basic"> 
                                <thead> 
                                    <tr> 
                                        <th>No.</th> 
                                        <th>Cover Photo</th> 
                                        <th>Name</th> 
                                        <th>date and time</th> 
                                        <th>Type</th> 
                                        <th>Size</th> 
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody> 
                                    <tr> 
                                        <td>1</td> 
                                        <td> 
                                            <a href="assets/images/placeholder.jpg" data-popup="lightbox"> 
                                                <img src="assets/images/placeholder.jpg" alt="" class="img-rounded img-preview"> 
                                            </a>
                                        </td>                                         
                                        <td>
                                            <a href="#">Marth</a>
                                        </td>                                         
                                        <td>12.00-10-12-2015</td> 
                                        <td>.world</td> 
                                        <td>13kb</td> 
                                        <td class="text-center"> 
                                            <ul class="icons-list"> 
                                                <li class="dropdown"> 
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-menu9"></i> </a> 
                                                    <ul class="dropdown-menu dropdown-menu-right"> 
                                                        <li>
                                                            <a href="#">View</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#">Edit</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#">Delete</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#">Download</a>
                                                        </li>                                                         
                                                    </ul>                                                     
                                                </li>                                                 
                                            </ul>                                             
                                        </td>                                         
                                    </tr>                                     
                                </tbody>                                 
                            </table>                             
                        </div>                         
                        <!-- /basic datatable -->                         
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
    </body>     
</html>
