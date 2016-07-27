<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="ข่าวสาร">
<jsp:attribute name="allnews">active</jsp:attribute>
<jsp:attribute name="content">
<!-- Basic datatable -->                         
                        <div class="panel panel-flat"> 
                            <div class="panel-heading"> 
                                <h5 class="panel-title"> <i class="icon-newspaper"></i> ข่าวสาร</h5>
                                
                                <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <button title="เพิ่มข่าวสาร" class="btn btn-info btn-icon btn-rounded" type="button" data-toggle="modal" data-target="#fileModal">
                                        <i class="icon-plus3"></i>
                                    </button>
                                </div>                             
                           </div>    
                            
							<div class="panel panel-flat">

								<div class="panel-body">
                                    <div class="col-md-12">
									<div class="tabbable">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#basic-tab1" data-toggle="tab">ข่าวสารที่เผยแพร่แล้ว</a></li>
											<li><a href="#basic-tab2" data-toggle="tab">เอกสารร่าง <span class="badge bg-warning-400">9</span></a></li>
										</ul>

										<div class="tab-content">
											<div class="tab-pane active" id="basic-tab1">
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

											<div class="tab-pane" id="basic-tab2">
												<table class="table"> 
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
										</div>
									</div>
								</div>
							</div>
						</div>
                                                   
                        </div> 
                        <!--File Modal -->
                                <div class="modal fade" id="fileModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">สร้างใหม่</h4>
                                            </div>
                                            <br> 
                                            <div class="form-group">
                                                <div class="col-lg-12 ">
                                                    <div class="input-group">
                                                        <input class="form-control" type="text" placeholder="ชื่อ">
                                                        <span class="input-group-btn"><a href="newfile.html">
                                                                <button class="btn btn-primary" type="button">เสร็จ</button>
                                                            </a> </span>
                                                    </div>
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