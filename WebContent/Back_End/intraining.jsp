<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="aedo" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<aedo:admintemplate title="${requestScope.trainingtype.trainingtypename }">
	<jsp:attribute name="content">
		<div class="panel panel-flat"> 
                            <div class="panel-heading"> 
                                <h5 class="panel-title"> <i class="icon-books"></i> ${requestScope.trainingtype.trainingtypename }</h5> 
                                 <div class="heading-elements">
                                    <ul class="icons-list">
                                        <li></li>
                                    </ul>
                                    <a href="newTraining?typeid=${requestScope.trainingtype.id }"><button title="เพิ่มการอบรม" class="btn btn-info btn-icon btn-rounded" type="button">
                                        <i class="icon-plus3"></i>
                                    </button></a>
                                </div>                               
                            </div>                             
                            <table class="table datatable-basic"> 
                                <thead> 
                                    <tr> 
                                        <th>#</th> 
                                        <th>หัวข้ออบรม/กิจกรรม</th> 
                                        <th>รายละเอียด</th> 
                                        <th>จำนวนรับ</th> 
                                        <th>ช่วงเวลารับสมัคร</th> 
                                        <th>วันเเวลาและสถานที่</th>
                                        <th>ลงทะเบียน</th>
                                        <th>รายชื่อ</th>
                                        <th class="text-center">Actions</th> 
                                    </tr>                                     
                                </thead>                                 
                                <tbody> 
                                <c:forEach items="${requestScope.listtraining }" var="training" varStatus="loop">
                                    <tr> 
                                        <td>${loop.index+1 }</td> 
                                        <td> ${training.trainingname }</td>  
                                        <td> ${training.detail }</td>  
                                        <td> ${training.amount }</td>
                                        <fmt:formatDate value="${training.signupstartdate}" pattern="dd" var="startsignupdate" />
                                        <fmt:formatDate value="${training.signupstartdate}" pattern="MMMM" var="startsignupmonth" />
                                        <fmt:formatDate value="${training.signupstartdate}" pattern="yyyy" var="startsignupyear" />
                                        
                                        <fmt:formatDate value="${training.signupenddate}" pattern="dd" var="endsignupdate" />
                                        <fmt:formatDate value="${training.signupenddate}" pattern="MMMM" var="endsignupmonth" />
                                        <fmt:formatDate value="${training.signupenddate}" pattern="yyyy" var="endsignupyear" />
                                        <c:choose>
                                        	<c:when test="${startsignupmonth eq endsignupmonth && startsignupyear eq endsignupyear }">
                                        		<td>${startsignupdate } - ${endsignupdate } ${startsignupmonth } ${startsignupyear}</td>
                                        	</c:when>
                                        	<c:when test="${startsignupmonth ne endsignupmonth && startsignupyear eq endsignupyear }">
                                        		<td>${startsignupdate } ${startsignupmonth } - ${endsignupdate } ${endsignupmonth } ${startsignupyear}</td>
                                        	</c:when>
                                        	<c:otherwise>
                                        		<td> <fmt:formatDate pattern="dd MMMM yyyy" value="${training.signupstartdate }" /> - <fmt:formatDate pattern="dd MM yyyy" value="${training.signupenddate }" /></td>
                                        	</c:otherwise>
                                        </c:choose>
                                        <fmt:formatDate value="${training.startdate}" pattern="dd" var="startdate" />
                                        <fmt:formatDate value="${training.startdate}" pattern="MMMM" var="startmonth" />
                                        <fmt:formatDate value="${training.startdate}" pattern="yyyy" var="startyear" />
                                        
                                        <fmt:formatDate value="${training.enddate}" pattern="dd" var="enddate" />
                                        <fmt:formatDate value="${training.enddate}" pattern="MMMM" var="endmonth" />
                                        <fmt:formatDate value="${training.enddate}" pattern="yyyy" var="endyear" />  
                                          <c:choose>
                                          	<c:when test="${startdate eq enddate && startmonth eq endmonth && startyear eq endyear }">
                                          		<td>${startdate } ${startmonth } ${startyear } ณ  ${training.place }</td>
                                          	</c:when>
                                          	<c:when test="${startdate ne enddate && startmonth eq endmonth && startyear eq endyear }">
                                          		<td>${startdate } - ${enddate } ${startmonth } ${startyear } ณ  ${training.place }</td>
                                          	</c:when>
                                          	<c:when test="${startdate ne enddate && startmonth ne endmonth && startyear eq endyear }">
                                          		<td>${startdate } ${startmonth } - ${enddate } ${endmonth } ${startdate } ณ  ${training.place }</td>
                                          	</c:when>
                                          	<c:otherwise>
                                          		<td> <fmt:formatDate pattern="dd MMMM yyyy" value="${training.startdate }" /> - <fmt:formatDate pattern="dd MM yyyy" value="${training.enddate}" /> ณ  ${training.place}</td>
                                          	</c:otherwise>
                                          </c:choose>
                                          
                                        <td><a href="${training.signuplink }" target="_blank"  title="${training.signuplink }">คลิกที่นี่</a></td>
                                        <td><a href="${training.listlink }" target="_blank"  title="${training.listlink }">คลิกที่นี่</a></td> 
                                        <td class="text-center"> 
                                            <ul class="icons-list"> 
                                                <li class="dropdown"> 
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-menu9"></i> </a> 
                                                    <ul class="dropdown-menu dropdown-menu-right">   
                                                        <li> 
                                                            <a href="edittraining.html">แก้ไข</a> 
                                                        </li>                                                         
                                                        <li> 
                                                            <a href="#" style="color:red;">ลบ</a> 
                                                        </li>                                                         
                                                    </ul>                                                     
                                                </li>                                                 
                                            </ul>                                             
                                        </td>                                         
                                    </tr>
                                    </c:forEach>                                     
                                </tbody>                                 
                            </table>                             
                        </div>
	</jsp:attribute>
</aedo:admintemplate>