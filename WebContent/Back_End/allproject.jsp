<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="allproject">
<jsp:attribute name="allproject">active</jsp:attribute>
<jsp:attribute name="content">


  <div class="panel panel-flat"> 
                            <div class="panel-heading"> 
                                <h5 class="panel-title"> <i class="icon-archive"></i> ทุนโครงการ</h5> 
                               <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <a href="newproject.html"><button title="เพิ่มทุนโครงการ" class="btn btn-info btn-icon btn-rounded" type="button">
                                        <i class="icon-plus3"></i>
                                        </button></a>
                                </div>                            
                            </div>                             
                            <table class="table datatable-basic"> 
                                <thead> 
                                    <tr> 
                                        <th>รหัสทุน</th> 
                                        <th>ประเภททุน</th> 
                                        <th>ชื่อโครงการ(ภาษาไทย)</th>
                                        <th>ปีการศึกษา</th> 
                                        <th>ภาคการศึกษา</th>
                                        <th>ผู้ได้รับทุน</th>
                                        <th>งบประมาณ</th>
                                        
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody> 
                                    <tr> 
                                        <td>1</td> 
                                        <td>Marth</td>                                         
                                        <td>Show</td> 
                                        <td>Show</td> 
                                        <td>Show</td> 
                                        <td>Show</td> 
                                        <td>2016</td> 
                                        <td class="text-center"> 
                                            <ul class="icons-list"> 
                                                <li class="dropdown"> 
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-menu9"></i> </a> 
                                                    <ul class="dropdown-menu dropdown-menu-right"> 
                                                        
                                                         <li> 
                                                            <a href="viewproject.html">View</a> 
                                                        </li> 
                                                        <li> 
                                                            <a href="editproject.html">Edit</a> 
                                                        </li>                                                         
                                                        <li> 
                                                            <a href="#">delete</a> 
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