<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mfu.entity.*,com.mfu.dao.*,java.util.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Limitless - Responsive Web Application Kit by Eugene
	Kopyov</title>
<!-- Global stylesheets -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900"
	rel="stylesheet" type="text/css">
<link href="assets/css/icons/icomoon/styles.css" rel="stylesheet"
	type="text/css">
<link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="assets/css/core.css" rel="stylesheet" type="text/css">
<link href="assets/css/components.css" rel="stylesheet" type="text/css">
<link href="assets/css/colors.css" rel="stylesheet" type="text/css">
<!-- /global stylesheets -->
<!-- Core JS files -->
<script type="text/javascript"
	src="assets/js/plugins/loaders/pace.min.js"></script>
<script type="text/javascript"
	src="assets/js/core/libraries/jquery.min.js"></script>
<script type="text/javascript"
	src="assets/js/core/libraries/bootstrap.min.js"></script>
<script type="text/javascript"
	src="assets/js/plugins/loaders/blockui.min.js"></script>
<!-- /core JS files -->
<!-- Theme JS files -->
<script type="text/javascript"
	src="assets/js/plugins/forms/styling/uniform.min.js"></script>
<script type="text/javascript" src="assets/js/core/app.js"></script>
<script type="text/javascript" src="assets/js/pages/login.js"></script>
<script type="text/javascript"
	src="assets/js/plugins/uploaders/fileinput.min.js"></script>
	<script type="text/javascript" src="assets/js/pages/uploader_bootstrap.js"></script>
	<script type="text/javascript" src="assets/js/plugins/media/fancybox.min.js"></script>
<!-- /theme JS files -->
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link href="froala_editor_2.3.4/css/froala_editor.min.css"
	rel="stylesheet" type="text/css" />
<link href="froala_editor_2.3.4/css/froala_style.min.css"
	rel="stylesheet" type="text/css" />

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

<style>
body {
	
}

div#editor {
	width: 100%;
	margin: auto;
	text-align: left;
}

