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
                                        		 <td><span id="detail${type.id }">${type.detail }</span> <a href="ViewTrainingTypeDetail?typeid=${type.id }">อ่านต่อ</a></td>
                                        		 <script type="text/javascript">
                                        		 $( "#detail${type.id }" ).after(function() {
                                        			 var detail = $("#detail${type.id }");
                                        			 var remove = detail.text();
                                        			 $("#detail${type.id }").html(remove.substr(0,20)+" ...");
                                        		 });
                                        		 </script>  
                                        	</c:when>
                                        	<c:otherwise>                         
                                        		 <td>ยังไม่มีคำอธิบาย <a href="AddTrainingTypeDetail?typeid=${type.id }">เพิ่ม</a></td>
                                        	</c:otherwise>
                                        </c:choose>
                                       
                                        <c:choose>
                                        	<c:when test="${type.show == false }">
                                        		<td><span style="color:red;">ซ่อน</span></td>  
                                        	</c:when>
                                        	<c:when test="${type.show == true }">                         
                                        		<td><span style="color:green;">แสดง</span></td>
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
                                        		<a onclick="changeStatus('${type.id}')">แสดง</a>  
                                        	</c:when>
                                        	<c:otherwise>                         
                                        		<a onclick="changeStatus('${type.id}')">ซ่อน</a>
                                        	</c:otherwise>
                                        </c:choose>
                                                        </li>
                                                        <li> 
                                                            <a onclick="deleteType('${type.id}')" style="color:red;">ลบ</a>
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
                                            <div class="form-group" id="editbox${type.id }">
                                                <label class="col-lg-3 col-lg-offset-1 control-label text-semibold">ชื่อประเภทโครงการ:</label>
                                                <div class="col-lg-7">
                                                    <input name="typename" type="text" id="edittypename${type.id }" value="${type.trainingtypename }" class="form-control" placeholder="ชื่อประเภทโครงการ"><span id="editalert${type.id }" style="color:red;"></span>
                                                </div>
                                            </div>
                                            </div>
                                            <div class="row">
                                            <div class="form-group">
                                                <label class="col-lg-3 col-lg-offset-1 control-label text-semibold">ปีการศึกษา:</label>
                                                <div class="col-lg-7">
                                                    <select name="edityear" id="edityear${type.id }" class="form-control">
                                                    	<fmt:formatDate var="year" value="${date}" pattern="yyyy" />
                                                    	<c:forEach var="i"  begin="${year+543 }" end="${year+4+543 }">
                                                    	<c:choose>
                                                    		<c:when test="${type.year == i }">
                                                    			<option value="${i }" selected>${i }</option>
                                                    		</c:when>
                                                    		<c:otherwise>
                                                    			<option value="${i }">${i }</option>
                                                    		</c:otherwise>
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
                                                    <button class="btn btn-lg btn-primary" onclick="editTrainingType('${type.id}')">แก้ไขโครงการอมรม</button>
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
                                                    <select name="year" id="edityear" class="form-control">
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
                                <!-- confirm delete -->
                                <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								    <div class="modal-dialog" role="document">
								        <div class="modal-content">
								            <div class="modal-header">
								            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
								             	<h4>   ยืนยันการลบประเภทโครงการ</h4>
								            </div>
								            <div class="modal-body">
								                <h5><span style="color:red">ข้อมูลการอบรมจะหายไปทั้งหมด</span> ท่านต้องการลบหรือไม่?</h5>
								            </div>
								            <div class="modal-footer">
								                <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">ยกเลิก</button>
								                <a class="btn btn-danger btn-lg" id="deletebtn">ลบ</a>
								            </div>
								        </div>
								    </div>
								</div>
                                
                               
                 <script type="text/javascript">
                 var editTrainingType = function(typeid){
                	 var year = $( "#edityear"+typeid+" option:selected" ).text();
                	 var typename = $("#edittypename"+typeid).val();
                	 if(typename==""||typename==null){
                		 $('#editbox'+typeid).addClass("has-error");
             	    	$("#editalert"+typeid).html("กรุณากรอกข้อมูลให้ครบถ้วน");
                	 }else{
	                	 $.ajax({
	                		 url: "${pageContext.request.contextPath}/rs/trainingtype/edittitle/"+typeid+"/"+typename+"/"+year,
	                		 type:"PUT",
	                		 success: function(data,status){
	     	                	 location.reload();
	                	 }, error: function(data){
                	    	
                	    	$('#editbox'+typeid).addClass("has-error");
                	    	$("#editalert"+typeid).html("ชื่อประเภทโครงการนี้มีอยู่แล้วในระบบ");
                	    }});
                	 }
                 }
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
                	    	
                	    	$('#box').addClass("has-error");
                	    	$("#alert").html("ชื่อประเภทโครงการนี้มีอยู่แล้วในระบบ");
                	    }});
                	 }
                	});
                 var changeStatus = function(typeid){
                	 $.ajax({
                		 url:"${pageContext.request.contextPath}/rs/trainingtype/showhide/"+typeid,
                		 type: "PUT",
                		 success: function(data,status){
                			 location.reload();
                		 },error : function(data,status){
                			 alert(status);
                		 }
                	 });
                 }
                 var deleteType = function(typeid){
                	 swal({
                         title: "คุณต้องการลบประเภทโครงการนี้หรือไม่?",
                         text: "ข้อมูลการอบรมจะหายไปทั้งหมดและไม่สามารถกู้คืนได้",
                         type: "warning",
                         showCancelButton: true,
                         confirmButtonColor: "#EF5350",
                         confirmButtonText: "ใช่ ฉันต้องการ",
                         cancelButtonText: "ไม่ ยกเลิก",
                         closeOnConfirm: false,
                         closeOnCancel: false
                     },
                     function(isConfirm){
                         if (isConfirm) {
                        	 $.ajax({
             			 		url:"${pageContext.request.contextPath}/rs/trainingtype/deletetrainingtype/"+typeid,
             			 		type:"DELETE",
             			 		success: function(data,status){
             			 			swal({
                                        title: "ลบเรียบร้อยแล้ว",
                                        text: "ประเภทโครงการและข้อมูลทั้งหมดถูกลบเรียบร้อยแล้ว",
                                        confirmButtonColor: "#66BB6A",
                                        type: "success"
                                    });
             			 			window.setTimeout('location.reload()', 3000);
             			 		},error: function(data,status){
             			 			swal({
                                        title: "ไม่สามารถลบข้อมูลได้",
                                        text: "กรุณาติดต่อนักพัฒนาระบบ",
                                        confirmButtonColor: "#66BB6A",
                                        type: "error"
                                    });
             			 		}
             			 	});
                             
                             
                         }
                         else {
                             swal({
                                 title: "ยกเลิกแล้ว",
                                 text: "ยกเลิกการลบประเภทโครงการ :)",
                                 confirmButtonColor: "#2196F3",
                                 type: "error"
                             });
                         }
                     });
            	 }
                 
                 </script>
</jsp:attribute>
</aedo:admintemplate>