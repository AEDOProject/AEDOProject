<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="staff">
<jsp:attribute name="allstaff">active</jsp:attribute>
<jsp:attribute name="content">
<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title"> <i class="icon-users2"></i> พนักงานทั้งหมด</h5>
							   <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <a href="registration.jsp"><button title="เพิ่มพนักงาน" class="btn btn-info btn-icon btn-rounded" type="button" >
                                        <i class="icon-plus3"></i>
                                        </button></a>
                                </div>      
						</div>


						<table class="table datatable-basic">
							<thead>
								<tr>
                                    <th>รหัสผู้ใช้งาน</th>
									<th>ชื่อ-สกุล</th>
									<th>ชื่อผู้ใช้งาน</th>
									<th>รหัสผ่าน</th>
									<th>สถานะ</th>
									<th class="text-center">Actions</th>
								</tr>
							</thead>
							<tbody>
								<tr>
                                    <td>593333333</td>
									<td>Marth adiopi</td>
									<td><a href="#">Enright</a></td>
									<td>0811111111</td>
									
									<td><span class="label label-success">AEDO Staff</span></td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="#">แก้ไข</a></li>
													<li><a href="#">ลบ</a></li>
													<li><a href="#">บล็อค</a></li>
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