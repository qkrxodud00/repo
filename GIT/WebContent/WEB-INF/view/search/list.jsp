<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>아이디 정보</h2>
<c:forEach var="all" items="${list }">
	아이디 : ${all.ID } / 접속 횟수 : ${all.CNT }
	<fmt:formatDate value="${all.LOGINDATE }" pattern="YY-MM-DD"/><br/>
</c:forEach>