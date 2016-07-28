<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="date" class="java.util.Date" />
<aedo:admintemplate title="alltraining">
<jsp:attribute name="alltraining">active</jsp:attribute>
<jsp:attribute name="content">


  <div class="panel panel-flat"> 
                            <div class="panel-heading"> 
                                <h5 class="panel-title"> <i class="icon-books"></i> ประเภทโครงการอบรม</h5> 
                                   <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <button title="เพิ่มประเภทโครงการอบรม" class="btn btn-info btn-icon btn-rounded" type="button" data-toggle="modal" data-target="#newTrainingType">
                                        <i class="icon-plus3"></i>
                                    </button>
                                </div>                                  
                            </div>                             
                            <table class="table datatable-basic"> 
                                <thead> 
                                    <tr> 
                                        <th>#</th> 
                                        <th>ชื่อโครงการ</th>
                                        <th>คำอธิบาย</th> 
                                        <th>สถานะ</th> 
                                        <th>ปี</th> 
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody>
                                <fmt:requestEncoding value="UTF-8" />
                                <c:forEach items="${requestScope.listtype }" var="type" varStatus="loop"> 
                                    <tr> 
                                        <td>${loop.index +1 }</td> 
                                        <td> 
                                            <a href="Training?typeid=${type.id }">${type.trainingtypename }</a> 
                                        </td>
                                        <c:choose>
                                        	<c:when test="${not empty type.detail}">
                                        		 <td><span id="detail${type.id }">${type.detail }</span> <a href="#">อ่านต่อ</a></td>
                                        		 <script type="text/javascript">
                                        		 $( "#detail${type.id }" ).after(function() {
                                        			 var detail = $("#detail${type.id }");
                                        			 var remove = detail.text();
                                        			 $("#detail${type.id }").html(remove.substr(0,20)+" ...");
                                        		 });
                                        		 </script>  
                                        	</c:when>
                                        	<c:otherwise>                         
                                        		 <td>ยังไม่มีคำอธิบาย <a href="#">เพิ่ม</a></td>
                                        	</c:otherwise>
                                        </c:choose>
                                       
                                        <c:choose>
                                        	<c:when test="${type.show == false }">
                                        		<td>ซ่อน</td>  
                                        	</c:when>
                                        	<c:when test="${type.show == true }">                         
                                        		<td>แสดง</td>
                                        	</c:when>
                                        </c:choose>
                                        <td>${type.year }</td> 
                                        <td class="text-center"> 
                                            <ul class="icons-list"> 
                                                <li class="dropdown"> 
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-menu9"></i> </a> 
                                                    <ul class="dropdown-menu dropdown-menu-right">  
                                                         <li> 
                                                            <a href="Training?typeid=${type.id }">ดูการอบรมทั้งหมด</a> 
                                                        </li>   
                                                        <li> 
                                                            <a href="#editmodal${type.id }" data-toggle="modal">แก้ไข</a>
                                                                     
                                                        </li>                                                         
                                                        <li> 
                                                        <c:choose>
                                        	<c:when test="${type.show == false }">
                                        		<a href="#">แสดง</a>  
                                        	</c:when>
                                        	<c:when test="${type.show == true }">                         
                                        		<a href="#">ซ่อน</a>
                                        	</c:when>
                                        </c:choose>
                                                        </li>
                                                        <li> 
                                                            <a href="#" style="color:red;">ลบ</a>
                                                        </li>                                                         
                                                    </ul>                                                     
                                                </li>                                                 
                                            </ul>                                             
                                        </td>                                         
                                    </tr>
                                    <div class="modal fade" id="editmodal${type.id }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">แก้ไขข้อมูลประเภทโครงการ</h4>
                                            </div>
                                            <br> 
                                            <div class="row">
                                            <div class="form-group" id="editbox">
                                                <label class="col-lg-3 col-lg-offset-1 control-label text-semibold">ชื่อประเภทโครงการ:</label>
                                                <div class="col-lg-7">
                                                    <input name="typename" type="text" id="edittypename" value="${type.trainingtypename }" class="form-control" placeholder="ชื่อประเภทโครงการ"><span id="editalert" style="color:red;"></span>
                                                </div>
                                            </div>
                                            </div>
                                            <div class="row">
                                            <div class="form-group">
                                                <label class="col-lg-3 col-lg-offset-1 control-label text-semibold">ปีการศึกษา:</label>
                                                <div class="col-lg-7">
                                                    <select name="edityear" id="edityear" class="form-control">
                                                    	<fmt:formatDate var="year" value="${date}" pattern="yyyy" />
                                                    	<c:forEach var="i"  begin="${year+543 }" end="${year+4+543 }">
                                                    	<c:choose>
                                                    		<c:when test="${type.year == i }">
                                                    			<option value="${i }" selected>${i }</option>
                                                    		</c:when>
                                                    		<c:when test="${type.year != i }">
                                                    			<option value="${i }">${i }</option>
                                                    		</c:when>
                                                    	</c:choose>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                            <div class="form-group">
                                                <label class="col-lg-3 col-lg-offset-1 control-label text-semibold">&nbsp;</label>
                                                <div class="col-lg-7">
                                                    <button class="btn btn-lg btn-primary" id="editTrainingType">แก้ไขโครงการอมรม</button>
                                                </div>
                                            </div>
                                            </div>
                                            <div class="modal-footer">
											</div>
                                        </div>
                                    </div>
                                </div>
                                    </c:forEach>                                     
                                </tbody>                                 
                            </table>                             
                        </div>   
