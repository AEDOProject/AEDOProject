<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<aedo:admintemplate title="เพิ่มบทความใหม่">
	<jsp:attribute name="content">
	<form action="addArticle" method="post" enctype="multipart/form-data">
		<div class="breadcrumb-line"
				style="margin-bottom: 1; border-bottom: 1;">
				<div class="page-title">
					<h5>
						<i class="position-left"></i><span class="text-semibold"></span>&nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp;<span id="title"><fmt:requestEncoding value="UTF-8" />${param["title"] }</span>
						<button title="edit" class="btn btn-link" type="button"
							data-toggle="modal" data-target="#editTitle">
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
													<select name="worktype" class="form-control" required>
														
														<option disabled selected>----- กรุณาเลือกประเภทงาน -----</option>
														<c:forEach items="${requestScope.listworktype }" var="worktype">
															<option value="${worktype.id }">${worktype.worktypename }</option>
														</c:forEach>
														
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
						<input type="hidden" name="title" value="${param['title'] }" id="hiddentitle" >
						<input type="hidden" name="typeid" value="${param['typeid'] }" >
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
					</div>
				</div>
			</div>
			<!--File Modal -->
		<div class="modal fade" id="editTitle" tabindex="-1" role="dialog"
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
									id="newtitle" value="${param['title'] }"> <span
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
							
							$("#editTitle").modal("hide");

						}
					</script>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
	</form>
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
			<script type="text/javascript">
			$( "textarea" ).after(function() {
				
					jQuery('#editor').froalaEditor({
							
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
						    heightMin: 300,
						    fontFamily:{"Arial,Helvetica,sans-serif":"Arial","'Thai Sans Lite', sans-serif":"Thai Sans","Georgia,serif":"Georgia","Impact,Charcoal,sans-serif":"Impact","Tahoma,Geneva,sans-serif":"Tahoma","Times New Roman,Times,serif":"Times New Roman","Verdana,Geneva,sans-serif":"Verdana"}
						});
						
					
			});
			
			</script>
		<script type="text/javascript">
		
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
				    heightMin: 300,
				    fontFamily:{"Arial,Helvetica,sans-serif":"Arial","'Thai Sans Lite', sans-serif":"Thai Sans","Georgia,serif":"Georgia","Impact,Charcoal,sans-serif":"Impact","Tahoma,Geneva,sans-serif":"Tahoma","Times New Roman,Times,serif":"Times New Roman","Verdana,Geneva,sans-serif":"Verdana"}
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
				    heightMin: 300,
				    fontFamily:{"Arial,Helvetica,sans-serif":"Arial","'Thai Sans Lite', sans-serif":"Thai Sans","Georgia,serif":"Georgia","Impact,Charcoal,sans-serif":"Impact","Tahoma,Geneva,sans-serif":"Tahoma","Times New Roman,Times,serif":"Times New Roman","Verdana,Geneva,sans-serif":"Verdana"}
				});
				$('#inline').prop( "disabled", true );
				$('#frame').prop( "disabled", false );
			});
		</script>
		
	</jsp:attribute>
</aedo:admintemplate>