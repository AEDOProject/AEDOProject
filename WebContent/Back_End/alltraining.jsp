<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
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
                                    <button title="เพิ่มประเภทโครงการอบรม" class="btn btn-info btn-icon btn-rounded" type="button" data-toggle="modal" data-target="#fileModal">
                                        <i class="icon-plus3"></i>
                                    </button>
                                </div>                                  
                            </div>                             
                            <table class="table datatable-basic"> 
                                <thead> 
                                    <tr> 
                                        <th>รหัสประเภทโครงการอบรม</th> 
                                        <th>ชื่อ</th> 
                                        <th>สถานะ</th> 
                                        <th>ปี</th> 
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody> 
                                    <tr> 
                                        <td>1</td> 
                                        <td> 
                                            <a href="intraining.html">Marth</a> 
                                        </td>                                         
                                        <td>แสดง</td> 
                                        <td>2557</td> 
                                        <td class="text-center"> 
                                            <ul class="icons-list"> 
                                                <li class="dropdown"> 
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-menu9"></i> </a> 
                                                    <ul class="dropdown-menu dropdown-menu-right"> 
                                                         <li> 
                                                            <a href="intraining.html">ดูทั้งหมด</a> 
                                                        </li>   
                                                        <li> 
                                                            <a href="#editModal" data-toggle="modal">แก้ไข</a>
                                                                     
                                                        </li>                                                         
                                                        <li> 
                                                            <a href="#">ซ่อน</a> 
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