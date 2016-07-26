<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="ingallery">
<jsp:attribute name="ingallery">active</jsp:attribute>
	<jsp:attribute name="content">
	
	   
                    <div class="panel panel-white">
                            <div class="panel-heading">
                                <h6 class="panel-title text-semibold">ชื่ออัลบั้ม</h6>
                                  <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <button title="เพิ่มรูปหรือวิดีโอ" class="btn btn-info btn-icon btn-rounded" type="button" data-toggle="modal" data-target="#myModal">
                                        <i class="icon-plus3"></i>
                                    </button>
                                </div>      
                            </div>
                            <table class="table table-striped media-library table-lg">
                                <thead>
                                    <tr>
                                        <th>
                                            <input type="checkbox" class="styled">
                                        </th>
                                        <th>Preview</th>
                                        <th>ชื่อ</th>
                                        <th>เจ้าของ</th>
                                        <th>วัน-เวลาที่อัปโหลด</th>
                                        <th>ข้อมูลไฟล์</th>
                                        <th class="text-center">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="styled">
                                        </td>
                                        <td>
                                            <a href="assets/images/placeholder.jpg" data-popup="lightbox">
                                                <img src="assets/images/placeholder.jpg" alt="" class="img-rounded img-preview">
                                            </a>
                                        </td>
                                        <td>
                                            <a href="#">Ignorant saw her drawings</a>
                                        </td>
                                        <td>
                                            <a href="#">Eugene Kopyov</a>
                                        </td>
                                        <td>Jun 10, 2015</td>
                                        <td>
                                            <ul class="list-condensed list-unstyled no-margin"> 
                                                <li>
                                                    <span class="text-semibold">ขนาดไฟล์:</span> 215 Kb
                                                </li>
                                                <li>
                                                    <span class="text-semibold">ชนิดไฟล์:</span> .jpg
                                                </li>
                                            </ul>
                                        </td>
                                        <td class="text-center">
                                            <ul class="icons-list">
                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-menu9"></i></a>
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li>
                                                            <a href="#">ดาวน์โหลด</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">คัดลอก</a>
                                                        </li>
                                                       
                                                        <li>
                                                            <a href="#">ลบ</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                         <div class="page-header">
                        <div class="page-header-content">
                            <div class="page-title">
                               
                                <!-- Modal -->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">เพิ่มรูปภาพหรือวิดิโอ</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label text-semibold">เลือกรูปภาพหรือวิดิโอ:</label>
                                                    <div class="col-lg-9     ">
                                                        <input type="file" class="file-input" multiple="multiple">
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    	</jsp:attribute>
</aedo:admintemplate>