<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h1>이벤트 처리 | 애니메이션 이펙트</h1>
<hr/>
<div id="eff">
	<h2>약관 설명</h2>
		약관 설명입니다.
</div>
<c:forEach var="i" begin="1" end="3">
	<button id="bt${i }">버튼들</button>
</c:forEach>

<!-- 애니메이션 효과들은 speed를 설정할 수 있다. 괄호 안에 숫자를 넣는다. -->
<script>
	$("#bt1").click(function(){
		window.alert("클릭");
		$("#eff").hide(); // display : none
		$("#eff").fadeOut(); // display : none
		$("#eff").slideDown(1000);
	});
	$("#bt2").on("click",function(){
		window.alert("["+$(this).html()+"]");
		$("#eff").show(); // display : on
		$("#eff").fadeIn(); // display : on
		$("#edd").slideUp(1000);
	});
	$("#bt3").click(function(){
		$("#bt1").trigger("click"); //trigger 다른 요소의 이벤트를 강제로 발생시킬 수 있다.
	});
</script>
<hr/>
input type="file" 이 모양이 안 이쁨...(수정 불가) 그래서 trigger를 사용해서 버튼을 누르면 input type ="file"이 실행되게 할 수 있다.<br/>
<!-- input에 display : none 설정을 한 후 trigger 설정 -->
<input type ="file" style="display : none" id="f"/>
<button id="add">파일 추가</button> <span id="fname"></span>
<script>
	$("add").on("click", function(){
		$("#f").trigger("click");
	});
	$("#f").on("change", function(){ //change 이벤트는 내용이 바뀔때 작동이 된다.
		window.alert($("#f").val());
		$("#fname").html($("#f").val());
	});
</script>
자주 처리하는 이벤트는...keyup, click, change, blur, focus


















