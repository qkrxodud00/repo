<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<div align="center">
	<h1>약관</h1>
	아래의 모든 약관에 동의합니다.<input type="checkbox" id="all"  />
	<hr />
	아래의 약관에 동의합니다.<input type="checkbox" id="chk1" class="chk"  />
	<div style="height: 200" id="hide1">
		<h2>이용약관</h2>
	</div>

	아래의 약관에 동의합니다.<input type="checkbox" id="chk2" class="chk" />
	<div style="height: 300" id="hide2">
		<h2>위치 정보 이용 약관</h2>
	</div>
	<hr />
	<button disabled id="btn">다음으로.</button>

</div>
<script>
	
	$("#all").click(function() {
		
		$(".chk").each(function(){
			$(this).prop("checked", !$(this).prop("checked"));
		
		});
		enableCheck();
	});
	
	$("#chk1").click(enableCheck());
	$("#chk2").click(enableCheck());
	function enableCheck() {
		var cnt=0;
		$(".chk").each(function(){
			if($(this).prop("checked"))
				cnt++;
		});
		if(cnt==2) {
			$("#chk1").prop("checked", true);
			$("#btn").prop("disabled", false);
		}else {
			$("#chk1").prop("checked", false);
			$("#btn").prop("disabled", true);
		}
	}
	
</script>