.ss {
	background-color: red;
}
</style>
</head>
<body>
	<!-- Main navbar -->
	<div class="navbar navbar-default header-highlight">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.html"> <img
				src="assets/images/logo.png" />
			</a>
			<ul class="nav navbar-nav visible-xs-block">
				<li><a data-toggle="collapse" data-target="#navbar-mobile"><i
						class="icon-tree5"></i></a></li>
				<li><a class="sidebar-mobile-main-toggle"><i
						class="icon-paragraph-justify3"></i></a></li>
			</ul>
		</div>
		<div class="navbar-collapse collapse" id="navbar-mobile">
			<ul class="nav navbar-nav">
				<li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i
						class="icon-paragraph-justify3"></i></a></li>
				<li class="dropdown">
					<div class="dropdown-menu dropdown-content">
						<div class="dropdown-content-heading">
							Git updates
							<ul class="icons-list">
								<li><a href="#"><i class="icon-sync"></i></a></li>
							</ul>
						</div>
						<ul class="media-list dropdown-content-body width-350">
							<li class="media">
								<div class="media-left">
									<a href="#"
										class="btn border-primary text-primary btn-flat btn-rounded btn-icon btn-sm"><i
										class="icon-git-pull-request"></i></a>
								</div>
								<div class="media-body">
									Drop the IE <a href="#">specific hacks</a> for temporal inputs
									<div class="media-annotation">4 minutes ago</div>
								</div>
							</li>
							<li class="media">
								<div class="media-left">
									<a href="#"
										class="btn border-warning text-warning btn-flat btn-rounded btn-icon btn-sm"><i
										class="icon-git-commit"></i></a>
								</div>
								<div class="media-body">
									Add full font overrides for popovers and tooltips
									<div class="media-annotation">36 minutes ago</div>
								</div>
							</li>
							<li class="media">
								<div class="media-left">
									<a href="#"
										class="btn border-info text-info btn-flat btn-rounded btn-icon btn-sm"><i
										class="icon-git-branch"></i></a>
								</div>
								<div class="media-body">
									<a href="#">Chris Arney</a> created a new <span
										class="text-semibold">Design</span> branch
									<div class="media-annotation">2 hours ago</div>
								</div>
							</li>
							<li class="media">
								<div class="media-left">
									<a href="#"
										class="btn border-success text-success btn-flat btn-rounded btn-icon btn-sm"><i
										class="icon-git-merge"></i></a>
								</div>
								<div class="media-body">
									<a href="#">Eugene Kopyov</a> merged <span
										class="text-semibold">Master</span> and <span
										class="text-semibold">Dev</span> branches
									<div class="media-annotation">Dec 18, 18:36</div>
								</div>
							</li>
							<li class="media">
								<div class="media-left">
									<a href="#"
										class="btn border-primary text-primary btn-flat btn-rounded btn-icon btn-sm"><i
										class="icon-git-pull-request"></i></a>
								</div>
								<div class="media-body">
									Have Carousel ignore keyboard events
									<div class="media-annotation">Dec 12, 05:46</div>
								</div>
							</li>
						</ul>
						<div class="dropdown-content-footer">
							<a href="#" data-popup="tooltip" title="All activity"><i
								class="icon-menu display-block"></i></a>
						</div>
					</div>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown dropdown-user"><a class="dropdown-toggle"
					data-toggle="dropdown"> <img
						src="assets/images/placeholder.jpg" alt=""> <span>Victoria</span>
						<i class="caret"></i>
				</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="#"><i class="icon-user-plus"></i> My profile</a>
						</li>
						<li></li>
						<li></li>
						<li class="divider"></li>
						<li><a href="#"><i class="icon-cog5"></i> Account
								settings</a></li>
						<li><a href="login_simple.html"><i class="icon-switch2"></i>
								Logout</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<!-- /main navbar -->
	<!-- Page container -->
	<div class="page-container">
	<form action="/AEDOProjects/addArticle" method="post" enctype="multipart/form-data">
		<!-- Page content -->
		<div class="page-content">
			<!-- Main sidebar -->
			<div class="sidebar sidebar-main">
				<div class="sidebar-content">
					<!-- User menu -->
					<div class="sidebar-user">
						<div class="category-content">
							<div class="media">
								<a href="#" class="media-left"> <img
									src="assets/images/placeholder.jpg" class="img-circle img-sm"
									alt="">
								</a>
								<div class="media-body">
									<span class="media-heading text-semibold">Victoria Baker</span>
									<div class="text-size-mini text-muted">Admin</div>
								</div>
								<div class="media-right media-middle">
									<ul class="icons-list">
										<li><a href="#"></a></li>
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
								<li class="navigation-header"><span>Main mENU</span> <i
									class="icon-menu" title="Main Menu"></i></li>
								<li class="active"><a href="index.html"><i
										class="icon-home4"></i> <span>Dashboard</span></a></li>
								<li><a href="#"><i class="icon-file-text"></i> <span>
											File</span></a>
									<ul>
										<li><a href="#"><i class=" icon-file-plus"></i>New
												File</a></li>
										<li><a href="#"><i class="icon-files-empty"></i>All
												File</a></li>
										<li><a href="#"><i class=" icon-file-text2"></i><span
												class="badge bg-warning-400">9</span> Draft </a></li>
										<li>
											<ul>
											</ul>
										</li>
										<li><a href="#"><i class="icon-bin"></i>Bin</a></li>
										<li></li>
										<li></li>
									</ul></li>
								<li></li>
								<li></li>
								<!-- /main -->
								<!-- Forms -->
								<li><a href="#"><i class="icon-images2"></i> <span>Gallery</span></a>
									<ul>
										<li><a href="#"><i class="icon-plus3"></i>New Albums</a>
										</li>
										<li><a href="#"><i class="icon-images3"></i>All
												Albums</a></li>
										<li></li>
										<li></li>
										<li>
											<ul>
											</ul>
										</li>
										<li></li>
										<li></li>
										<li></li>
										<li></li>
										<li><a href="#"><i class="icon-bin"></i>Bin</a></li>
									</ul></li>
								<li><a href="#"><i class="icon-film2"></i> <span>Video</span></a>
									<ul>
										<li><a href="#"><i class="icon-plus3"></i>New Video</a></li>
										<li><a href="#"><i class="icon-video-camera"></i>All
												Video</a></li>
										<li><a href="#"><i class="icon-bin"></i>Bin</a></li>
									</ul></li>
								<li><a href="#"><i class="glyphicon glyphicon-user"></i>
										<span>Manage Staff</span></a>
									<ul>
										<li><a href="#"><i class="icon-user-plus"></i>Add
												Staff</a>
											<ul>
												<li><a href="registration.html">Admins</a></li>
												<li><a href="registration.html">AEDO Staff</a></li>
												<li><a href="registration.html">HLLC Staff</a></li>
											</ul></li>
										<li><a href="allstaff.html"><i class="icon-users2"></i>All
												Staff</a></li>
									</ul></li>
								<!-- /page kits -->
							</ul>
						</div>
					</div>
					<!-- /main navigation -->
				</div>
			</div>
			<!-- Main navbar -->
			<!-- /main navbar -->
			<!-- Page container -->
			<!-- Page header -->

			<%
				String title = "เอกสารไม่มีชื่อ";
				try{
				title = request.getParameter("title");
				if(title.equals("") || title.isEmpty()){
					title = "Untitled Article";
				}
				}catch(Exception e){
				}
				String titleen = new String(title.getBytes("ISO-8859-1"), "UTF-8");
			%>
			
			<div class="breadcrumb-line"
				style="margin-bottom: 1; border-bottom: 1;">
				<div class="page-title">
					<h5>
						<i class="position-left"></i><span class="text-semibold"></span>&nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp;<span id="title"><%=titleen%></span>
						<button title="edit" class="btn btn-link" type="button"
							data-toggle="modal" data-target="#fileModal">
							<i class="icon-pencil fa-pull-left text-right pull-right"></i>
						</button>
						<span class="gb_Rb"></span>
					</h5>
					<div class="heading-elements">
						<div class="heading-btn-group">
							<div class="btn-group">
								<button type="button" class="btn btn-danger">Save</button>
								<button type="button" class="btn btn-info">Preview</button>
								<button data-toggle="modal" data-target="#selectway"
									type="button" class="btn btn-primary active">Publish</button>


								<!--File Modal -->
								<div class="modal fade" id="selectway" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">Select Way To
													Publish</h4>
											</div>


											<br>
											<div class="form-group">
												<div class="row">
												<div class="col-lg-10">
													<select name="articletype" class="form-control" required>
														<option disabled selected>----- กรุณาเลือกประเภทบทความ -----</option>
														<%
															ArticleTypeDAO artypedao = new ArticleTypeDAO();
															List<ArticleType> listarticletype = artypedao.getAllArticleType();
															for(ArticleType type : listarticletype){
														%>
														<option value="<%=type.getId()%>"><%=type.getTypename() %></option>
														<%
															}
														%>
													</select>
												</div>
												</div>
												<div class="row">
												<div class="col-lg-10">
													<select name="worktype" class="form-control" required>
														
														<option disabled selected>----- กรุณาเลือกประเภทงาน -----</option>
														<%
															WorkTypeDAO worktypedao = new WorkTypeDAO();
															List<WorkType> listworktype = worktypedao.getAllWorkType();
															for(WorkType type : listworktype){
														%>
														<option value="<%=type.getId()%>"><%=type.getWorktypename() %></option>
														<%} %>
													</select>
												</div>
												</div>
												<button class="btn btn-primary" type="submit">Submit</button>
											</div>
											<div class="modal-footer"></div>
										</div>
									</div>
								</div>
								<!--file Modal -->












							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page header -->
			<div class="page-container login-container">
				<!-- Page content -->
				<div class="page-content">
					<div class="content">
						<!-- Advanced login -->
						<input type="hidden" name="title" value="<%=titleen %>" id="hiddentitle" >
						<div class="form-group" style="padding-bottom:50px;">
								<label class="col-lg-2 control-label text-bold">รูปภาพหน้าปก:</label>
								<div class="col-lg-5">
									<input type="file" name="photo" class="file-input-extensions" >
								</div>
						</div>
						<div class="row">
						<div class="col-lg-3 col-lg-offset-8">
						<button class="btn btn-danger pull-right" id="inline">Inline Mode</button>
						&emsp;
						<button class="btn btn-primary pull-right" id="frame" disabled>Frame Mode</button>
						
						
						</div>
						</div>
						<div class="row">
						<div class="col-lg-10 col-lg-offset-1">
						<textarea id="editor" name="editor"></textarea>
						
						</div>
						</div>
						<!-- /advanced login -->
						<!-- Footer -->
						<div class="footer text-muted">
							<br>©&nbsp;2015. <a href="#">Limitless Web App Kit</a> by <a
								href="http://themeforest.net/user/Kopyov" target="_blank">Eugene
								Kopyov</a>
						</div>
						<!-- /footer -->
					</div>
					<!-- /content area -->
				</div>
				<!-- /main content -->
			</div>
			<!-- /page content -->
		</div>
		</form>
		<!-- /page container -->
		<!--File Modal -->
		<div class="modal fade" id="fileModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">แก้ไขหัวข้อ</h4>
					</div>
					<br>
					<div class="form-group">
						<div class="col-lg-12 ">
							<div class="input-group">
								<input class="form-control" type="text" placeholder="ชื่อหัวข้อ"
									id="newtitle" value="<%=titleen%>"> <span
									class="input-group-btn">
									<button class="btn btn-primary" type="button"
										onclick="setnewTitle()">ยืนยัน</button>
								</span>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						var setnewTitle = function() {
							var newtitle = $("#newtitle").val();
							$("#title").html(newtitle);
							$("#hiddentitle").val(newtitle);
							
							$("#fileModal").modal("hide");

						}
					</script>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--file Modal -->
		<!-- Include JS files. -->
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/froala_editor.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/languages/th.js"></script>
		<!-- Include Code Mirror. -->
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>

		<!-- Include Plugins. -->
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/align.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/char_counter.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/code_beautifier.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/code_view.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/colors.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/emoticons.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/entities.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/file.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/font_family.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/font_size.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/fullscreen.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/forms.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/image.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/image_manager.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/inline_style.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/line_breaker.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/link.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/lists.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/paragraph_format.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/paragraph_style.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/draggable.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/quick_insert.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/quote.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/table.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/save.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/url.min.js"></script>
		<script type="text/javascript"
			src="froala_editor_2.3.4/js/plugins/video.min.js"></script>
		<script>
			$(function() {
				$('#editor').froalaEditor({
					language : 'th',
					toolbarInline: false,
				    charCounterCount: true,
				    toolbarButtons: ['fontFamily','fontSize','bold', 'italic', 'underline', 'strikeThrough','subscript', 'superscript','|','align','|','formatOL', 'formatUL','color','inlineStyle', 'paragraphStyle','|', 'paragraphFormat','|', 'outdent', 'indent','|', 'insertLink', 'insertImage', 'insertVideo', 'insertFile','insertTable', '|', 'quote', 'insertHR','emoticons', 'undo', 'redo', 'clearFormatting', 'selectAll', 'html','fullscreen'],
				    pastePlain: false,
				    pluginsEnabled: null,
				    tabSpaces: 4,
				    fontFamilySelection: true,
				    fontSizeSelection:true,
				    paragraphFormatSelection:true,
				    alignSelection:true,
				    heightMin: 300
				})
			});
			$('#frame').click(function() {
				if ($('#editor').data('froala.editor')) {
				      $('#editor').froalaEditor('destroy');
				    }
				$('#editor').froalaEditor({
					language : 'th',
					toolbarInline: false,
				    charCounterCount: true,
				    toolbarButtons: ['fontFamily','fontSize','bold', 'italic', 'underline', 'strikeThrough','subscript', 'superscript','|','align','|','formatOL', 'formatUL','color','inlineStyle', 'paragraphStyle','|', 'paragraphFormat','|', 'outdent', 'indent','|', 'insertLink', 'insertImage', 'insertVideo', 'insertFile','insertTable', '|', 'quote', 'insertHR','emoticons', 'undo', 'redo', 'clearFormatting', 'selectAll', 'html','fullscreen'],
				    pastePlain: false,
				    pluginsEnabled: null,
				    tabSpaces: 4,
				    fontFamilySelection: true,
				    fontSizeSelection:true,
				    paragraphFormatSelection:true,
				    heightMin: 300
				});
				$('#inline').prop( "disabled", false );
				$('#frame').prop( "disabled", true );
			});
			$('#inline').click(function() {
				if ($('#editor').data('froala.editor')) {
				      $('#editor').froalaEditor('destroy');
				    }
				$('#editor').froalaEditor({
					language : 'th',
					toolbarInline: true,
					charCounterCount: false,
				    toolbarButtons: ['fontFamily','fontSize','bold', 'italic', 'underline', 'strikeThrough','subscript', 'superscript','align','|','formatOL', 'formatUL','-','color','inlineStyle', 'paragraphStyle','|', 'paragraphFormat','|', 'outdent', 'indent','|', 'insertLink', 'insertImage', 'insertVideo', 'insertFile','insertTable', '-', 'quote', 'insertHR','emoticons', 'undo', 'redo', 'clearFormatting', 'selectAll', 'html'],
				    pastePlain: false,
				    pluginsEnabled: null,
				    tabSpaces: 4,
				    toolbarVisibleWithoutSelection: true,
				    zIndex:2501,
				    heightMin: 300
				});
				$('#inline').prop( "disabled", true );
				$('#frame').prop( "disabled", false );
			});
		</script>
		
	</div>
</body>