<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!-- BEGIN SIDEBAR MENU -->
<ul class="page-sidebar-menu">
	<li>
		<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
		<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
	</li>
	<c:forEach var="m" items="${models}">
		<c:if test="${m.parentId eq '0' }">
			<li class="<c:if test="${m.uuid eq 'modelId' }">start active</c:if>">
				<a href="${root}/forword/admin/index?token"> 
					<i class="${m.classic}"></i> 
					<span class="title">${m.name}</span> 
<!-- 					<span class="selected"></span> -->
				</a>
<%-- 				<c:if test=""></c:if> --%>
			</li>
		</c:if>
	</c:forEach>
</ul>

<!-- END SIDEBAR MENU -->
