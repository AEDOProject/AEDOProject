<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<aedo:admintemplate title="registration">
<jsp:attribute name="registration">active</jsp:attribute>
<jsp:attribute name="content">


 <form action="index.jsp">
                                        <div class="panel panel-body login-form">
                                            <div class="text-center">
                                                <div class="icon-object border-success text-success">
                                                    <i class="icon-plus3"></i>
                                                </div>
                                                <h5 class="content-group">สร้างบัญชีผู้ใช้งาน <small class="display-block">กรุณากรอกข้อมูลให้ครบทุกช่อง</small></h5>
                                            </div>
                                            <div class="content-divider text-muted form-group">
                                                <span>สำหรับเข้าใช้งาน</span>
                                            </div>
                                            <div class="form-group has-feedback has-feedback-left">
                                                <input type="text" class="form-control" placeholder="ชื่อผู้ใช้งาน">
                                                <div class="form-control-feedback">
                                                    <i class="icon-user-check text-muted"></i>
                                                </div>
                                                <span class="help-block text-danger"><i class="icon-cancel-circle2 position-left"></i>ชื่อนี้มีการใช้งานไปแล้ว</span>
                                            </div>
                                            <div class="form-group has-feedback has-feedback-left">
                                                <input type="text" class="form-control" placeholder="รหัสผ่าน">
                                                <div class="form-control-feedback">
                                                    <i class="icon-user-lock text-muted"></i>
                                                </div>
                                            </div>
                                            <div class="form-group has-feedback has-feedback-left">
                                                <input type="text" class="form-control" placeholder="กรอกรหัสผ่านอีกครั้ง">
                                                <div class="form-control-feedback">
                                                    <i class="icon-user-lock text-muted"></i>
                                                </div>
                                            </div>
                                            <div class="form-group">
										
										
											<select name="select" class="form-control">
			                                    <option  value="opt1">-----กรุณาเลือก-----</option>
			                                    <option value="opt2">Admin</option>
			                                    <option value="opt3">พนักงาน AEDO</option>
			                                    <option value="opt4">พนักงาน HLLC</option>
			                                  
			                                </select>
										
									</div>
                                            <div class="content-divider text-muted form-group">
                                                <span>ข้อมูลส่วนตัว</span>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="เลขรหัสประจำตัว">
                                                <div class="form-control-feedback">
</div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="ชื่อ">
                                                <div class="form-control-feedback">
</div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="นามสกุล">
                                                <div class="form-control-feedback">
</div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="เบอร์มือถือ">
                                                <div class="form-control-feedback">
</div>
                                            </div>
                                            <div class="form-group">
                                                <div class="checkbox">
</div>
                                                <div class="checkbox">
</div>
                                                <div class="checkbox">
</div>
                                            </div>
                                            <button type="submit" class="btn bg-teal btn-block btn-lg">สมัครสมาชิก
                                                <i class="icon-circle-right2 position-right"></i>
                                            </button>
                                        </div>
                                    </form>
	</jsp:attribute>
</aedo:admintemplate>