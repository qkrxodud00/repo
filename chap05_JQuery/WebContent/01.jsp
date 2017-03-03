<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h1>jQuery</h1>
자바스크립트 프로그래밍을 쉽게 구현할 수 있게 만들어둔 자바 스크립트 라이브러리
<br />
자바스크립트의 역할을 알면 쉽게 배울 수 있다.
<br />
<hr />
jQuery를 사용하기 위해선 라이브러리 연동이 필요하다.
<br />
실제로 다운을 받아서 프로젝트에 넣어두고 연동하는 방식 vs CDM(Content Delivery Network)방식
<br />
브라우저에서 CDN방식으로 연동시키면 최신 JQuery가 적용되고, 대부분의 웹 어플리케이션들이 거의 CDN 연동을 해서
브라우저에 받아져있을 가능성이 큼. 로딩 시간이 줄어든다.
<hr />
# jQuery의 특징 # document traversal and manipulation, (돔탐색, 돔제어) event
handling, animation, (이벤트 처리, 애니메이션 효과) and Ajax much simpler with an
easy-to-use API (Ajax 처리가 단순해짐)
<hr />
<input type="text" id="view" />
<button id="bt">버튼</button>

<script>
	//$("p") : document.getElementsByTagName("p");
	//$(".btn") : document.getElementsByClassName("btn");
	//$("#view") : document.getElementById("view");
	console.log($("#view")); //jquery 돔 객체
	console.log(document.getElementById("view")); //javascript 돔 객체
	console.log($(document.getElementById("view"))); // jquery 돔 객체로 변환

	document.getElementById("view").value = "아아아";
	$("#view").val("아아아");
	$("#bt").click(function() {
		window.alert("~~~~");
		$.ajax({
			url : "/01ajax.jsp" //url만 설정해주면 ajax가 날라감.
		}).done(function(txt){
			console.log(txt);
			$("bt").html(txt);
		});
	});
	//=================================
	$("#view").fadeOut(5000); //애니메이션 효과
	$("#view").fadeIn(1000);
</script>
