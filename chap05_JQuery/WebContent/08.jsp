<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<button id="btn">버튼</button>
<div id="result"></div>
<script>
	$("#btn").click(function(){
		$.ajax({
			"url" : "/08ajax.jsp",
			"method" : "post",
			"data" : {
				"q" : "query",
				"v" : "value"
			}
		}).done(function(rst){
			$("#result").html(rst.id +"/"+rst.pass+"/"+rst.alive+"/"+rst.name
				+"/"+rst.age+"/"+rst.hobby)
			console.log(rst);
		});
	});
	//jquery ajax는 contentType에 따라서 자동으로 바뀜.

</script>