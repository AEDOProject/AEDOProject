<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aedo:admintemplate title="allevent">
	<jsp:attribute name="allevent">active</jsp:attribute>
	<jsp:attribute name="content">

 <div class="panel panel-flat"> 
                            <div class="panel-heading"> 
                                <h5 class="panel-title"> <i
						class="icon-accessibility"></i> กิจกรรม</h5> 
                              <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <button title="เพิ่มกิจกรรม"
						class="btn btn-info btn-icon btn-rounded" type="button"
						data-toggle="modal" data-target="#addevent">
                                        <i class="icon-plus3"></i>
                                    </button>
                                </div>                           
                            </div>
                            <div class="panel panel-flat">

								<div class="panel-body">
                                    <div class="col-md-12">
									<div class="tabbable">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#basic-tab1"
									data-toggle="tab">กิจกรรมที่เผยแพร่แล้ว</a></li>
											<c:set var="draftcounter" value="0" />
                                <c:forEach
									items="${requestScope.listevents}" var="eventdraft"
									varStatus="draft">
                                <c:if
										test="${eventdraft.draft == true }">
										<c:set var="draftcounter" value="${draftcounter + 1 }" />
									</c:if>
								</c:forEach>
											<li><a href="#basic-tab2" data-toggle="tab">เอกสารร่าง <span
										class="badge bg-warning-400"><c:out
												value="${draftcounter }"></c:out></span></a></li>
										</ul>

										<div class="tab-content">
											<div class="tab-pane active" id="basic-tab1">                        
                            <table class="table table-hover datatable-basic"> 
                                <thead> 
                                    <tr> 
                                        <th>#</th> 
                                        <th style="width: 15%;">รูปภาพแสดง</th> 
                                        <th style="width: 35%;">หัวข้อบทความ</th>
                                        <th>ประเภทงาน</th>
                                        <th style="width: 10%;">วันที่สร้าง</th> 
                                        <th style="width: 10%;">วันที่แก้ไขล่าสุด </th> 
                                         
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody>
                                <c:set var="counter" value="1" />
                                <c:forEach
												items="${requestScope.listevents}" var="events"
												varStatus="loop">
                                
                                <c:if test="${events.publish == true }">
                                    <tr> 
                                        <td>${counter }</td> 
                                        <td> 
                                            <a href="${events.photo }"
															data-popup="lightbox"> 
                                                <img
																src="${events.photo }" alt=""
																class="img-rounded img-preview"
																style="width: 100%; height: auto;"> 
                                            </a>
                                        </td>                                         
                                        <td>
                                            <a href="ViewDetail?article=${events.id }">${events.title }</a>
                                        </td>
                                         <td>${events.worktype.worktypename }</td>                                      
                                        <td>${events.date }</td>
                                        <td>${events.lastupdate }</td> 
                                        <td class="text-center"> 
                                            <ul class="icons-list"> 
                                                <li class="dropdown"> 
                                                    <a href="#"
																	class="dropdown-toggle" data-toggle="dropdown"> <i
																		class="icon-menu9"></i> </a> 
                                                    <ul
																		class="dropdown-menu dropdown-menu-right"> 
                                                        <li>
                                                            <a href="ViewDetail?article=${events.id }">ดูเนื้อหาบทความ</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#">แก้ไข</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#"
																			style="color: red;">ลบ</a>
                                                        </li>                                                        
                                                    </ul>                                                     
                                                </li>                                                 
                                            </ul>                                             
                                        </td>                                         
                                    </tr>
                                    <c:set var="counter"
														value="${counter + 1 }" />
                                    </c:if>  
                                    </c:forEach>                                  
                                </tbody>                                 
                            </table>
                            </div>

											<div class="tab-pane" id="basic-tab2">
												<table class="table table-hover"> 
                                <thead> 
                                    <tr> 
                                        <th>#</th> 
                                        <th style="width: 15%;">รูปภาพแสดง</th> 
                                        <th style="width: 35%;">หัวข้อบทความ</th>
                                        <th>ประเภทงาน</th>
                                        <th style="width: 10%;">วันที่สร้าง</th> 
                                        <th style="width: 10%;">วันที่แก้ไขล่าสุด </th> 
                                         
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody>
                                <c:set var="counter2" value="1" />
                                <c:forEach
												items="${requestScope.listevents}" var="eventdraft"
												varStatus="draft">
                                <c:if
													test="${eventdraft.draft == true }">
                                    <tr> 
                                        <td>${counter2 }</td> 
                                        <td> 
                                            <a
															href="${eventdraft.photo }" data-popup="lightbox"> 
                                                <img
																src="${eventdraft.photo }" alt=""
																class="img-rounded img-preview"
																style="width: 100%; height: auto;"> 
                                            </a>
                                        </td>                                         
                                        <td>
                                            <a
															href="ViewDetail?article=${eventdraft.id }">${eventdraft.title }</a>
                                        </td>
                                         <td>${eventdraft.worktype.worktypename }</td>                                      
                                        <td>${eventdraft.date }</td>
                                        <td>${eventdraft.lastupdate }</td> 
                                        <td class="text-center"> 
                                            <ul class="icons-list"> 
                                                <li class="dropdown"> 
                                                    <a href="#"
																	class="dropdown-toggle" data-toggle="dropdown"> <i
																		class="icon-menu9"></i> </a> 
                                                    <ul
																		class="dropdown-menu dropdown-menu-right"> 
                                                        <li>
                                                            <a href="ViewDetail?article=${eventdraft.id }">ดูเนื้อหาบทความ</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#">แก้ไข</a>
                                                        </li>                                                         
                                                        <li>
                                                            <a href="#"
																			style="color: red;">ลบ</a>
                                                        </li>                                                        
                                                    </ul>                                                     
                                                </li>                                                 
                                            </ul>                                             
                                        </td>                                         
                                    </tr>  
                                    <c:set var="counter2"
														value="${counter2 + 1 }" />
                                    </c:if>
                                    </c:forEach>                                  
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
                                <div class="modal fade" id="addevent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">เพิ่มกิจกรรมใหม่</h4>
                                            </div>
                                            <br> 
                                            <form action="newArticle" method="post" accept-charset="UTF-8">
                                            <div class="form-group">
                                                <div class="col-lg-12 ">
                                                    <div class="input-group">
                                                        <input class="form-control" type="text" name="title" placeholder="หัวข้อกิจกรรม">
                                                        <input type="hidden" value="${requestScope.typeid }" name="typeid" />
                                                        <span class="input-group-btn">
                                                                <button class="btn btn-primary" type="submit">เพิ่ม</button></span>
                                                    </div>
                                                </div>
                                            </div>
                                            </form>
                                            <div class="modal-footer">
</div>
                                        </div>
                                    </div>
                                </div>
                                <!--file Modal -->

</jsp:attribute>
</aedo:admintemplate>