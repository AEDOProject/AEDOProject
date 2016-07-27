<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="allevent">
<jsp:attribute name="allevent">active</jsp:attribute>
<jsp:attribute name="content">

 <div class="panel panel-flat"> 
                            <div class="panel-heading"> 
                                <h5 class="panel-title"> <i class="icon-accessibility"></i> กิจกรรม</h5> 
                              <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <button title="เพิ่มกิจกรรม" class="btn btn-info btn-icon btn-rounded" type="button" data-toggle="modal" data-target="#fileModal">
                                        <i class="icon-plus3"></i>
                                    </button>
                                </div>                           
                            </div>                             
                            <table class="table datatable-basic"> 
                                <thead> 
                                    <tr> 
                                        <th>รหัสบทความ</th> 
                                        <th>รูปภาพแสดง</th> 
                                        <th>หัวข้อบทความ</th>
                                        <th>เจ้าของ</th>
                                        <th>วันที่สร้าง</th> 
                                        <th>วันที่แก้ไขล่าสุด</th> 
                                         
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody> 
                                    <tr> 
                                        <td>123456</td> 
                                        <td> 
                                            <a href="assets/images/placeholder.jpg" data-popup="lightbox"> 
                                                <img src="assets/images/placeholder.jpg" alt="" class="img-rounded img-preview"> 
                                            </a>
                                        </td>                                         
                                        <td>
                                            <a href="#">Marth</a>
                                        </td>                                         
                                        <td>จอนชาวไร้</td> 
                                        <td>12.00-10-12-2015</td> 
                                        <td>12.00-10-12-2015</td> 
                                        <td class="text-center"> 
                                            <ul class="icons-list"> 
                                                <li class="dropdown"> 
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-menu9"></i> </a> 
                                                    <ul class="dropdown-menu dropdown-menu-right"> 
                                                        <li>
                                                            <a href="#">ดู</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#">แก้ไข</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#">ลบ</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#">ดาวน์โหลด</a>
                                                        </li>                                                         
                                                    </ul>                                                     
                                                </li>                                                 
                                            </ul>                                             
                                        </td>                                         
                                    </tr>                                     
                                </tbody>                                 
                            </table>                             
                        </div>   

</jsp:attribute>
</aedo:admintemplate>