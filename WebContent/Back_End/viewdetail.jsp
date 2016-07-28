<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<%@ page import="com.mfu.entity.*,com.mfu.dao.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aedo:admintemplate title="${requestScope.article.title }">
	<jsp:attribute name="content">
		<div class="page-header">
					<div class="page-header-content">

						<div class="page-title">
							<h4>
								<i class="position-left"></i><span class="text-semibold"></span>&nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp;<span id="title">${requestScope.article.title }</span>
						</h4>
						</div>
					</div>
				</div>
		<div id="detail" class="panel panel-flat fr-view" style="padding: 20px;">
			<!-- Contents -->
				${requestScope.article.content }		
		</div>
					
	</jsp:attribute>
</aedo:admintemplate>
