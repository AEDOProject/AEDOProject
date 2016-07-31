<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<aedo:admintemplate title="เพิ่มโครการใหม่">
	<jsp:attribute name="content">
		<div class="row">
           <div class="col-md-6 col-md-offset-3">
           		<!-- Basic legend -->                                         
                <form action="#"> 
                	<div class="panel panel-flat">
                		<div class="panel-heading"> 
                        	<h3 class="panel-title">เพิ่มโครงการอบรม</h3> 
                        </div>                                                 
                        <div class="panel-body"> 
                             <fieldset> 
                                  <legend class="text-semibold">กรุณากรอกข้อมูล</legend>                                                         
                             <div class="form-group"> 
                                <label>ประเภทโครงการ:</label>                                                             
                             	<div class="form-group">${requestScope.trainingtype.trainingtypename }</div>                                                             
                             </div>                                                         
                             <div class="form-group"> 
                                <label>หัวข้ออบรม:</label>                                                             
                                <input type="text" class="form-control"
										placeholder="หัวข้อ"> 
                             </div>                                                         
                             <div class="form-group">
								<label>รายละเอียด:</label>
								<textarea class="form-control" placeholder="รายละเอียด" rows="5"
										cols="5"></textarea>
							 </div> 
                             <div class="form-group">
								<label>จำนวนรับ:</label>
								<input type="number" value="0" class="form-control touchspin-vertical input-sm">
							 </div>
                        <fieldset class="content-group">
                                                        <div
										class="form-group">
										<label>วันที่:</label>
										
											<input class="form-control" type="date" name="date">
									</div>
                                                            <div
										class="form-group">
										<label>เวลา:</label>
										
											<input class="form-control" type="time" name="time">
									</div>
                         </fieldset>
                                     <div class="form-group">
										<label>สถานที่จัด:</label>
											<input type="text" class="form-control" placeholder="สถานที่"> 
									</div> 
                                                        <div
									class="content-group-lg"> 
                                                            <h6
										class="text-semibold">ช่วงเวลารับสมัคร:</h6> 
                                                            <div
										class="row"> 
                                                                <div
											class="col-md-6"> 
                                                                    <p>เริ่ม<input
													type="text" class="form-control" id="rangeDemoStart"
													placeholder="Start date">
											</p> 
                                                                </div>                                                                 
                                                                <div
											class="col-md-6"> 
                                                                    <p>สิ้นสุด<input
													type="text" class="form-control" id="rangeDemoFinish"
													placeholder="Finish date" disabled="disabled">
											</p> 
                                                                </div>                                                                 
                                                            </div>                                                             
                                                            <input
										type="button" id="rangeDemoToday" class="btn btn-primary"
										value="วันนี้"> 
                                                            <input
										type="button" id="rangeDemoClear" class="btn btn-default"
										value="clear"> 
                                                        </div>           
                                                         <div
									class="form-group"> 
                                                            <label>ลิงค์ลงชื่ออบรม:</label>                                                             
                                                            <input
										type="text" class="form-control" placeholder="ลิงค์"> 
                                                        </div>
                                                        <div
									class="form-group"> 
                                                            <label>ลิงค์รายชื่อผู้เข้าร่วมอบรม:</label>                                                             
                                                            <input
										type="text" class="form-control" placeholder="ลิงค์"> 
                                                        </div>
                                                        
                                                                                                       
                                                                                                         
                                                                                                        
                                                                                                            
                                                    </fieldset>                                                     
                                                    <div
								class="text-right"> 
                                                        <button
									type="submit" class="btn btn-primary pull-left">เพิ่มการอบรมใหม่</button>                                                         
                                                    </div>                                                     
                                                </div>                                                 
                                            </div>                                             
                                        </form>                                         
                                    </div>
                                </div>
	</jsp:attribute>
</aedo:admintemplate>
