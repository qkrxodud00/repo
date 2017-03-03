<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

value = <input type="text" id="t" value="아무거나"/><br/>
html = <textarea rows="3" cols="10" id="ta">미리 작성...</textarea>
<button id="btn" >버튼</button>
<script>

	//$("#t").val("안녕");
	//$("#ta").html("안녕");
	
	$("#t").attr("value","누구");
	$("#ta").attr("value","누구");
	
	
	$("#btn").click(function(){
		console.log($("#t").val());
		console.log($("#ta").val());
		
		console.log($("#t").attr("value"));
		console.log($("#ta").attr("value"));
		
		
	});


</script>