<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mfu.entity.*,com.mfu.dao.*,java.util.*"%>
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
<link
	href="${pageContext.request.contextPath}/Back_End/assets/css/icons/icomoon/styles.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/Back_End/assets/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/Back_End/assets/css/core.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/Back_End/assets/css/components.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/Back_End/assets/css/colors.css"
	rel="stylesheet" type="text/css">
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
<!-- Core JS files -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/loaders/pace.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/core/libraries/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/core/libraries/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/loaders/blockui.min.js"></script>
<!-- /core JS files -->
<!-- Theme JS files -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/uploaders/fileinput.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/tables/datatables/datatables.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/core/app.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/pages/datatables_basic.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/pages/uploader_bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/media/fancybox.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/forms/styling/uniform.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/plugins/tables/datatables/datatables.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Back_End/assets/js/pages/gallery_library.js"></script>
<!-- /theme JS files -->
</head>
<body>
	<!-- Main navbar -->
	<div class="navbar navbar-default header-highlight">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp"> <img
				src="${pageContext.request.contextPath}/Back_End/assets/images/logo.png" />
			</a>
			<ul class="nav navbar-nav visible-xs-block">
				<li><a data-toggle="collapse" data-target="#navbar-mobile"><i
						class="icon-tree5"></i></a></li>
				<li><a class="sidebar-mobile-main-toggle"><i
						class="icon-paragraph-justify3"></i></a></li>
			</ul>
		</div>
		<div class="navbar-collapse collapse" id="navbar-mobile">
			
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown dropdown-user"><a class="dropdown-toggle"
					data-toggle="dropdown"> <img
						src="${pageContext.request.contextPath}/Back_End/assets/images/placeholder.jpg"
						alt=""> <span>Victoria</span> <i class="caret"></i>
				</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="#"><i class="icon-user-plus"></i> My profile</a>
						</li>
						<li></li>
						<li></li>
						<li class="divider"></li>
						<li><a href="#"><i class="icon-cog5"></i> Account
								settings</a></li>
						<li><a href="login_simple.jsp"><i class="icon-switch2"></i>
								Logout</a></li>
					</ul></li>
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
								<a href="#" class="media-left"> <img
									src="${pageContext.request.contextPath}/Back_End/assets/images/placeholder.jpg"
									class="img-circle img-sm" alt="">
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
								<li class="active"><a href="index.jsp"><i
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
												<li><a href="registration.jsp">Admins</a></li>
												<li><a href="registration.jsp">AEDO Staff</a></li>
												<li><a href="registration.jsp">HLLC Staff</a></li>
											</ul></li>
										<li><a href="allstaff.jsp"><i class="icon-users2"></i>All
												Staff</a></li>
									</ul></li>
								<!-- /page kits -->
							</ul>
						</div>
					</div>
					<!-- /main navigation -->
				</div>
			</div>
			<!-- /main sidebar -->
			<!-- Main content -->
			<%
				long articleid = Long.parseLong(request.getParameter("articleid"));
				Article article = new ArticleDAO().findArticleById(articleid);
			%>
			<div class="content-wrapper">
				<div class="page-header">
					<div class="page-header-content">

						<div class="page-title">
							<h4>
								<i class="position-left"></i><span class="text-semibold"></span>&nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp;<span id="title"><%=article.getTitle()%></span>
						<button title="edit" class="btn btn-link" type="button"
							data-toggle="modal" data-target="#fileModal">
							<i id="pencil" class="icon-pencil fa-pull-left text-right pull-right"></i>
						</button>
								<button class="btn btn-lg btn-danger pull-right" id="edit">แก้ไข</button>
								<button class="btn btn-lg btn-success pull-right" id="save">บันทึก</button>
								<button class="btn btn-lg btn-danger pull-right" id="inline">Inline Mode</button>
								<button class="btn btn-lg btn-primary pull-right" id="frame">Frame Mode</button>
								
								
							</h4>
						</div>
					</div>
				</div>
				<!-- Content area -->
				<div class="content">
					<div id="detail" class="panel panel-flat fr-view" style="padding: 20px;">
						<!-- Contents -->
						<%=article.getContent()%>
					</div>
					<textarea style="display:none;" id="editor" name="content" style="padding: 20px;">
						<%=article.getContent()%>
					</textarea>
					<!-- /basic datatable -->
					<!-- Footer -->
					<div class="footer text-muted">
						&copy; 2015. <a href="#">Limitless Web App Kit</a> by <a
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
	<!-- /page container -->
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
		$('#frame').hide();
		$('#inline').hide();
		$('#save').hide();
		$('#pencil').hide();
	});
		$('#edit')
				.click(
						function() {
							$("#detail").hide();
							$("#edit").hide();
							$('#frame').show();
							$('#inline').show();
							$('#save').show();
							$('#pencil').show();
							$("#editor");
							$('#editor')
									.froalaEditor(
											{
												language : 'th',
												toolbarInline : false,
												charCounterCount : true,
												toolbarButtons : [
														'fontFamily',
														'fontSize', 'bold',
														'italic', 'underline',
														'strikeThrough',
														'subscript',
														'superscript', '|',
														'align', '|',
														'formatOL', 'formatUL',
														'color', 'inlineStyle',
														'paragraphStyle', '|',
														'paragraphFormat', '|',
														'outdent', 'indent',
														'|', 'insertLink',
														'insertImage',
														'insertVideo',
														'insertFile',
														'insertTable', '|',
														'quote', 'insertHR',
														'emoticons', 'undo',
														'redo',
														'clearFormatting',
														'selectAll', 'html',
														'fullscreen' ],
												pastePlain : false,
												pluginsEnabled : null,
												tabSpaces : 4,
												fontFamilySelection : true,
												fontSizeSelection : true,
												paragraphFormatSelection : true,
												heightMin : 300,
												fontFamily : {
													"Arial,Helvetica,sans-serif" : "Arial",
													"'Thai Sans Lite', sans-serif" : "Thai Sans",
													"Georgia,serif" : "Georgia",
													"Impact,Charcoal,sans-serif" : "Impact",
													"Tahoma,Geneva,sans-serif" : "Tahoma",
													"Times New Roman,Times,serif" : "Times New Roman",
													"Verdana,Geneva,sans-serif" : "Verdana"
												}
											});
							$('#inline').prop("disabled", false);
							$('#frame').prop("disabled", true);
						});
		$('#frame')
		.click(
				function() {
					if ($('#editor').data('froala.editor')) {
						$('#editor').froalaEditor('destroy');
					}
					$('#editor')
							.froalaEditor(
									{
										language : 'th',
										toolbarInline : false,
										charCounterCount : true,
										toolbarButtons : [
												'fontFamily',
												'fontSize', 'bold',
												'italic', 'underline',
												'strikeThrough',
												'subscript',
												'superscript', '|',
												'align', '|',
												'formatOL', 'formatUL',
												'color', 'inlineStyle',
												'paragraphStyle', '|',
												'paragraphFormat', '|',
												'outdent', 'indent',
												'|', 'insertLink',
												'insertImage',
												'insertVideo',
												'insertFile',
												'insertTable', '|',
												'quote', 'insertHR',
												'emoticons', 'undo',
												'redo',
												'clearFormatting',
												'selectAll', 'html',
												'fullscreen' ],
										pastePlain : false,
										pluginsEnabled : null,
										tabSpaces : 4,
										fontFamilySelection : true,
										fontSizeSelection : true,
										paragraphFormatSelection : true,
										heightMin : 300,
										fontFamily : {
											"Arial,Helvetica,sans-serif" : "Arial",
											"'Thai Sans Lite', sans-serif" : "Thai Sans",
											"Georgia,serif" : "Georgia",
											"Impact,Charcoal,sans-serif" : "Impact",
											"Tahoma,Geneva,sans-serif" : "Tahoma",
											"Times New Roman,Times,serif" : "Times New Roman",
											"Verdana,Geneva,sans-serif" : "Verdana"
										}
									});
					$('#inline').prop("disabled", false);
					$('#frame').prop("disabled", true);
				});
		$('#inline')
				.click(
						function() {
							if ($('#editor').data('froala.editor')) {
								$('#editor').froalaEditor('destroy');
							}
							$('#editor')
									.froalaEditor(
											{
												language : 'th',
												toolbarInline : true,
												charCounterCount : false,
												toolbarButtons : [
														'fontFamily',
														'fontSize', 'bold',
														'italic', 'underline',
														'strikeThrough',
														'subscript',
														'superscript', 'align',
														'|', 'formatOL',
														'formatUL', '-',
														'color', 'inlineStyle',
														'paragraphStyle', '|',
														'paragraphFormat', '|',
														'outdent', 'indent',
														'|', 'insertLink',
														'insertImage',
														'insertVideo',
														'insertFile',
														'insertTable', '-',
														'quote', 'insertHR',
														'emoticons', 'undo',
														'redo',
														'clearFormatting',
														'selectAll', 'html' ],
												pastePlain : false,
												pluginsEnabled : null,
												tabSpaces : 4,
												toolbarVisibleWithoutSelection : true,
												zIndex : 2501,
												heightMin : 300,
												fontFamily : {
													"Arial,Helvetica,sans-serif" : "Arial",
													"'Thai Sans Lite', sans-serif" : "Thai Sans",
													"Georgia,serif" : "Georgia",
													"Impact,Charcoal,sans-serif" : "Impact",
													"Tahoma,Geneva,sans-serif" : "Tahoma",
													"Times New Roman,Times,serif" : "Times New Roman",
													"Verdana,Geneva,sans-serif" : "Verdana"
												}
											});
							$('#inline').prop("disabled", true);
							$('#frame').prop("disabled", false);
						});
	</script>
</body>
</html>
