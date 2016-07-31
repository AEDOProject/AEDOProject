<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aedo:admintemplate title="${requestScope.trainingtype.trainingtypename }">
	<jsp:attribute name="header">
		<div class="page-header">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left" onclick="window.history.back()" style="cursor:pointer;"></i> <span class="text-semibold">${requestScope.trainingtype.trainingtypename }</span></h4>
						</div>

						<div class="heading-elements">
							<div class="heading-btn-group">
                                    <button class="btn btn-primary" id="frame" disabled>Frame Mode</button>
                                    <button class="btn btn-danger" id="inline">Inline Mode</button>
									<button class="btn btn-success" id="save">Save</button>
							</div>
						</div>
					</div>
					</div>
					
	</jsp:attribute>
	<jsp:attribute name="content">
		<div class="panel panel-flat">
		<form id="addDetail" action="SaveTrainingTypeDetail" method="post">
		<input type="hidden" value="${requestScope.trainingtype.id }" name="typeid" /> 
			<textarea id="editor" name="editor" style="padding: 20px;margin:20px;">
				
			</textarea>
		</form>	
		</div>
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
		$('#save').click(function() {
			if($("#editor").val() == ""){
				alert("กรุณากรอกข้อมูลให้ครบถ้วน");
			}else{
				$("#addDetail").submit();
			}
			
			
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
		<script type="text/javascript">
			$( "div" ).after(function() {
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
			</script>
	</jsp:attribute>
</aedo:admintemplate>