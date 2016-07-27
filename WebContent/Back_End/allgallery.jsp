<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="อัลบั้ม">
<jsp:attribute name="allgallery">active</jsp:attribute>
<jsp:attribute name="content">
    
    
 <div class="page-header">
                        <div class="page-header-content">
                            <div class="page-title">
                                <h4><button title="New albums" class="btn btn-info btn-float btn-rounded pull-right" type="button" data-toggle="modal" data-target="#myModal">
                                        <i class="icon-plus3"></i>
                                    </button><span class="gb_Rb"></span><span class="text-semibold">Albums</span> - Media Library</h4>
                                <!-- Modal -->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">New Albums</h4>
                                            </div>
                                            
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <div class="col-lg-13">
                                        
                                                            <input class="form-control" type="text" placeholder="Name">
                                                        
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
										<div class="col-lg-13">
											<textarea class="form-control" placeholder="Description" rows="5" cols="5"></textarea>
										</div>
									</div>
                                                   <span class="input-group-btn"><button class="btn btn-primary" type="button">Submit</button></span>
                                            </div>
                                            <div class="modal-footer">
</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /page header -->
                    <!-- Content area -->
                    <div class="content">
                        <!-- Image grid -->
                        <div class="row">
                            <div class="col-lg-3 col-sm-6">
                                <div class="thumbnail">
                                    <div class="thumb">
                                        <a href="ingallery.jsp">
                                            <img src="assets/images/placeholder.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h6 class="no-margin-top text-semibold"><a href="#" class="text-default">For ostrich much</a> <a href="#" class="text-muted"></a></h6>
                                        Some various less crept gecko the jeepers dear forewent far the ouch far a incompetent
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="thumbnail">
                                    <div class="thumb">
                                        <a href="#">
                                            <img src="assets/images/placeholder.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h6 class="no-margin-top text-semibold"><a href="#" class="text-default">For ostrich much</a> <a href="#" class="text-muted"></a></h6>
                                        Some various less crept gecko the jeepers dear forewent far the ouch far a incompetent
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="thumbnail">
                                    <div class="thumb">
                                        <a href="#">
                                            <img src="assets/images/placeholder.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h6 class="no-margin-top text-semibold"><a href="#" class="text-default">For ostrich much</a> <a href="#" class="text-muted"></a></h6>
                                        Some various less crept gecko the jeepers dear forewent far the ouch far a incompetent
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="thumbnail">
                                    <div class="thumb">
                                        <a href="#">
                                            <img src="assets/images/placeholder.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h6 class="no-margin-top text-semibold"><a href="#" class="text-default">For ostrich much</a> <a href="#" class="text-muted"></a></h6>
                                        Some various less crept gecko the jeepers dear forewent far the ouch far a incompetent
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="thumbnail">
                                    <div class="thumb">
                                        <a href="#">
                                            <img src="assets/images/placeholder.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h6 class="no-margin-top text-semibold"><a href="#" class="text-default">For ostrich much</a> <a href="#" class="text-muted"></a></h6>
                                        Some various less crept gecko the jeepers dear forewent far the ouch far a incompetent
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="thumbnail">
                                    <div class="thumb">
                                        <a href="#">
                                            <img src="assets/images/placeholder.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h6 class="no-margin-top text-semibold"><a href="#" class="text-default">For ostrich much</a> <a href="#" class="text-muted"></a></h6>
                                        Some various less crept gecko the jeepers dear forewent far the ouch far a incompetent
                                    </div>
                                </div>
                            </div>
                        </div>
                        </jsp:attribute>
</aedo:admintemplate>