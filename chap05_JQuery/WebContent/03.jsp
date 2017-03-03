<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h3>DOM 제어</h3>

-html(), val()<br/>
val : value / html : innerHTML<br/> 

<span id="sp">text</span> : <input type="text"  id="t"/>
<hr/>
<button id="html">html()</button>|<button id="val">val()</button>

<script>
	$("#html").click(function(){
		window.alert($("#sp").html());
		$("#sp").html("텍스트");
	});
	$("#val").dblclick(function(){
		window.alert($("#t").val());
		$("#t").val("");
	});
</script>
<hr/>
-attr, prop<br/>
prop : true,false로 끄고 킬 수 있는 이벤트 <br/>
attr : 그 객체의 value가 의미 있는 것들 <br/>
<hr/>
<textarea rows="3" cols="30" id="sample" ></textarea>
<hr/>
<button id="attr">attr()</button>|<button id="prop">prop()</button>
<hr/>
<script>
	$("#attr").click(function(){ //attribute
		var r = $("#sample").attr("rows"); //해당 돔 객체의 속성값을 얻을 수 있다.
		$("#sample").attr("cols", 50);//속성값을 변경해줄 수 있다.
		console.log(r);
		console.log($("#sample").attr("disabled")); 
		//attr은 속성값을 나타내기 때문에 true, false로 나타내는 값들을 얻을 수 없다.
		console.log($("#sample").attr("id"));
		//id 값은 true,false가 아닌 의미 있는 값을 가지기 때문에 나타낼 수 있다.
		$("#sample").attr("id","abcd"); //attr로 나타낼 수 있는 값들을 수정 가능
	});
	$("#prop").click(function(){ //property : 속성
		var r = $("#sample").attr("rows");
		console.log(r); //해당 돔 객체의 속성값을 얻을 수 있다.
		console.log($("#sample").attr("disabled"));
	});

</script>














