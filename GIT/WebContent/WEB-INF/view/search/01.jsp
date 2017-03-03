<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<div class="row" align="center">
		<div style="min-height: 10%;" class="col-md-6">
			<form action="/searchInsert/insertR" method="post">
				<p>
					<b>등록</b><br /> 
					<span id="IDconfig"></span><br />
					 <input type="text" class="form-control" name="id" />
					</p>
				
					<button type="submit" id="sbt" class="btn">등록</button>
					
			</form>
		</div>
			<div style="min-height: 10%;" class="col-md-6">
			<form action="/list" method="post">
				<p>
					<b>검색</b><br /> 
					<span id="IDconfig"></span><br />
					 <input type="text" class="form-control" name="id" />
					</p>
				
					<button type="submit" id="sbt" class="btn">검색</button>
				
			</form>
		</div>

	</div>

</body>
<c:if test="${list ne null }">
<h2>아이디 정보</h2>
<c:forEach var="all" items="${list }">
	아이디 : ${all.ID } / 접속 횟수 : ${all.CNT }
	<br/>
</c:forEach>
</c:if>

