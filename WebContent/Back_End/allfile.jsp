<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="ดูไฟล์">
<jsp:attribute name="allfile">active</jsp:attribute>
<jsp:attribute name="content">


<div class="panel panel-flat"> 
                            <div class="panel-heading"> 
                                <h5 class="panel-title"> <i class="icon-files-empty2"></i> ไฟล์ทั้งหมด</h5> 
                                <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <button title="เพิ่มไฟล์" class="btn btn-info btn-icon btn-rounded" type="button" data-toggle="modal" data-target="#fileModal">
                                        <i class="icon-plus3"></i>
                                    </button>
                                </div>
                            </div>                             
                            <table class="table datatable-basic"> 
                                <thead> 
                                    <tr> 
                                        <th>รหัสไฟล์</th>
                                        <th>ชื่อไฟล์</th> 
                                        <th>วันที่สร้าง</th> 
                                        <th>ชนิดไฟล์</th> 
                                        <th>ขนาดไฟล์</th> 
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody> 
                                    <tr> 
                                        <td>1</td> 
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
                                                            <a href="#">ดาวน์โหลด</a>
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
                        <!--File Modal -->
                                <div class="modal fade" id="fileModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">เพิ่มไฟล์</h4>
                                            </div>
                                            <br> 
                                            <div class="form-group">
                                                <label class="col-lg-2 control-label text-semibold">เลือกไฟล์:</label>
                                                <div class="col-lg-10">
                                                    <input type="file" class="file-input">
                                                </div>
                                            </div>
                                            <div class="modal-footer">
</div>
                                        </div>
                                    </div>
                                </div>
                                <!--file Modal -->    
</jsp:attribute>
</aedo:admintemplate>