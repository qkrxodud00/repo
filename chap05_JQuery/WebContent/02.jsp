<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h2>JQuery DOM Traversing</h2>
태그 : $("태그명"), 클래스이름 : $(".클래스명"), 아이디 : $("#아이디명")로 접근 가능
<br/>
<c:forTokens var="tk" items="가위,바위,보" delims=",">
<button>${tk }</button>
</c:forTokens>
<hr/>

<!-- 
	태그명이나...클래스이름으로 서칭이 되면 여러개가 나옴. each로 일괄처리가 가능하다.
 -->
 <c:forEach var="i" begin="1" end="10">
 	<input type="checkbox" class="chk"/>목록.${i }<br/>
 </c:forEach>
 <hr/>
 <button id="bt">클릭</button>
 <input type="text" readonly value ="아무말이나" id="t"/>
<script>
	$("button").each(function(){
		console.log(this);
		this.innerHTML ="안녕"; //$(this).innerHTML = "안녕"; (사용불가)
		$(this).html("음....");
		$(this).html(); //innerHTML를 뽑아내는 효과 ()를 비우면 GETTER 채우면 SETTER
		this.disabled = true; //$(this).prop("disabled",true);
		//$(this).disabled = true;	사용불가
	});
	$(".chk").each(function(){
		this.checked = true;
		//$(this).checked = true; 사용 불가
		$(this).prop("checked", true);
		console.log($(this).prop("checked")); //
	});
	//$("#bt").disabled = false; 사용불가
	$("#bt").prop("disabled",false);
	
	$("#bt").click(function(){
		console.log($(".chk").prop("checked"));
		$(".chk").each(function(){
			$(this).prop("checked", !$(this).prop("checked"));
		});
		
		/* 	if($(".chk").prop("checked")==true){
			$(".chk").each(function(){
				$(this).prop("checked",false);
			});
		}else{
			$(".chk").each(function(){
				$(this).prop("checked",true)
			});
		} */
	});
	$("#t").prop("readonly", false); // document.getElementById("t").readOnly = false;
	//$(document.getElementById("t")).prop("readonly",false);
	//prop으로 제어되는 효과는 [checked, disabled, selected, readonly]
	
</script>