<!--File Modal -->
                                <div class="modal fade" id="newTrainingType" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">เพิ่มประเภทโครงการ</h4>
                                            </div>
                                            <br> 
                                            <div class="row">
                                            <div class="form-group" id="box">
                                                <label class="col-lg-3 col-lg-offset-1 control-label text-semibold">ชื่อประเภทโครงการ:</label>
                                                <div class="col-lg-7">
                                                    <input name="typename" type="text" id="typename" class="form-control" placeholder="ชื่อประเภทโครงการ"><span id="alert" style="color:red;"></span>
                                                </div>
                                            </div>
                                            </div>
                                            <div class="row">
                                            <div class="form-group">
                                                <label class="col-lg-3 col-lg-offset-1 control-label text-semibold">ปีการศึกษา:</label>
                                                <div class="col-lg-7">
                                                    <select name="year" id="year" class="form-control">
                                                    	<fmt:formatDate var="year" value="${date}" pattern="yyyy" />
                                                    	<c:forEach var="i"  begin="${year+543 }" end="${year+4+543 }">
                                                    	<option value="${i }">${i }</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            </div>
                                            <br>
                                            <div class="row">
                                            <div class="form-group">
                                                <label class="col-lg-3 col-lg-offset-1 control-label text-semibold">&nbsp;</label>
                                                <div class="col-lg-7">
                                                    <button class="btn btn-lg btn-primary" id="addTrainingType">เพิ่มโครงการอมรม</button>
                                                </div>
                                            </div>
                                            </div>
                                            <div class="modal-footer">
											</div>
                                        </div>
                                    </div>
                                </div>
                                <!--file Modal -->
                                <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
                 <script type="text/javascript">
                 $("#addTrainingType").click(function(){
                	 var year = $( "#year option:selected" ).text();
                	 var typename = $('#typename').val();
                	 if(typename==""||typename==null){
                		 $('#box').addClass("has-error");
             	    	$("#alert").html("กรุณากรอกข้อมูลให้ครบถ้วน");
                	 }else{
	                	 $.ajax({
	                		 url: "newTrainingType?typename="+typename+"&year="+year, 
	                		 success: function(data,status){
	     	                	 location.reload();
	                	 }, error: function(data){
                	    	
                	    	$( "#newTrainingType" ).effect( "shake" );
                	    	$('#box').addClass("has-error");
                	    	$("#alert").html("ชื่อประเภทโครงการนี้มีอยู่แล้วในระบบ");
                	    }});
                	 }
                	});
                 </script>
</jsp:attribute>
</aedo:admintemplate>