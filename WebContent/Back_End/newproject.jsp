<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mfu.entity.*,com.mfu.dao.*,java.util.*" %> 

    <%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="newproject">
<jsp:attribute name="newproject">active</jsp:attribute>
<jsp:attribute name="content">
<div class="panel panel-flat"> 
                                                <div class="panel-heading"> 
                                                    <h3 class="panel-title">เพิ่มโครงการทุน</h3> 
                                                </div>                                                 
                                                <div class="panel-body"> 
                                                    <fieldset> 
                                                        <legend class="text-semibold">กรุณากรอกข้อมูล</legend>                                                         
                                                        <div class="form-group"> 
                                                            <label>ประเภททุน :</label>                                                             
                                                            <div class="form-group"> 
                                                                <input type="text" class="form-control" placeholder="ชื่อประเภททุน">                              
                                                            </div>                                                             
                                                        </div>                                                         
                                                        <div class="form-group"> 
                                                            <label>ชื่อโครงการ ภาษาไทย:</label>                                                             
                                                            <input type="text" class="form-control" placeholder="ชื่อโครงการ"> 
                                                        </div>                                                         
                                                        <div class="form-group"> 
                                                            <label>ชื่อโครงการ ภาษาอังกฤษ:</label>                                                             
                                                            <input type="text" class="form-control" placeholder="name of project"> 
                                                        </div>                                                         
                                                        <div class="form-group"> 
                                                            <label>ปีการศึกษา(พ.ศ.):</label>                                                             
                                                            <input type="text" class="form-control" placeholder="2557"> 
                                                        </div>                                                         
                                                        <div class="form-group"> 
                                                            <label>ภาคการศึกษา:</label>                                                             
                                                            <div class="form-group"> 
                                                                <select name="select" class="form-control input-xlg"> 
                                                                    <option value="opt1">-----กรุณาเลือก-----</option>                                                                     
                                                                    <option value="opt1">1</option>                                                                     
                                                                    <option value="opt2">2</option>                                                                     
                                                                    <option value="opt3">3</option>                                                                     
                                                                </select>                                                                 
                                                            </div>                                                             
                                                        </div>                                                         
                                                        <div class="form-group"> 
                                                            <label>งบประมาณ:</label>                                                             
                                                            <input type="text" class="form-control" placeholder="บาท"> 
                                                        </div>                                                         
                                                        <div class="form-group"> 
                                                            <label>คณะวิชา:</label>                                                             
                                                            <input type="text" class="form-control" placeholder="สำนักวิชา"> 
                                                        </div>                                                         
                                                        <div class="form-group"> 
                                                            <label>ผู้ได้รับทุน:</label>                                                             
                                                            <input type="text" class="form-control" placeholder="ชื่อ-สกุล"> 
                                                        </div>                                                         
                                                        <div class="content-group-lg"> 
                                                            <h6 class="text-semibold">ระยะเวลา</h6> 
                                                            <div class="row"> 
                                                                <div class="col-md-6"> 
                                                                    <p>เริ่ม<input type="text" class="form-control" id="rangeDemoStart" placeholder="Start date"></p> 
                                                                </div>                                                                 
                                                                <div class="col-md-6"> 
                                                                    <p>สิ้นสุด<input type="text" class="form-control" id="rangeDemoFinish" placeholder="Finish date" disabled="disabled"></p> 
                                                                </div>                                                                 
                                                            </div>                                                             
                                                            <input type="button" id="rangeDemoToday" class="btn btn-primary" value="today"> 
                                                            <input type="button" id="rangeDemoClear" class="btn btn-default" value="clear"> 
                                                        </div>                                                         
                                                        <div class="form-group"> 
                                                            <label>ไฟล์:</label>                                                             
                                                            <input type="file" class="file-styled"> 
                                                            <span class="help-block">Accepted formats: pdf, doc. Max file size 2Mb</span> 
                                                        </div>                                                         
                                                    </fieldset>                                                     
                                                    <div class="text-right"> 
                                                        <button type="submit" class="btn btn-primary pull-left">Submit</button>                                                         
                                                    </div>                                                     
                                                </div>                                                 
                                            </div>    
                            </jsp:attribute>
</aedo:admintemplate>